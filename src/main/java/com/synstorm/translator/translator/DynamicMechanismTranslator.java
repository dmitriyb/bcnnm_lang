package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.utils.IndexedHashMap;
import net.objecthunter.exp4j.function.Function;
import net.objecthunter.exp4j.operator.Operator;
import net.objecthunter.exp4j.tokenizer.*;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;


public class DynamicMechanismTranslator extends MechanismTranslator {
    public DynamicMechanismTranslator(Mechanism target) {
        super(target);
    }

    public final String getFunctionsBlock() {
        final StringBuilder res = new StringBuilder();
        mechanism.properties.forEach((property, value) -> {
            switch(property) {
                case "Delay":
                case "Duration":
                    res.append(String.format(getValueTemplate(), property, value));
                    break;
                case "DeltaSignal":
                    final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.mechanism.parent.getMoleculeValues();
                    int id = moleculeValues.getIndex(value);
                    res.append(String.format(getValueTemplate(), property, id));
                    break;
                case "DeltaFormula":
                    String formula = LangUtils.getMechanismFormula(this.mechanism);
                    res.append(String.format(getFormulaTemplate(),  formula));
                    break;
                default:
                    break;
            }
        });


        return res.toString();
    }

    private String getFormulaTemplate() {
        String template = "    @Override\n" +
                "    public double calculateDeltaFormula(final PhysicalObject o) {\n" +
                "        return %s;\n" +
                "    };\n\n";

        return template;
    }


}
