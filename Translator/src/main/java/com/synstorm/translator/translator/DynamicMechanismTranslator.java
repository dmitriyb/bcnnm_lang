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
                    res.append(String.format(getFormulaTemplate(), getFunctionBlock()));
                    break;
                default:
                    break;
            }
        });
        return res.toString();
    }

    public final String getFunctionBlock() {
        final StringBuilder res = new StringBuilder();
        final String delta = mechanism.getProperties().get("DeltaFormula");

        final Map<String, Double> constantValues = mechanism.getParent().getConstantValues();
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) mechanism.getParent().getMoleculeValues();

        final Set<String> possibleConstants = constantValues.keySet();
        final Set<String> possibleMolecules = moleculeValues.keySet();

        final Set<String> allVariables = new HashSet<>() {{
            addAll(possibleConstants);
            addAll(possibleMolecules);
        }};

        final Map<String, Function> userFunctions = new HashMap<>(4);
        final Map<String, Operator> userOperators = new HashMap<>(4);

        final Tokenizer tokenizer = new Tokenizer(delta, userFunctions, userOperators, allVariables);
        while (tokenizer.hasNext()) {
            final Token token = tokenizer.nextToken();
            switch (token.getType()) {
                case Token.TOKEN_NUMBER:
                    res.append(((NumberToken) token).getValue());
                    break;
                case Token.TOKEN_VARIABLE:
                    final String name = ((VariableToken) token).getName();
                    String processedName = "";

                    if (possibleMolecules.contains(name)) {
                        final int signalId = moleculeValues.getIndex(name);
                        processedName = String.format("o.getSignal(%d)", signalId);
                    } else if (possibleConstants.contains(name)) {
                        double constantValue = constantValues.get(name);
                        processedName = String.format("%.2f", constantValue);
                    }

                    res.append(processedName);
                    break;
                case Token.TOKEN_FUNCTION:
                    final FunctionToken func = (FunctionToken) token;
                    String funcName = func.getFunction().getName();
                    break;
                case Token.TOKEN_SEPARATOR:
                    break;
                case Token.TOKEN_OPERATOR:
                    final OperatorToken o1 = (OperatorToken) token;
                    res.append(o1.getOperator().getSymbol());
                    break;
                case Token.TOKEN_PARENTHESES_OPEN:
                    res.append("(");
                    break;
                case Token.TOKEN_PARENTHESES_CLOSE:
                    res.append(")");
                    break;
                default:
                    throw new IllegalArgumentException("Unknown Token type encountered. This should not happen");
            }
        }

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
