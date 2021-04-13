package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

public class TranslatorFactory {
    public static MechanismTranslator getTranslator(Mechanism mech) {
        final String parentName = mech.getMechanismParent();
        MechanismTranslator translator;

        switch(parentName) {
            case "Dynamic":
                translator = new DynamicMechanismTranslator(mech);
                break;
            case "Division":
                translator = new GenericMechanismTranslator(mech);
                break;
            case "Apoptosis":
                translator = new GenericMechanismTranslator(mech);
                break;
            case "Diffusion":
                translator = new DiffusionMechanismTranslator(mech);
                break;
            case "SignalTransfer":
                translator = new SignalTransferTranslator(mech);
                break;
            default:
                throw new RuntimeException(String.format("Cannot find mechanism type %s", parentName));
        }

        return translator;
    }
}
