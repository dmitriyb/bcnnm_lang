package com.synstorm.translator.translator;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public abstract class LanguageEntity {
    protected Map<String, String> properties;
    private final String name;
    public ProjectHandler parent;

    public LanguageEntity(ProjectHandler parent, String name)
    {
        this.parent = parent;
        this.name = name;
        this.properties = new Hashtable<>();
    }

    public Map<String, String> getProperties() {
        return properties;
    }

    public String getName() {
        return name;
    }

    public ProjectHandler getParent() {
        return parent;
    }

    public abstract void processCodeBlock(List<String> lines);
    public abstract String translate();




}
