package com.synstorm.translator.core;

public class PathwayCondition {
    private String name;
    private String condition;
    private PathwayConditionType type;

    private String parent;
    private boolean alwaysRun = false;

    private String moleculeName;
    private String bounds;

    public PathwayCondition(String name, String condition, PathwayConditionType type) {
        this.name = name;
        this.condition = condition;
        this.type = type;

        this.processConditionString();
    }

    private void processConditionString()
    {
        String[] tokens = this.condition.split(" ");
        this.parent = tokens[0];

        if(tokens.length == 1)
        {
            this.alwaysRun = true;
            return;
        }

        this.moleculeName = tokens[2].substring(1);
        this.bounds = tokens[5].substring(0, tokens[5].length()-1);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getParent() {
        return parent;
    }

    public boolean isAlwaysRun() {
        return alwaysRun;
    }

    public String getMoleculeName() {
        return moleculeName;
    }

    public String getBounds() {
        return bounds;
    }

    public void setType(PathwayConditionType type) { this.type = type; }

    public PathwayConditionType getType() { return this.type; }
}
