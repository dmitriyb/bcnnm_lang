package com.jetbrains.bcnnm.translator;

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

        List<Path> sourceFiles = this.getSourceFiles();
        this.entities = sourceFiles.stream().map(fpath -> processSourceFile(fpath)).collect(Collectors.toList());

        return true;
    }

    public boolean compile(String outputDir)
    {
        for(LanguageEntity entry: entities)
        {
            String translatedCode = entry.translate();
        }

        return true;
    }

    private LanguageEntity processSourceFile(Path fpath)
    {
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
        List<String> cleanLines = LangUtils.readCodeFile(fpath);
        Mechanism mech = new Mechanism();
        mech.processCodeBlock(cleanLines);

        return mech;
    }

    private LanguageEntity processPathway(Path fpath)
    {
        List<String> cleanLines = LangUtils.readCodeFile(fpath);
        Pathway pathway = new Pathway();
        pathway.processCodeBlock(cleanLines);

        return pathway;
    }

    private List<Path> getSourceFiles()
    {
        DirectoryStream.Filter<Path> filter = file -> {
            return !file.toString().endsWith("bdef");
        };

        Path rootPath = Paths.get(this.root);
        List<Path> result = new ArrayList<>();

        try (DirectoryStream<Path> paths = Files.newDirectoryStream(rootPath, filter)) {
            paths.forEach(path -> result.add(path));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return result;
    }

    private Map<String, Double> gatherNamedEntities(String fname, String header)
    {
        Map<String, Double> result = new Hashtable<>();

        Path fpath = Paths.get(this.root, fname);
        List<String> cleanLines = LangUtils.readCodeFile(fpath);

        for(String line : cleanLines)
        {
            if(line.contains(header))
            {
                // ignore header
                continue;
            }
            String[] tokens = line.split(":");
            Double value = LangUtils.processFloatingValue(tokens[1]);

            result.put(tokens[0], value);
        }

        return result;
    }

    private String root;

    private final String constantsFname = "Constants.bdef";
    private final String moleculesFname = "Molecules.bdef";

    private Map<String, Double> constantValues;
    private Map<String, Double> moleculeValues;

    private List<LanguageEntity> entities;
}
