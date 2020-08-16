package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.PathwayCondition;
import lombok.Getter;
import lombok.Setter;

import java.util.*;

public class Pathway extends LanguageEntity {
    public Pathway()
    {
        super();

        possibleBlocks = new HashSet<>();

        for(String val: possibleBlocksValues)
        {
            possibleBlocks.add(val);
        }
    }

    public void processCodeBlock(List<String> lines)
    {
        String header = lines.get(0);
        this.processHeader(header);

        Map<String, Map<String, PathwayCondition>> entityBlocks = this.processBlocks(lines.subList(1, lines.size()));
    }

    private void processHeader(String line)
    {
        String[] tokens = line.split(" ");
        this.setName(tokens[1]);
    }

    private Map<String, Map<String, PathwayCondition>> processBlocks(List<String> allLines)
    {
        Map<String, Map<String, PathwayCondition>> result = new HashMap<>();

        String currentBlock = "";
        Map<String, PathwayCondition> currentConditions = new HashMap<>();

        for(String line : allLines)
        {
            if(possibleBlocks.contains(line))
            {
                // resetting block state
                if(!currentBlock.isEmpty())
                {
                    result.put(currentBlock, currentConditions);
                }

                currentBlock = line;
                currentConditions = new HashMap<>();
            }
            else
            {
                String[] tokens = line.split("->");
                currentConditions.put(tokens[0].trim(), this.processConditionString(tokens[1].trim()));
            }
        }

        return result;
    }

    private PathwayCondition processConditionString(String line)
    {
        String[] tokens = line.split("when");

        PathwayCondition result = new PathwayCondition(tokens[0].trim(), tokens[1].trim().replaceAll("\\(|\\)", ""));
        return result;
    }

    public String translate()
    {
        String result = "";

        return result;
    }


    @Getter @Setter
    private String name;

    private String[] possibleBlocksValues = {"interactions:", };
    private Set<String> possibleBlocks;
}
