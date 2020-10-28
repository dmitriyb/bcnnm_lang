package com.synstorm.translator.core;


import com.synstorm.translator.translator.*;

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
        List<String> tokens = LangUtils.getBetweenParenthesis(mapProperties);

        String inputType = tokens.get(0);
        String[] outputArguments = tokens.get(1).split(",");

        this.setInputType(inputType);
        this.setOutputArguments(outputArguments);
    }

    public String translate() {
        MechanismTranslator basicTranslator = TranslatorFactory.getTranslator(this);
        String template = LangUtils.readTemplate("/mechanism_template.txt");

        String constructorBlock = basicTranslator.getConstructorBlock();
        String evaluateBlock = basicTranslator.getEvaluateBlock();
        String importBlock = basicTranslator.getImportBlock();


        String compiledCode = template.replaceAll("\\{MECHANISM_NAME\\}", this.mechanismName)
                                        .replaceAll("\\{MECHANISM_TYPE\\}", this.mechanismParent)
                                        .replaceAll("\\{DURATION\\}", this.properties.get("duration"))
                                        .replaceAll("\\{DELAY\\}", String.valueOf(0))
                                        .replaceAll("\\{CONSTRUCTOR_BLOCK\\}", constructorBlock)
                                        .replaceAll("\\{EVALUATE_BLOCK\\}", evaluateBlock)
                                        .replaceAll("\\{IMPORT_BLOCK\\}", importBlock);

        return compiledCode;
    }




}
