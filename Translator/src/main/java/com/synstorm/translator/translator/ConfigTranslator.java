package com.synstorm.translator.translator;

import com.synstorm.translator.core.Mechanism;
import com.synstorm.translator.core.Pathway;
import com.synstorm.translator.core.PathwayCondition;
import com.synstorm.translator.utils.IndexedHashMap;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ConfigTranslator {
    private String template = "";
    private final ProjectHandler parent;

    public ConfigTranslator(ProjectHandler parent)
    {
        this.parent = parent;
        this.template = LangUtils.readTemplate("/initial_config_template.txt");
    }

    public String translate()
    {
        String moleculesBlock = this.getMoleculesBlock();
        String concentrationsBlock = this.getIntraConcentrationBlock();
        String mechanismsBlock = this.getMechanismsBlock();
        String linksBlock = this.getMechanismLinksBlock();
        String mechToObjectsBlock = this.getMechanismsToObjectsBlock();
        String pathwaysBlock = this.getPathwaysToConditionBlock();

        String res = template.replaceAll("\\{MOLECULES_BLOCK\\}", moleculesBlock)
                             .replaceAll("\\{INTRA_CONCENTRATIONS_BLOCK\\}", concentrationsBlock)
                             .replaceAll("\\{MECHANISMS_BLOCK\\}", mechanismsBlock)
                             .replaceAll("\\{LINKS_BLOCK\\}", linksBlock)
                             .replaceAll("\\{MECHANISMS_TO_OBJECTS_BLOCK\\}", mechToObjectsBlock)
                             .replaceAll("\\{PATHWAY_TO_CONDITION_BLOCK\\}", pathwaysBlock);

        return res;
    }

    private String getMoleculesBlock()
    {
        IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.parent.getMoleculeValues();

        StringBuilder res = new StringBuilder();

        Map<Integer, String> moleculesReversed = new HashMap<>();
        moleculeValues.keySet().forEach(key -> {moleculesReversed.put(moleculeValues.getIndex(key), key);});

        for(int i = 0; i < moleculesReversed.size(); ++i)
        {
            String moleculeName = moleculesReversed.get(i);

            res.append(String.format("DSLLibrary.INSTANCE.addMoleculeType(\"%s\");\n", moleculeName));
        }

        return res.toString();
    }

    private String getIntraConcentrationBlock()
    {
        IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.parent.getMoleculeValues();

        StringBuilder res = new StringBuilder();

        for(Map.Entry<String, Double> entry : moleculeValues.entrySet())
        {
            res.append(String.format("DSLLibrary.INSTANCE.addMoleculeConcentrationToObjectType(\"Cell\", \"%s\", %.3f);\n", entry.getKey(), entry.getValue()));
        }

        return res.toString();
    }

    private String getMechanismsBlock()
    {
        StringBuilder res = new StringBuilder();

        for(LanguageEntity entity : this.parent.getEntities())
        {
            String duration = entity.getProperties().get("duration");
            res.append(String.format("DSLLibrary.INSTANCE.addDSLMechanism(\"%s\", %s, 0);\n", entity.getName(), duration));
        }

        return res.toString();
    }

    private String getMechanismLinksBlock()
    {
        StringBuilder res = new StringBuilder();

        for(LanguageEntity entity : this.parent.getEntities())
        {
            String mechName = entity.getName();
            String varName = mechName.toLowerCase();

            res.append(String.format("DSLLibrary.DSLMechanism %s = DSLLibrary.INSTANCE.getDSLMechanismById(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel(\"%s\"));\n", varName, mechName));
            res.append(String.format("DSLLibrary.INSTANCE.linkMechanismToClass(\"%s\", new %s(%s.getDuration(), %s.getDelay()));\n\n", mechName, mechName, varName, varName));
        }

        return res.toString();
    }

    private String getMechanismsToObjectsBlock()
    {
        Map<String, List<String>> typeToMechanisms = new HashMap<>();

        for(LanguageEntity entity : this.parent.getEntities())
        {
            String mechName = entity.getName();
            String mechType = ((Mechanism) entity).getInputType();

            typeToMechanisms.computeIfAbsent(mechType, (key) -> new ArrayList<>()).add(mechName);
        }

        StringBuilder res = new StringBuilder();
        int typeIndex = 0;
        for(Map.Entry<String, List<String>> entry : typeToMechanisms.entrySet())
        {
            String typeInnerName = String.format("type_%d", typeIndex);

            res.append(String.format("DSLLibrary.DSLObject %s = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel(\"%s\"));\n", typeInnerName, entry.getKey()));

            for(String mechName : entry.getValue())
            {
                res.append(String.format("%s.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel(\"%s\"));\n", typeInnerName, mechName));
            }

            res.append("\n");

            typeIndex += 1;
        }

        return res.toString();
    }

    private String getPathwaysToConditionBlock()
    {
        StringBuilder res = new StringBuilder();

        String moleculeIdBlock = this.getMoleculeIdBlock();

        res.append(moleculeIdBlock);

        List<LanguageEntity> pathways = this.parent.getPathways();

        for(LanguageEntity entity : pathways)
        {
            Pathway pathwayObject = (Pathway) entity;
            Map<String, List<PathwayCondition>> conditionsGrouped = pathwayObject.groupByMechanism();

            for(Map.Entry<String, List<PathwayCondition>> entry : conditionsGrouped.entrySet())
            {
                if(entry.getValue().stream().allMatch(cond -> cond.isAlwaysRun()))
                {
                    res.append(this.generateEternalCondition(entry.getKey()));
                }
                else
                {
                    res.append(this.generateConditionBlock(entry.getKey(), entry.getValue()));
                }
            }
        }

        return res.toString();
    }

    private String generateEternalCondition(String mechName)
    {
        return String.format("DSLLibrary.INSTANCE.setConditionToDSLMechanism(\"%s\", affectedObjects ->\n" +
                "                true\n" +
                "            );", mechName);
    }

    private String generateConditionBlock(String mechName, List<PathwayCondition> conditions)
    {
        String res = getConditionHeader(mechName);

        List<PathwayCondition> nonEmptyConditions = conditions.stream().filter(cond -> !cond.isAlwaysRun()).collect(Collectors.toList());
        List<String> expressionList = new ArrayList<>();

        for(PathwayCondition condition : nonEmptyConditions)
        {
            String moleculeName = condition.getMoleculeName().toLowerCase();
//            String[] boundaryTokens = condition.getBounds().split(";");
//
//            String lowerBound = boundaryTokens[0];
//            String upperBound = boundaryTokens[1];
//
            expressionList.addAll(this.generateExpression(moleculeName, condition));
        }

        res += String.join(" && \n", expressionList);
        res += "});\n";

        return res;
    }

    private List<String> generateExpression(String moleculeName, PathwayCondition condition)
    {
        List<String> expressions = new ArrayList<>();
        String signalExpression = this.getSignalExpression(moleculeName);

        double value = 0.0;
        String expr = "";

        if(!Double.isNaN(value = condition.getBoundary(0)))
        {
            String op = condition.getStrictness(0) ? ">" : ">=";
            expr = String.format("%s %s %.2f", signalExpression, op, value);

            expressions.add(expr);
        }

        if(!Double.isNaN(value = condition.getBoundary(1)))
        {
            String op = condition.getStrictness(1) ? "<" : "<=";
            expr = String.format("%s %s %.2f", signalExpression, op, value);

            expressions.add(expr);
        }

        return expressions;
    }

    private String getSignalExpression(String moleculeName)
    {

        if(moleculeName.contains("grad"))
        {
            String moleculeId = LangUtils.getBetweenParenthesis(moleculeName).get(0) + "Id";
            return String.format("LibraryFunctions.INSTANCE.gradient(\n" +
                    "                    obj1.getSignal(%s),\n" +
                    "                    obj2.getSignal(obj1.getId(), %s),\n" +
                    "                    1\n" +
                    "            );\n", moleculeId, moleculeId);

        }
        else
        {
            String moleculeId = moleculeName + "Id";
            return String.format("obj2.getSignal(%s)", moleculeId);
        }
    }


    private String getConditionHeader(String mechName)
    {
        return String.format("DSLLibrary.INSTANCE.setConditionToDSLMechanism(\"%s\", affectedObjects -> {\n" +
                "            final PhysicalObject obj1 = (PhysicalObject) ((Connection) affectedObjects[0]).getObj1();\n" +
                "            final Space obj2 = (Space) ((Connection) affectedObjects[0]).getObj2();\n", mechName);
    }

    private String getMoleculeIdBlock()
    {
        StringBuilder res = new StringBuilder();

        for(String moleculeName : this.parent.getMoleculeValues().keySet())
        {
            String moleculeId = moleculeName.toLowerCase() + "Id";
            res.append(String.format("final int %s = DSLLibrary.INSTANCE.getMoleculeIdByLabel(\"%s\");\n", moleculeId, moleculeName));
        }

        return res.toString();
    }
}
