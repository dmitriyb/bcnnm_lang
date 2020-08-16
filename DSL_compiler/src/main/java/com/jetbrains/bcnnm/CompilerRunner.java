package com.jetbrains.bcnnm;

import com.jetbrains.bcnnm.ArgumentParser;
import com.jetbrains.bcnnm.translator.ProjectHandler;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CompilerRunner {
    public static void main (String[] args) {
        ArgumentParser parser = new ArgumentParser();
        parser.addArgument("config");

        Map<String, String> argumentValues = parser.parseArguments(args);

        ProjectHandler handler = new ProjectHandler(argumentValues.get("config"));
        handler.prefetchData();
        handler.compile("test_out");
    }
}
