package com.synstorm.translator;

import com.synstorm.translator.translator.ProjectHandler;

import java.util.Map;

public class CompilerRunner {
    public static void main(String[] args) {
//        ArgumentParser parser = new ArgumentParser();
//        parser.addArgument("config");
//        parser.addArgument("out_path");
//
//        Map<String, String> argumentValues = parser.parseArguments(args);

        ProjectHandler handler = new ProjectHandler(args[0]);
        handler.prefetchData();
        handler.compile(args[1]);

    }
}
