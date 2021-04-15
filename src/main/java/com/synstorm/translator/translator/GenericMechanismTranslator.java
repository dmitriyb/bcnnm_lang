package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

import java.util.Map;

public class GenericMechanismTranslator extends MechanismTranslator {
    public GenericMechanismTranslator(Mechanism target) {
        super(target);
    }

    public final String getFunctionsBlock() {
        final StringBuilder res = new StringBuilder();
        mechanism.properties.forEach((property, value) -> {
            switch(property) {
                case "Delay":
                case "Duration":
                    res.append(String.format(
                            this.getValueTemplate(),
                            property,
                            value));
                    break;
                default:
                    break;
            }
        });
        return res.toString();
    }
}
