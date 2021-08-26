package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.core.exceptions.LangException;
import com.synstorm.translator.utils.IndexedHashMap;

import java.util.Map;


public class SelectDirectionMechanismTranslator extends MechanismTranslator {
    public SelectDirectionMechanismTranslator(Mechanism target) {
        super(target);
    }

    public final String getFunctionsBlock() throws LangException {
        final StringBuilder res = new StringBuilder();

        final Map<String, Double> constantValues = mechanism.getParent().getConstantValues();
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) mechanism.getParent().getMoleculeValues();

        for (Map.Entry<String, String> entry : mechanism.properties.entrySet()) {
            String property = entry.getKey();
            String value = entry.getValue();
            switch (property) {
                case "Delay":
                case "Duration":
                    res.append(String.format(getValueTemplate(), property, value));
                    break;
                case "SelectionSignal":
                    // TODO: add object types for Insoluble signal types
                    int id = moleculeValues.getIndex(value);
                    res.append(String.format(getValueTemplate(), property, id));
                    break;
                case "SelectionMode":
                    // TODO: implement 4 modes: random, grad, antigrad, insoluble
                    // we just have to provide link for method in Space.
                    // Here is a code example only for random selection
                    String selectionMode =
                            "        @Override\n" +
                            "        public SignalChangeMode SelectionMode(final Space space) {\n" +
                            "            return space::getRandomCandidate;\n" +
                            "        }\n";
                    res.append(String.format(getFormulaTemplate(), selectionMode));
                    break;
                default:
                    break;
            }
        }

        final String probabilityExpression = this.mechanism.getProbabilityExpression();
        if(!(probabilityExpression == null))
        {
            final String fixedExpression = LangUtils.transformToFormula(probabilityExpression, constantValues, moleculeValues);

            final String template = this.getProbabilityTemplate();
            final String probabilityBlock = String.format(template, fixedExpression);

            res.append(probabilityBlock);
        }


        return res.toString();
    }

    private String getFormulaTemplate() {
        String template = "    @Override\n" +
                "    public double DeltaFormula(final PhysicalObject o) {\n" +
                "        return %s;\n" +
                "    };\n\n";

        return template;
    }


}
