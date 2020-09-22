package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public class DivisionMechanismTranslator extends MechanismTranslator {
    public DivisionMechanismTranslator(Mechanism target) {
        super(target);
    }

    public String getConstructorBlock() { return ""; }
    public String getEvaluateBlock()
    {
        return "";
    }
}
