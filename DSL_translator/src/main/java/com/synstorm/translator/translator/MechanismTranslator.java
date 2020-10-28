package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public abstract class MechanismTranslator {
    public MechanismTranslator(Mechanism target) {
        this.mechanism = target;
    }

    public abstract String getEvaluateBlock();
    public abstract String getConstructorBlock();
    public abstract String getImportBlock();

    protected Mechanism mechanism;

    public Mechanism getMechanism() {
        return mechanism;
    }
}
