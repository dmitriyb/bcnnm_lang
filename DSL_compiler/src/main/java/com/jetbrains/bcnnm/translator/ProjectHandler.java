package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
import com.jetbrains.bcnnm.core.Pathway;
import com.jetbrains.bcnnm.utils.IndexedHashMap;
import lombok.Getter;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;

public class ProjectHandler {
    public ProjectHandler(String root)
    {
        this.root = root;
    }

    public boolean prefetchData()
    {
        this.constantValues = this.gatherNamedEntities(this.constantsFname, "constants");
        this.moleculeValues = this.gatherNamedEntities(this.moleculesFname, "molecules");

        List<Path> mechanismSourceFiles = this.getSourceFiles("Mechanisms");
        this.entities = mechanismSourceFiles.stream().map(fpath -> processSourceFile(fpath)).collect(Collectors.toList());

        return true;
    }

    private void writeCode(String outputDir, String code, String name)
    {
        Path outFpath = Paths.get(outputDir, String.join(".", name, "java"));

        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(outFpath.toString()));
            writer.write(code);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean compile(String outputDir)
    {
        String initialConfigCode = this.compileConfig();
        this.writeCode(outputDir, initialConfigCode, "InitialConfigTranslator");

        for(LanguageEntity entry: entities)
        {
            String translatedCode = entry.translate();
            this.writeCode(outputDir, translatedCode, entry.getName());
        }

        return true;
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
        if(fpath.toString().endsWith("bmec"))
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
    private Map<String, Double> gatherNamedEntities(String fname, String header)
    {
        Map<String, Double> result = new IndexedHashMap<>();

        Path fpath = Paths.get(this.root, "Variables", fname);
        List<String> cleanLines = LangUtils.readCodeFile(fpath);

        for(String line : cleanLines)
        {
            if(line.contains(header))
            {
                // ignore header
                continue;
            }
            String[] tokens = line.split(this.entityAssignSymbol);
            Double value = LangUtils.processFloatingValue(tokens[1]);

            result.put(tokens[0].trim(), value);
        }

        return result;
    }

    private String root;

    private final String constantsFname = "Constants.bdef";
    private final String moleculesFname = "Molecules.bdef";
    private final String entityAssignSymbol = "=";

    @Getter
    private Map<String, Double> constantValues;
    @Getter
    private Map<String, Double> moleculeValues;

    @Getter
    private List<LanguageEntity> entities;
}
