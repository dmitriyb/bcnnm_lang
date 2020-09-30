package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public class TranslatorFactory {
    public static MechanismTranslator getTranslator(Mechanism mech)
    {
        String parentName = mech.getMechanismParent();

        switch(parentName)
        {
            case "DynamicMechanism":
                return new DynamicMechanismTranslator(mech);
            case "DivisionMechanism":
                return new DivisionMechanismTranslator(mech);
            case "DiffusionMechanism":
                return new DiffusionMechanismTranslator(mech);
            case "SignalTransferMechanism":
                return new SignalTransferTranslator(mech);
            default:
                throw new RuntimeException(String.format("Cannot find mechanism type %s", parentName));
        }
    }
}
