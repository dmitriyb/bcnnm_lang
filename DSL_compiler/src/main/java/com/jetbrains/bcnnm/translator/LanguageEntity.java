package com.jetbrains.bcnnm.translator;

import lombok.Getter;

import java.nio.file.Path;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public abstract class LanguageEntity {
    public LanguageEntity(ProjectHandler parent, String name)
    {
        this.parent = parent;
        this.name = name;
        this.properties = new Hashtable<>();
    }

    public abstract void processCodeBlock(List<String> lines);
    public abstract String translate();

    @Getter
    protected Map<String, String> properties;

    @Getter
    private String name;

    @Getter public ProjectHandler parent;


}
