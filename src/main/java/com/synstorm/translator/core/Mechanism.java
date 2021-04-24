package com.synstorm.translator.core;


import com.synstorm.translator.translator.*;

import java.util.List;

public class Mechanism extends LanguageEntity {
    private String mechanismName;
    private String mechanismParent;
    private String inputType;
    private String[] outputArguments;

    private String probabilityExpression;

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

    public String getProbabilityExpression() { return probabilityExpression; }

    public String getInputType() {
        String result = this.inputType;

        if(result == null)
        {
            String objectType = this.properties.get("ObjectType");

            if(objectType == null)
            {
                throw new RuntimeException(String.format("Cannot find mechanism type %s", this.mechanismParent));
            }

            return objectType;
        }

        return result;
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

    public void processCodeBlock(final List<String> lines) {
        final String header = lines.get(0);

        processHeader(header);

        lines.stream().filter(line -> !LangUtils.isComment(line)).forEach(line -> {
            if(line.startsWith("def") || line.strip().equals("}"))
            {
                return; //header, ignore the line;
            }
            else if(line.contains("with")) // optinal segment
            {
                final String expression = line.split("with")[1];
                final String[] tokens = expression.split("=");

                if(tokens[0].strip().toLowerCase().equals("probability"))
                {
                    this.probabilityExpression = tokens[1];
                }
            }
            else {
                final String[] tokens = line.split("=");
                properties.put(tokens[0].trim(), tokens[1].trim());
            }
        });

    }

    private void processHeader(String header) {
        final String[] tokens = header.split(" ");
        final String[] mechanismInfo = tokens[2].split("::");

        setMechanismName(mechanismInfo[0]);
        setMechanismParent(mechanismInfo[1]);
    }

    private void processMapping(final String mapProperties) {
        final List<String> tokens = LangUtils.getBetweenParenthesis(mapProperties);

        final String inputType = tokens.get(0);
        final String[] outputArguments = tokens.get(1).split(",");

        setInputType(inputType);
        setOutputArguments(outputArguments);
    }

    public String translate() {
        MechanismTranslator basicTranslator = TranslatorFactory.getTranslator(this);
        String template = LangUtils.readTemplate("/mechanism_template.txt");

        String functionsBlock = basicTranslator.getFunctionsBlock();

        String compiledCode = template.replaceAll("\\{MECHANISM_NAME\\}", this.mechanismName)
                                        .replaceAll("\\{MECHANISM_TYPE\\}", this.mechanismParent)
                                        .replaceAll("\\{FUNCTION_BLOCK\\}", functionsBlock);

        return compiledCode;
    }




}
