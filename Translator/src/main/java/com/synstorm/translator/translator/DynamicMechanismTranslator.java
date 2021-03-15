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
                case "DeltaSignal":
                    template = this.getValueTemplate();

                    IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.mechanism.parent.getMoleculeValues();
                    int id = moleculeValues.getIndex(value);

                    res.append(String.format(template, property, id));

                    break;
                case "DeltaFormula":
                    template = getFormulaTemplate();
                    String formula = getFunctionBlock();

                    res.append(String.format(template, formula));

                    break;
                default:
                    break;
            }
        }


        return res.toString();
    }

    public String getFunctionBlock()
    {
        String res = "";
        String delta = this.mechanism.getProperties().get("DeltaFormula");

        Map<String, Double> constantValues = this.mechanism.getParent().getConstantValues();
        IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.mechanism.getParent().getMoleculeValues();

        Set<String> possibleConstants = constantValues.keySet();
        Set<String> possibleMolecules = moleculeValues.keySet();

        Set<String> allVariables = new HashSet<String>() {{
                                                            addAll(possibleConstants);
                                                            addAll(possibleMolecules);
                                                          }};

        final Map<String, Function> userFunctions = new HashMap<>(4);
        final Map<String, Operator> userOperators = new HashMap<>(4);

        Tokenizer tokenizer = new Tokenizer(delta, userFunctions, userOperators, allVariables);
        while (tokenizer.hasNext()) {
            Token token = tokenizer.nextToken();
            switch (token.getType()) {
                case Token.TOKEN_NUMBER:
                    res += String.valueOf(((NumberToken) token).getValue());
                    break;
                case Token.TOKEN_VARIABLE:
                    String name = ((VariableToken) token).getName();
                    String processedName = "";

                    if(possibleMolecules.contains(name))
                    {
                        int signalId = moleculeValues.getIndex(name);
                        processedName = String.format("o.getSignal(%d)", signalId);
                    }
                    else if (possibleConstants.contains(name))
                    {
                        Double constantValue = constantValues.get(name);
                        processedName = String.format("%.2f", constantValue);
                    }

                    res += processedName;
                    break;
                case Token.TOKEN_FUNCTION:
                    FunctionToken func = (FunctionToken) token;
                    String funcName = func.getFunction().getName();
                    break;
                case Token.TOKEN_SEPARATOR:
                    break;
                case Token.TOKEN_OPERATOR:
                    OperatorToken o1 = (OperatorToken) token;
                    res += o1.getOperator().getSymbol();
                    break;
                case Token.TOKEN_PARENTHESES_OPEN:
                    res += "(";
                    break;
                case Token.TOKEN_PARENTHESES_CLOSE:
                    res += ")";
                    break;
                default:
                    throw new IllegalArgumentException("Unknown Token type encountered. This should not happen");
            }
        }

        return res;
    }


    private String getFormulaTemplate()
    {
        String template = "    @Override\n" +
                "    public double calculateDeltaFormula(final PhysicalObject o) {\n" +
                "        return %s;\n" +
                "    };\n\n";

        return template;
    }


}
