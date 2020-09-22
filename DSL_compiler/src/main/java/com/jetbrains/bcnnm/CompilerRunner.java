package com.jetbrains.bcnnm;

import com.jetbrains.bcnnm.translator.ProjectHandler;

import java.util.Map;

public class CompilerRunner {
    public static void main(String[] args) {
        ArgumentParser parser = new ArgumentParser();
        parser.addArgument("config");
        parser.addArgument("out_path");

        Map<String, String> argumentValues = parser.parseArguments(args);

        ProjectHandler handler = new ProjectHandler(argumentValues.get("config"));
        handler.prefetchData();
        handler.compile(argumentValues.get("out_path"));

    }
}