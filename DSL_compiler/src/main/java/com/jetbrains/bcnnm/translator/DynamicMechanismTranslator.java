package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
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

    public String getSignalBlock()
    {
        String res = "final int signal = InitialConfig.molecules.get({MOLECULE_NAME});";
        return res.replaceFirst("\\{MOLECULE_NAME\\}", this.mechanism.getOutputArguments()[0]);
    }

    public String getFunctionBlock()
    {
        String res = "final double delta = ";
        String delta = this.mechanism.getProperties().get("delta");

        Set<String> possibleConstants = this.mechanism.getParent().getConstantValues().keySet();
        Set<String> possibleMolecules = this.mechanism.getParent().getMoleculeValues().keySet();

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
                        processedName = String.format("logicObject.getSignal(InitialConfig.molecules.get(\"%s\"))", name);
                    }
                    else if (possibleConstants.contains(name))
                    {
                        processedName = String.format("InitialConfig.constantValues.get(\"%s\")", name);
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

    private String getConstantGetter(String name)
    {
        return String.format("InitialConfig.constantValues.get(\"%s\")", name);
    }

    private String getMoleculeGetter(String name)
    {
        return String.format("logicObject.getSignal(InitialConfig.molecules.get(\"%s\"))", name);
    }
}
