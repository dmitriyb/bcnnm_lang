package com.synstorm.translator.core;

import java.util.Arrays;

public class TranslatedEntity {
    private String entityName = "";
    private String importsHeader = "";
    private String packageHeader = "";
    private String code = "";

    public TranslatedEntity(final String name, final String code)
    {
        this.entityName = name;

        this.processCodeBlock(code);
    }

    private void processCodeBlock(final String code)
    {
        String[] lines = code.split("\n");
        Arrays.stream(lines).forEach(line -> {
            if(line.startsWith("package"))
            {
                this.packageHeader = line + '\n';
            }
            else if(line.startsWith("import"))
            {
                this.importsHeader += line + '\n';
            }
            else
            {
                this.code += line + '\n';
            }
        });
    }

    public String getSingleFileCode()
    {
        String res = "";

        res += packageHeader;
        res += importsHeader;
        res += code;

        return res;
    }

    public String getEntityName() {
        return entityName;
    }

    public String getImportsHeader() {
        return importsHeader;
    }

    public String getPackageHeader() {
        return packageHeader;
    }

    public String getCode() {
        return code;
    }

}
