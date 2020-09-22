package com.synstorm.translator.translator;


import java.util.List;

public class Mechanism extends LanguageEntity {
    private String mechanismName;
    private String mechanismParent;
    private String inputType;
    private String[] outputArguments;

    public Mechanism(ProjectHandler parent, String name) {
        super(parent, name);
    }

    public String getMechanismName() {
        return mechanismName;
    }

    public void setMechanismName(String mechanismName) {
        this.mechanismName = mechanismName;
    }

    public String getMechanismParent() {
        return mechanismParent;
    }

    public void setMechanismParent(String mechanismParent) {
        this.mechanismParent = mechanismParent;
    }

    public String getInputType() {
        return inputType;
    }

    public void setInputType(String inputType) {
        this.inputType = inputType;
    }

    public String[] getOutputArguments() {
        return outputArguments;
    }

    public void setOutputArguments(String[] outputArguments) {
        this.outputArguments = outputArguments;
    }

    public void processCodeBlock(List<String> lines) {
        String header = lines.get(0);
        String mapProperties = lines.get(1);

        this.processHeader(header);
        this.processMapping(mapProperties);

        // processing properties
        for(int i = 2; i < lines.size(); ++i)
        {
            String line = lines.get(i);
            String[] tokens = line.split("=");

            this.properties.put(tokens[0].trim(), tokens[1].trim());
        }
    }

    private void processHeader(String header)
    {
        String[] tokens = header.split(" ");
        String[] mechanismInfo = tokens[1].split("::");

        this.setMechanismName(mechanismInfo[0]);
        this.setMechanismParent(mechanismInfo[1]);
    }

    private void processMapping(String mapProperties)
    {
        String[] tokens = mapProperties.split("=>");

        String inputType = tokens[0].trim().replaceAll("\\(|\\)", "");
        String[] outputArguments = tokens[1].trim().replaceAll("\\(|\\)", "").split(",");

        this.setInputType(inputType);
        this.setOutputArguments(outputArguments);
    }

    public String translate()
    {
        String result = "";

        return result;
    }


}
