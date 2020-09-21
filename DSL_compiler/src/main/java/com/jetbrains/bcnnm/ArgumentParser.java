package com.jetbrains.bcnnm;

import java.util.Map;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;

public class ArgumentParser {
    public ArgumentParser()
    {
        this.parsedValues = new Hashtable<>();
        this.argumentNames = new HashSet<>();
    }

    public boolean addArgument(String argName)
    {
        if(this.argumentNames.contains(argName)) {
            return false;
        }

        this.argumentNames.add(argName);
        return true;
    }

    public Map<String, String> parseArguments(String[] args)
    {
        for(int i = 0; i < args.length; i += 2)
        {
            if(this.argumentNames.contains(args[i])) {
                this.parsedValues.put(args[i], args[i+1]);
            }
        }

        return this.parsedValues;
    }


    private final Map<String, String> parsedValues;
    private final Set<String> argumentNames;
}
