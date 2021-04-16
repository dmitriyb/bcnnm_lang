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
        String result = this.inputType;

        if(result == null)
        {
            switch(this.mechanismParent)
            {
                case "Dynamic":
                    result = "Cell";
                    break;
                case "Division":
                    result = "Cell<=>Space";
                    break;
                case "Apoptosis":
                    result = "Cell";
                    break;
                case "Diffusion":
                    result = "Space";
                    break;
                case "SignalTransfer":
                    result = "Cell<=>Space";
                    break;
                default:
                    throw new RuntimeException(String.format("Cannot find mechanism type %s", this.mechanismParent));
            }
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
        final String mapProperties = lines.get(1);

        processHeader(header);
//        this.processMapping(mapProperties);

        // processing properties
        // we need to ignore the header
        lines.subList(1, lines.size() - 1).stream().filter(line -> !LangUtils.isComment(line)).forEach(line -> {
            final String[] tokens = line.split("=");
            properties.put(tokens[0].trim(), tokens[1].trim());
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