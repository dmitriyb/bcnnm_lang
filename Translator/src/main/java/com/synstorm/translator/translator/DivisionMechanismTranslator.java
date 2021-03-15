package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;

import java.util.Map;

public class DivisionMechanismTranslator extends MechanismTranslator {
    public DivisionMechanismTranslator(Mechanism target) {
        super(target);
    }

    public String getFunctionsBlock()
    {
        StringBuilder res = new StringBuilder();
        String template;

        for (Map.Entry<String,String> entry : this.mechanism.properties.entrySet())
        {
            String property = entry.getKey();
            String value = entry.getValue();

            switch(property)
            {
                case "Delay":
                case "Duration":
                    template = this.getValueTemplate();
                    res.append(String.format(template, property, value));

                    break;
                default:
                    break;
            }
        }

        return res.toString();
    }
}
