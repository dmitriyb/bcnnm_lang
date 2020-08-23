package com.jetbrains.bcnnm.core;


import com.jetbrains.bcnnm.translator.DynamicMechanismTranslator;
import com.jetbrains.bcnnm.translator.LanguageEntity;
import com.jetbrains.bcnnm.translator.MechanismTranslator;
import com.jetbrains.bcnnm.translator.ProjectHandler;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

public class Mechanism extends LanguageEntity {
    public Mechanism(ProjectHandler parent, String name) {
        super(parent, name);
    }

    public void processCodeBlock(List<String> lines)
    {
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

    public String translate() {
        MechanismTranslator basicTranslator = this.getTranslator();

        if(basicTranslator == null)
        {
            return "";
        }

        URI resourcePath = null;
        try {
            URL resourceURL = this.getClass().getResource("/mechanism_template.txt");
            resourcePath = resourceURL.toURI();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

        List<String> lines = null;

        try {
            lines = Files.readAllLines(Paths.get(resourcePath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        String template = String.join("\n", lines);
        String signalBlock = basicTranslator.getSignalBlock();
        String functionblock = basicTranslator.getFunctionBlock();


        String compiledCode = template.replaceAll("\\{MECHANISM_NAME\\}", this.mechanismName)
                                        .replaceAll("\\{MECHANISM_TYPE\\}", this.mechanismParent)
                                        .replaceAll("\\{DURATION\\}", this.properties.get("duration"))
                                        .replaceAll("\\{DELAY\\}", String.valueOf(0))
                                        .replaceAll("\\{SIGNAL_BLOCK\\}", signalBlock)
                                        .replaceAll("\\{EXPRESSION_BLOCK\\}", functionblock);

        return compiledCode;
    }

    private MechanismTranslator getTranslator()
    {
        if(this.mechanismParent.equals("Dynamic"))
        {
            return new DynamicMechanismTranslator(this);
        }
        else {
            return null;
//            throw new RuntimeException(String.format("Cannot find mechanism type %s", this.mechanismParent));
        }

    }

    @Getter @Setter(AccessLevel.PROTECTED) private String mechanismName;
    @Getter @Setter(AccessLevel.PROTECTED) private String mechanismParent;
    @Getter @Setter(AccessLevel.PROTECTED) private String inputType;
    @Getter @Setter(AccessLevel.PROTECTED) private String[] outputArguments;

}
