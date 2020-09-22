package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public class TranslatorFabric {
    public static MechanismTranslator getTranslator(Mechanism mech)
    {
        String parentName = mech.getMechanismParent();

        switch(parentName)
        {
            case "Dynamic":
                return new DynamicMechanismTranslator(mech);
            case "Division":
                return new DivisionMechanismTranslator(mech);
            case "Diffusion":
                return new DiffusionMechanismTranslator(mech);
            case "SignalTransfer":
                return new SignalTransferTranslator(mech);
            default:
                throw new RuntimeException(String.format("Cannot find mechanism type %s", parentName));
        }
    }
}
