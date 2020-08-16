package com.jetbrains.bcnnm.translator;


import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

import java.nio.file.Path;
import java.util.Hashtable;
import java.util.List;

public class Mechanism extends LanguageEntity {
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

    public String translate()
    {
        String result = "";

        return result;
    }

    @Getter @Setter(AccessLevel.PROTECTED) private String mechanismName;
    @Getter @Setter(AccessLevel.PROTECTED) private String mechanismParent;
    @Getter @Setter(AccessLevel.PROTECTED) private String inputType;
    @Getter @Setter(AccessLevel.PROTECTED) private String[] outputArguments;
}
