package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;

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
