package com.synstorm.translator.core;

import com.synstorm.translator.translator.LangUtils;
import com.synstorm.translator.translator.LanguageEntity;
import com.synstorm.translator.translator.ProjectHandler;
import java.lang.Math;

import java.util.*;
import java.util.stream.Collectors;

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
    public final String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void processCodeBlock(final List<String> lines) {
        String header = lines.get(0);
        processHeader(header);

        entityBlocks = processBlocks(lines.subList(1, lines.size()));
    }

    private void processHeader(final String line) {
        String[] tokens = line.split(" ");
        setName(tokens[2]);
    }

    private Map<String, List<PathwayCondition>> processBlocks(List<String> allLines) {
        Map<String, List<PathwayCondition>> result = new HashMap<>();

        String currentBlock = "";
        List<PathwayCondition> currentConditions = new ArrayList<>();

        // TODO: refactor
        for(int i = 0; i < allLines.size(); ++i)
        {
            String line = allLines.get(i);
            if(LangUtils.isComment(line) || LangUtils.isBracket(line))
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
            }
        }

        if(!currentConditions.isEmpty())
        {
            result.put(currentBlock, currentConditions);
        }

        Set<String> possibleMechanisms = parent.getEntities().stream().map(entity -> entity.getName()).collect(Collectors.toSet());
        Set<String> undefinedMechanisms = new HashSet<>();

        result.values().forEach(pathways -> {
            pathways.forEach(condition -> {
                String name = condition.getName();
                String parent = condition.getParent();

                if(!possibleMechanisms.contains(name) && !undefinedMechanisms.contains(name))
                {
                    undefinedMechanisms.add(name);
                }

                if(!possibleMechanisms.contains(parent) && !undefinedMechanisms.contains(parent))
                {
                    undefinedMechanisms.add(parent);
                }
            });
        });

        if(undefinedMechanisms.size() > 0)
        {
            String mechsJoined = String.join(", ", undefinedMechanisms);
            String error = String.format("Undefined mechanisms: %s in a pathway %s!", mechsJoined, this.name);
            throw new RuntimeException(error);
        }

        return result;
    }

    private PathwayCondition processConditionString(String line) {
        final String[] tokens = line.split(" ");
        final String conditionName = tokens[0];
        final String conditionTypeName = tokens[1];
        final String conditionString = String.join(" ", Arrays.copyOfRange(tokens, 2, tokens.length));
        final boolean excitation = tokens[1].equals("->");

        final PathwayConditionType conditionType = (conditionTypeName.equals("->")) ? PathwayConditionType.CONDITION_START : PathwayConditionType.CONDITION_INHIBIT;

        return new PathwayCondition(conditionName, conditionString, conditionType, excitation);
    }

    public Map<String, List<PathwayCondition>> groupByMechanism() {
        final Map<String, List<PathwayCondition>> res = new HashMap<>();
        entityBlocks.get("").forEach(condition -> res.computeIfAbsent(condition.getParent(), (key) -> new ArrayList<>()).add(condition));
        return res;
    }

    public String translate() {
        String result = "";
        return result;
    }
}
