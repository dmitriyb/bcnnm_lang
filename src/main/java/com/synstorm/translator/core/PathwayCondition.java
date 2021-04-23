package com.synstorm.translator.core;

public class PathwayCondition {
    private String name;
    private String condition;
    private PathwayConditionType type;
    private boolean excitation;

    private String parent;
    private boolean alwaysRun = false;


    private String moleculeName;
    private double[] bounds;
    private boolean[] strictness;

    public PathwayCondition(final String name, final String condition, final PathwayConditionType type, final boolean excitation) {
        this.name = name;
        this.condition = condition.trim();
        this.type = type;
        this.processConditionString();
        this.excitation = excitation;
    }

    private void processConditionString() {
        final String[] tokens = this.condition.split(" ");
        this.parent = tokens[0];

        if (tokens[1].toLowerCase().equals("always")) {
            alwaysRun = true;
            return;
        }

        moleculeName = tokens[2].substring(1);
        processBounds(tokens);
    }

    private void processBounds(String[] tokens) {
        bounds = new double[] {0.0, 0.0};
        strictness =  new boolean[] {true, true};

        if (tokens[3].equals("is")) {
            processRange(tokens);
        } else {
            this.processInequality(tokens);
        }
    }

    private void processRange(String[] tokens) {
        String[] values = tokens[5].substring(1, tokens[5].length() - 2).split(";");
        bounds[0] = Double.parseDouble(values[0]);
        bounds[1] = Double.parseDouble(values[1]);
        strictness[0] = (tokens[5].charAt(0) == '(');
        strictness[1] = (tokens[5].charAt(1) == ')');
    }

    private void processInequality(String[] tokens) {
        final String operator = tokens[3];

        switch(operator) {
            case ">=":
                strictness[0] = false;
            case ">":
                bounds[0] = Double.parseDouble(tokens[4].substring(0, tokens[4].length() - 1));
                bounds[1] = Double.NaN;
                break;
            case "<=":
                strictness[1] = false;
            case "<":
                bounds[1] = Double.parseDouble(tokens[4].substring(0, tokens[4].length() - 1));
                bounds[0] = Double.NaN;
            default:
                break;
        }
    }

    public String getName() {
        return name;
    }

    public boolean isExcitation() { return this.excitation; }

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

    public double getBoundary(int index)
    {
        return this.bounds[index];
    }

    public boolean getStrictness(int index)
    {
        return this.strictness[index];
    }

    public void setType(PathwayConditionType type) { this.type = type; }

    public PathwayConditionType getType() { return this.type; }
}
