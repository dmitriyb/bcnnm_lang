package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
import lombok.Getter;

public abstract class MechanismTranslator {
    public MechanismTranslator(Mechanism target) {
        this.mechanism = target;
    }

    public abstract String getEvaluateBlock();
    public abstract String getConstructorBlock();

    @Getter
    protected Mechanism mechanism;
}
