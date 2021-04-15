package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.utils.IndexedHashMap;
import net.objecthunter.exp4j.function.Function;
import net.objecthunter.exp4j.operator.Operator;
import net.objecthunter.exp4j.tokenizer.*;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class LangUtils {
    // переназначать подаваемое значение не кошерно
    public static String cropComments(String line) {
        int endIdx = line.indexOf("#");
        if (endIdx != -1) {
            line = line.substring(0, endIdx);
        }
        return line.trim();
    }

    public static List<String> readCodeFile(final Path fpath) {
        try {
            List<String> allLines = Files.readAllLines(fpath);

            return allLines.stream().map(LangUtils::cropComments).filter(line -> !line.isEmpty()).collect(Collectors.toList());
        }
        catch(IOException e) {
            e.printStackTrace();
        }

        return new ArrayList<>();
    }

    public static String readTemplate(final String resourceName) {
        URI resourcePath = null;
        try {
            URL resourceURL = LangUtils.class.getResource(resourceName);
            resourcePath = resourceURL.toURI();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

        List<String> lines = null;

        try {
            lines = Files.readAllLines(Paths.get(resourcePath));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return String.join("\n", lines);
    }

    public static Double processFloatingValue(final String value) {
        double result = 0.0;

        if (value.contains("^")) {
            String[] baseTokens = value.split("\\*");
            String[] expTokens = baseTokens[1].split("\\^");

            double base = Double.parseDouble(baseTokens[0]);
            double exp = Double.parseDouble(expTokens[1].replaceAll("\\(|\\)", ""));

            result = base * Math.pow(10, exp);
        } else {
            result = Double.parseDouble(value);
        }

        return result;
    }

    public static String replaceInTemplate(final String template, final String blockName, final String value) {
        return template.replaceAll(blockName, value);
    }

    public static List<String> getBetweenParenthesis(final String line) {
        final List<String> res = new ArrayList<>();
        final Pattern regex = Pattern.compile("\\((.*?)\\)");
        final Matcher regexMatcher = regex.matcher(line);

        while(regexMatcher.find()) {
            res.add(regexMatcher.group(1).trim().replaceAll("\\(|\\)", ""));
        }

        return res;
    }

    public static String getMechanismFormula(Mechanism mechanism) {
        final StringBuilder res = new StringBuilder();
        final String delta = mechanism.getProperties().get("DeltaFormula");

        final Map<String, Double> constantValues = mechanism.getParent().getConstantValues();
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) mechanism.getParent().getMoleculeValues();

        final Set<String> possibleConstants = constantValues.keySet();
        final Set<String> possibleMolecules = moleculeValues.keySet();

        final Set<String> allVariables = new HashSet<String>() {{
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

    public static boolean isComment(String line)
    {
        return line.trim().startsWith("#");
    }

}
