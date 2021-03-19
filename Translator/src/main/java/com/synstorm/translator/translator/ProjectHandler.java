package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.core.Pathway;
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

    public ProjectHandler(String root)
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

    private void writeCode(String outputDir, String code, String name) {
        final Path outFpath = Paths.get(outputDir, String.join(".", name, "java"));
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(outFpath.toString()));
            writer.write(code);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void compile(String outputDir) {
        final String initialConfigCode = this.compileConfig();

        createProjectStructure(outputDir);
        writeCode(Paths.get(outputDir, this.configurationOutpath).toString(), initialConfigCode, "GeneratedConfig");

        entities.forEach(languageEntity -> {
            final String translatedCode = languageEntity.translate();
            writeCode(
                    Paths.get(outputDir, this.mechanismsOutpath).toString(),
                    translatedCode,
                    languageEntity.getName());
        });
    }

    private void createProjectStructure(String outputDir) {
        try {
            Files.createDirectories(Paths.get(outputDir));
            Files.createDirectories(Paths.get(outputDir, this.configurationOutpath));
            Files.createDirectories(Paths.get(outputDir, this.mechanismsOutpath));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String compileConfig() {
        final ConfigTranslator translator = new ConfigTranslator(this);
        return translator.translate();
    }

    private LanguageEntity processSourceFile(Path fpath) {
        System.out.println(fpath);
        return fpath.toString().endsWith("mechanism") ?
                this.processMechanism(fpath) :
                this.processPathway(fpath);
    }

    private LanguageEntity processMechanism(Path fpath) {
        final String mechName = fpath.getFileName().toString().split("\\.")[0];
        final List<String> cleanLines = LangUtils.readCodeFile(fpath);
        final Mechanism mech = new Mechanism(this, mechName);
        mech.processCodeBlock(cleanLines);
        return mech;
    }

    private LanguageEntity processPathway(Path fpath) {
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
            throw new RuntimeException("Cannot fine files with constants!");
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
