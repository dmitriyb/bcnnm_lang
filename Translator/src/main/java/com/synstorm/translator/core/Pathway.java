package com.synstorm.translator.core;

import com.synstorm.translator.core.PathwayCondition;
import com.synstorm.translator.translator.LangUtils;
import com.synstorm.translator.translator.LanguageEntity;
import com.synstorm.translator.translator.ProjectHandler;

import java.util.*;

public class Pathway extends LanguageEntity {
    private String name;

    private final String[] possibleBlocksValues = {"interactions", };
    private final Set<String> possibleBlocks;

    private Map<String, List<PathwayCondition>> entityBlocks;

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

        this.entityBlocks = this.processBlocks(lines.subList(1, lines.size()));

    }

    private void processHeader(String line) {
        String[] tokens = line.split(" ");
        this.setName(tokens[1]);
    }

    private Map<String, List<PathwayCondition>> processBlocks(List<String> allLines) {
        Map<String, List<PathwayCondition>> result = new HashMap<>();

        String currentBlock = "";
        List<PathwayCondition> currentConditions = new ArrayList<>();

//        for(String line : allLines) {
        for(int i = 0; i < allLines.size() - 1; ++i)
        {
            String line = allLines.get(i);
            if(LangUtils.isComment(line))
            {
                continue;
            }

            String blockName = line.replaceAll("^[: \t]+|[: \t]+$", "");
            if (possibleBlocks.contains(blockName)) {
                // resetting block state
                if(!currentBlock.isEmpty())
                    result.put(currentBlock, currentConditions);

                currentBlock = blockName;
                currentConditions = new ArrayList<>();
            }
            else {
                PathwayCondition condition  = this.processConditionString(line);
                currentConditions.add(condition);
//                currentConditions.put(tokens[0].trim(), this.processConditionString(tokens[1].trim()));
            }
        }

        if(!currentConditions.isEmpty())
        {
            result.put(currentBlock, currentConditions);
        }

        return result;
    }

    private PathwayCondition processConditionString(String line)
    {
        String[] tokens = line.split(" ");

        String conditionName = tokens[0];
        String conditionTypeName = tokens[1];
        String conditionString = String.join(" ", Arrays.copyOfRange(tokens, 2, tokens.length));

        PathwayConditionType conditionType = (conditionTypeName.equals("->")) ? PathwayConditionType.CONDITION_START : PathwayConditionType.CONDITION_INHIBIT;

        return new PathwayCondition(conditionName, conditionString, conditionType);
    }

    public Map<String, List<PathwayCondition>> groupByMechanism()
    {
        Map<String, List<PathwayCondition>> res = new HashMap<>();

        for(PathwayCondition condition : this.entityBlocks.get(""))
        {
            res.computeIfAbsent(condition.getParent(), (key) -> new ArrayList<>()).add(condition);
        }

        return res;
    }

    public String translate() {
        String result = "";
        return result;
    }
}
