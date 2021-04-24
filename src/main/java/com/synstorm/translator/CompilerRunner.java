package com.synstorm.translator;

import com.synstorm.translator.translator.ProjectHandler;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Map;

public class CompilerRunner {
    public static void main(String[] args) {
        ArgumentParser parser = new ArgumentParser();
        parser.addArgument("config");
        parser.addArgument("out_path");

        Map<String, String> argumentValues = parser.parseArguments(args);

        ProjectHandler handler = new ProjectHandler(argumentValues.get("config"));
        handler.prefetchData();
        handler.compile();
        handler.writeProjectCode(argumentValues.get("out_path"));

//        final String code = handler.getDynamicCompilationCode();
//        try {
//            BufferedWriter writer = new BufferedWriter(new FileWriter("test.java"));
//            writer.write(code);
//            writer.close();
//        } catch (IOException e) {
//            final String errorMessage = String.format("Cannot create a source file for %s", "test");
//            throw new RuntimeException(errorMessage);
//        }

    }
}
