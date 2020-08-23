package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;

public abstract class MechanismTranslator {
    public MechanismTranslator(Mechanism target) {
        this.mechanism = target;
    }

    public abstract String getSignalBlock();
    public abstract String getFunctionBlock();

    protected Mechanism mechanism;
}
