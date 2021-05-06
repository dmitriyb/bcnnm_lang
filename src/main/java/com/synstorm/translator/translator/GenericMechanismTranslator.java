package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.utils.IndexedHashMap;

import java.util.Map;

public class GenericMechanismTranslator extends MechanismTranslator {
    public GenericMechanismTranslator(Mechanism target) {
        super(target);
    }

    public final String getFunctionsBlock() {
        final Map<String, Double> constantValues = mechanism.getParent().getConstantValues();
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) mechanism.getParent().getMoleculeValues();

        final StringBuilder res = new StringBuilder();
        mechanism.properties.forEach((property, value) -> {
            switch(property) {
                case "Delay":
                case "Duration":
                    // TODO: for the future, if we want to process them as formulas
//                    final String durationProcessed = LangUtils.transformToFormula(value, constantValues, moleculeValues);
//                    res.append(String.format(getValueTemplate(), property, durationProcessed));
                    res.append(String.format(getValueTemplate(), property, value));
                    break;
                default:
                    break;
            }
        });


        final String probabilityExpression = this.mechanism.getProbabilityExpression();
        if(probabilityExpression != null && probabilityExpression.length() > 0)
        {
            final String fixedExpression = LangUtils.transformToFormula(probabilityExpression, constantValues, moleculeValues);

            final String template = this.getProbabilityTemplate();
            final String probabilityBlock = String.format(template, fixedExpression);

            res.append(probabilityBlock);
        }

        return res.toString();
    }
}
