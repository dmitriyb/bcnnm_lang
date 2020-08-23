package com.jetbrains.bcnnm;

import com.jetbrains.bcnnm.ArgumentParser;
import com.jetbrains.bcnnm.translator.ProjectHandler;
import net.objecthunter.exp4j.Expression;
import net.objecthunter.exp4j.ExpressionBuilder;
import net.objecthunter.exp4j.function.Function;
import net.objecthunter.exp4j.operator.Operator;
import net.objecthunter.exp4j.shuntingyard.ShuntingYard;
import net.objecthunter.exp4j.tokenizer.*;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class CompilerRunner {
    public static void main(String[] args) {
        ArgumentParser parser = new ArgumentParser();
        parser.addArgument("config");

        Map<String, String> argumentValues = parser.parseArguments(args);

        ProjectHandler handler = new ProjectHandler(argumentValues.get("config"));
        handler.prefetchData();
        handler.compile("test_out");

    }
}
