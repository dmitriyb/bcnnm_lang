package com.synstorm.translator.translator;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class LangUtils {
    public static String cropComments(String line)
    {
        int endIdx = line.indexOf("#");

        if(endIdx != -1)
        {
            line = line.substring(0, endIdx);
        }

        return line.trim();
    }

    public static List<String> readCodeFile(Path fpath)
    {
        try {
            List<String> allLines = Files.readAllLines(fpath);

            return allLines.stream().map( line -> cropComments(line) ).filter(line -> !line.isEmpty()).collect( Collectors.toList() );
        }
        catch(IOException e) {
            e.printStackTrace();
        }

        return new ArrayList<>();
    }

    public static String readTemplate(String resourceName)
    {
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

    public static Double processFloatingValue(String value)
    {
        Double result = 0.0;

        if(value.contains("^"))
        {
            String[] baseTokens = value.split("\\*");
            String[] expTokens = baseTokens[1].split("\\^");

            Double base = Double.parseDouble(baseTokens[0]);
            Double exp = Double.parseDouble(expTokens[1].replaceAll("\\(|\\)", ""));

            result = base*Math.pow(10, exp);
        }
        else
        {
            result = Double.parseDouble(value);
        }

        return result;
    }

    public static String replaceInTemplate(String template, String blockName, String value)
    {
        return template.replaceAll(blockName, value);
    }

    public static List<String> getBetweenParenthesis(String line)
    {
        List<String> res = new ArrayList<>();

        Pattern regex = Pattern.compile("\\((.*?)\\)");
        Matcher regexMatcher = regex.matcher(line);

        while(regexMatcher.find())
        {
            res.add(regexMatcher.group(1).trim().replaceAll("\\(|\\)", ""));
        }

        return res;
    }

    public static boolean isComment(String line)
    {
        return line.trim().startsWith("#");
    }

}
