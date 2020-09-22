package com.jetbrains.bcnnm.core;

import com.jetbrains.bcnnm.core.PathwayCondition;
import com.jetbrains.bcnnm.translator.LanguageEntity;
import com.jetbrains.bcnnm.translator.ProjectHandler;

import java.util.*;

public class Pathway extends LanguageEntity {
    private String name;

    private final String[] possibleBlocksValues = {"interactions:", };
    private final Set<String> possibleBlocks;

    public Pathway(ProjectHandler parent, String name) {
        super(parent, name);
        possibleBlocks = new HashSet<>();
        possibleBlocks.addAll(Arrays.asList(possibleBlocksValues));
    }

    @Override
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void processCodeBlock(List<String> lines) {
        String header = lines.get(0);
        this.processHeader(header);

        Map<String, Map<String, PathwayCondition>> entityBlocks = this.processBlocks(lines.subList(1, lines.size()));
    }

    private void processHeader(String line) {
        String[] tokens = line.split(" ");
        this.setName(tokens[1]);
    }

    private Map<String, Map<String, PathwayCondition>> processBlocks(List<String> allLines) {
        Map<String, Map<String, PathwayCondition>> result = new HashMap<>();

        String currentBlock = "";
        Map<String, PathwayCondition> currentConditions = new HashMap<>();

        for(String line : allLines) {
            if (possibleBlocks.contains(line)) {
                // resetting block state
                if(!currentBlock.isEmpty())
                    result.put(currentBlock, currentConditions);

                currentBlock = line;
                currentConditions = new HashMap<>();
            }
            else {
                String[] tokens = line.split("->");
                currentConditions.put(tokens[0].trim(), this.processConditionString(tokens[1].trim()));
            }
        }
        return result;
    }

    private PathwayCondition processConditionString(String line) {
        String[] tokens = line.split("when");

        return new PathwayCondition(tokens[0].trim(), tokens[1].trim().replaceAll("\\(|\\)", ""));
    }

    public String translate() {
        String result = "";
        return result;
    }
}
