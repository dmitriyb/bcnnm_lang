package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public abstract class MechanismTranslator {
    public MechanismTranslator(Mechanism target) {
        this.mechanism = target;
    }

    public abstract String getFunctionsBlock();

    protected Mechanism mechanism;

    public Mechanism getMechanism() {
        return mechanism;
    }

    protected String getValueTemplate()
    {
        String template =  "@Override\n" +
                "public int %s() {\n" +
                "return %s;\n" +
                "};\n\n";

        return template;
    }
}
