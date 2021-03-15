package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.core.Pathway;
import com.synstorm.translator.utils.IndexedHashMap;

import javafx.util.Pair;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
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

    public boolean prefetchData() {
        this.gatherNamedEntities(Paths.get(this.root, this.constantsPath));

        List<Path> mechanismSourceFiles = this.getSourceFiles("Mechanisms");
        List<Path> pathwaySourceFiles = this.getSourceFiles("Pathways");

        this.entities = mechanismSourceFiles.stream().map(fpath -> processSourceFile(fpath)).collect(Collectors.toList());
        this.pathways = pathwaySourceFiles.stream().map(fpath -> processSourceFile(fpath)).collect(Collectors.toList());

        return true;
    }

    private void writeCode(String outputDir, String code, String name) {
        Path outFpath = Paths.get(outputDir, String.join(".", name, "java"));
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(outFpath.toString()));
            writer.write(code);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean compile(String outputDir) {
        String initialConfigCode = this.compileConfig();

        this.createProjectStructure(outputDir);

        this.writeCode(Paths.get(outputDir, this.configurationOutpath).toString(), initialConfigCode, "GeneratedConfig");

        for(LanguageEntity entry: entities) {
            String translatedCode = entry.translate();
            this.writeCode(Paths.get(outputDir, this.mechanismsOutpath).toString(), translatedCode, entry.getName());
        }

        return true;
    }

    private void createProjectStructure(String outputDir)
    {
        try {
            Files.createDirectories(Paths.get(outputDir));
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Files.createDirectories(Paths.get(outputDir, this.configurationOutpath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        try {
            Files.createDirectories(Paths.get(outputDir, this.mechanismsOutpath));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String compileConfig()
    {
        ConfigTranslator translator = new ConfigTranslator(this);
        return translator.translate();
    }

    private LanguageEntity processSourceFile(Path fpath)
    {
        System.out.println(fpath);
        LanguageEntity entity;
        if(fpath.toString().endsWith("mechanism"))
        {
            entity = this.processMechanism(fpath);
        }
        else
        {
            entity = this.processPathway(fpath);
        }

        return entity;
    }

    private LanguageEntity processMechanism(Path fpath)
    {
        String mechName = fpath.getFileName().toString().split("\\.")[0];

        List<String> cleanLines = LangUtils.readCodeFile(fpath);
        Mechanism mech = new Mechanism(this, mechName);
        mech.processCodeBlock(cleanLines);

        return mech;
    }

    private LanguageEntity processPathway(Path fpath)
    {
        String mechName = fpath.getFileName().toString().split("\\.")[0];

        List<String> cleanLines = LangUtils.readCodeFile(fpath);
        Pathway pathway = new Pathway(this, mechName);
        pathway.processCodeBlock(cleanLines);

        return pathway;
    }

    private List<Path> getSourceFiles(String dirName)
    {
        DirectoryStream.Filter<Path> filter = file -> {
            return !file.toString().endsWith("bdef");
        };

        Path rootPath = Paths.get(this.root, dirName);
        List<Path> result = new ArrayList<>();

        try (DirectoryStream<Path> paths = Files.newDirectoryStream(rootPath, filter)) {
            paths.forEach(path -> result.add(path));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }

    // TODO: move to separate class, same as other
    private void gatherNamedEntities(Path dirPath)
    {
        List<Path> constantFiles;

        try {
            constantFiles = Files.list(dirPath).collect(Collectors.toList());
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Cannot fine files with constants!");
        }

        this.constantValues = new IndexedHashMap<>();
        this.moleculeValues = new IndexedHashMap<>();

        for(Path fpath : constantFiles)
        {
            Pair<Map<String, Double>, Map<String, Double>> fileData = gatherSingleScope(fpath);

            fileData.getKey().entrySet().forEach(pair -> {this.constantValues.put(pair.getKey(), pair.getValue());});
            fileData.getValue().entrySet().forEach(pair -> {this.moleculeValues.put(pair.getKey(), pair.getValue());});
        }

    }

    private Pair<Map<String, Double>, Map<String, Double>> gatherSingleScope(Path fpath)
    {
        Map<String, Double> constants = new IndexedHashMap<>();
        Map<String, Double> molecules = new IndexedHashMap<>();

        List<String> cleanLines = LangUtils.readCodeFile(fpath);

        for(String line : cleanLines)
        {
            String[] tokens = line.split(" ");
            Double value = LangUtils.processFloatingValue(tokens[4]);

            if(tokens[1].equals("const"))
            {
                constants.put(tokens[2].trim(), value);
            }
            else
            {
                molecules.put(tokens[2].trim(), value);
            }
        }

        return new Pair<>(constants, molecules);
    }
}
