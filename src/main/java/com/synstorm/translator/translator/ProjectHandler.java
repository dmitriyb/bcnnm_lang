package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.core.Pathway;
import com.synstorm.translator.core.TranslatedEntity;
import com.synstorm.translator.utils.IndexedHashMap;
import org.apache.commons.math3.util.Pair;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


public class ProjectHandler {
    private final String root;

    private final String  configurationOutpath = "Configuration";
    private final String mechanismsOutpath = "Mechanisms";
    private final String constantsPath = "Signals";
    private final String entityAssignSymbol = "=";

    private Map<String, Double> constantValues;
    private Map<String, Double> moleculeValues;
    private List<LanguageEntity> entities;
    private List<LanguageEntity> pathways;

    private Map<String, TranslatedEntity> translatedCode;


    public ProjectHandler(final String root)
    {
        this.root = root;
    }

    public Map<String, Double> getConstantValues() {
        return constantValues;
    }

    public Map<String, Double> getMoleculeValues() {
        return moleculeValues;
    }

    public List<LanguageEntity> getEntities() {
        return entities;
    }

    public List<LanguageEntity> getPathways() { return pathways; }

    public void prefetchData() {
        this.gatherNamedEntities(Paths.get(this.root, this.constantsPath));

        List<Path> mechanismSourceFiles = this.getSourceFiles("Mechanisms");
        List<Path> pathwaySourceFiles = this.getSourceFiles("Pathways");

        entities = mechanismSourceFiles.stream().map(this::processSourceFile).collect(Collectors.toList());
        pathways = pathwaySourceFiles.stream().map(this::processSourceFile).collect(Collectors.toList());
    }

    public void writeProjectCode(final String outputDir) {
        createProjectStructure(outputDir);

        final TranslatedEntity initialConfigEntity = this.translatedCode.remove("config");
        final String initialConfigCode = initialConfigEntity.getSingleFileCode();

        writeCode(Paths.get(outputDir, this.configurationOutpath).toString(), initialConfigCode, "GeneratedConfig");

        this.translatedCode.entrySet().forEach(pair ->{
            final String translatedCode = pair.getValue().getSingleFileCode();

            writeCode(
                    Paths.get(outputDir, this.mechanismsOutpath).toString(),
                    translatedCode,
                    pair.getKey()
            );

        });
    }

    public String getDynamicCompilationCode()
    {
        String res =  "package com.synstorm.Configuration;\n";

        final TranslatedEntity initialConfigEntity = this.translatedCode.remove("config");

        res += initialConfigEntity.getImportsHeader();
        res += initialConfigEntity.getCode();

        res = res.substring(0, res.length() - 2);

        List<String> classesTranslated = this.translatedCode.values().stream().map(TranslatedEntity::getCode).collect(Collectors.toList());

        res += String.join("\n", classesTranslated);
        res += "}\n";

        return res;
    }

    public void compile() {
        this.translatedCode = new HashMap<>();

        final String initialConfigCode = this.compileConfig();

        this.translatedCode.put("config", new TranslatedEntity("config", initialConfigCode));

        entities.forEach(languageEntity -> {
            final String translatedCode = languageEntity.translate();
            TranslatedEntity translatedObject = new TranslatedEntity(languageEntity.getName(), translatedCode);
            this.translatedCode.put(languageEntity.getName(), translatedObject);

        });
    }

    private void writeCode(final String outputDir, final String code, final String name) {
        final Path outFpath = Paths.get(outputDir, String.join(".", name, "java"));
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(outFpath.toString()));
            writer.write(code);
            writer.close();
        } catch (IOException e) {
            final String errorMessage = String.format("Cannot create a source file for %s", name);
            throw new RuntimeException(errorMessage);
        }
    }

    private void createProjectStructure(final String outputDir) {
        try {
            Files.createDirectories(Paths.get(outputDir));
            Files.createDirectories(Paths.get(outputDir, this.configurationOutpath));
            Files.createDirectories(Paths.get(outputDir, this.mechanismsOutpath));
        } catch (IOException e) {
            throw new RuntimeException("Cannot create the project structure!");
        }
    }

    private String compileConfig() {
        final ConfigTranslator translator = new ConfigTranslator(this);
        return translator.translate();
    }

    private LanguageEntity processSourceFile(final Path fpath) {
        System.out.println(fpath);
        return fpath.toString().endsWith("mechanism") ?
                this.processMechanism(fpath) :
                this.processPathway(fpath);
    }

    private LanguageEntity processMechanism(final Path fpath) {
        final String mechName = fpath.getFileName().toString().split("\\.")[0];
        final List<String> cleanLines = LangUtils.readCodeFile(fpath);
        final Mechanism mech = new Mechanism(this, mechName);
        mech.processCodeBlock(cleanLines);
        return mech;
    }

    private LanguageEntity processPathway(final Path fpath) {
        final String mechName = fpath.getFileName().toString().split("\\.")[0];
        final List<String> cleanLines = LangUtils.readCodeFile(fpath);
        final Pathway pathway = new Pathway(this, mechName);
        pathway.processCodeBlock(cleanLines);
        return pathway;
    }

    private List<Path> getSourceFiles(final String dirName) {
        final DirectoryStream.Filter<Path> filter = file -> !file.toString().endsWith("bdef");

        final Path rootPath = Paths.get(this.root, dirName);
        final List<Path> result = new ArrayList<>();

        try (DirectoryStream<Path> paths = Files.newDirectoryStream(rootPath, filter)) {
            paths.forEach(result::add);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }

    // TODO: move to separate class, same as other
    private void gatherNamedEntities(final Path dirPath) {
        final List<Path> constantFiles;

        try {
            constantFiles = Files.list(dirPath).collect(Collectors.toList());
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Cannot find files with constants!");
        }

        this.constantValues = new IndexedHashMap<>();
        this.moleculeValues = new IndexedHashMap<>();

        constantFiles.forEach(path -> {
            final Pair<Map<String, Double>, Map<String, Double>> fileData = gatherSingleScope(path);

            fileData.getKey().forEach((key, value) -> constantValues.put(key, value));
            fileData.getValue().forEach((key, value) -> moleculeValues.put(key, value));
        });
    }

    private Pair<Map<String, Double>, Map<String, Double>> gatherSingleScope(final Path fpath) {
        final Map<String, Double> constants = new IndexedHashMap<>();
        final Map<String, Double> molecules = new IndexedHashMap<>();

        final List<String> cleanLines = LangUtils.readCodeFile(fpath);

        cleanLines.forEach(line -> {
            final String[] tokens = line.split(" ");
            final Double value = LangUtils.processFloatingValue(tokens[4]);
            if (tokens[1].equals("const")) {
                constants.put(tokens[2].trim(), value);
            } else {
                molecules.put(tokens[2].trim(), value);
            }
        });

        return new Pair<>(constants, molecules);
    }
}
