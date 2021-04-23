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

    public ConfigTranslator(ProjectHandler parent) {
        this.parent = parent;
        this.template = LangUtils.readTemplate("/initial_config_template.txt");
    }

    public String translate() {
        final String moleculesBlock = this.getMoleculesBlock();
        final String concentrationsBlock = this.getIntraConcentrationBlock();
        final String mechanismsBlock = this.getMechanismsBlock();
        final String linksBlock = this.getMechanismLinksBlock();
        final String mechToObjectsBlock = this.getMechanismsToObjectsBlock();
        final String pathwaysBlock = this.getPathwaysToConditionBlock();

        return template.replaceAll("\\{MOLECULES_BLOCK\\}", moleculesBlock)
                             .replaceAll("\\{INTRA_CONCENTRATIONS_BLOCK\\}", concentrationsBlock)
                             .replaceAll("\\{MECHANISMS_BLOCK\\}", mechanismsBlock)
                             .replaceAll("\\{LINKS_BLOCK\\}", linksBlock)
                             .replaceAll("\\{MECHANISMS_TO_OBJECTS_BLOCK\\}", mechToObjectsBlock)
                             .replaceAll("\\{PATHWAY_TO_CONDITION_BLOCK\\}", pathwaysBlock);
    }

    private String getMoleculesBlock() {
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.parent.getMoleculeValues();
        final StringBuilder res = new StringBuilder();
        final Map<Integer, String> moleculesReversed = new HashMap<>();
        moleculeValues.keySet().forEach(key -> moleculesReversed.put(moleculeValues.getIndex(key), key));
        moleculesReversed.values().forEach(molecule -> res.append(String.format("DSLLibrary.INSTANCE.addMoleculeType(\"%s\");\n", molecule)));
        return res.toString();
    }

    private String getIntraConcentrationBlock() {
        final IndexedHashMap<String, Double> moleculeValues = (IndexedHashMap<String, Double>) this.parent.getMoleculeValues();
        final StringBuilder res = new StringBuilder();
        moleculeValues.forEach((key, value) ->
                res.append(String.format("DSLLibrary.INSTANCE.addMoleculeConcentrationToObjectType(\"Cell\", \"%s\", %.3f);\n", key, value)));
        return res.toString();
    }

    private String getMechanismsBlock() {
        final StringBuilder res = new StringBuilder();
        parent.getEntities().forEach(languageEntity -> {
            res.append(String.format("DSLLibrary.INSTANCE.addDSLMechanism(\"%s\");\n", languageEntity.getName()));
        });
        return res.toString();
    }

    private String getMechanismLinksBlock() {
        final StringBuilder res = new StringBuilder();
        parent.getEntities().forEach(languageEntity -> {
            final String mechName = languageEntity.getName();
            res.append(String.format("DSLLibrary.INSTANCE.linkMechanismToClass(\"%s\", new %s());\n\n", mechName, mechName));
        });
        return res.toString();
    }

    private String getMechanismsToObjectsBlock() {
        final Map<String, List<String>> typeToMechanisms = new HashMap<>();
        parent.getEntities().forEach(languageEntity -> {
            String mechName = languageEntity.getName();
            String mechType = ((Mechanism) languageEntity).getInputType();
            typeToMechanisms.computeIfAbsent(mechType, (key) -> new ArrayList<>()).add(mechName);
        });

        final StringBuilder res = new StringBuilder();
        final List<String> indexedKeys = new ArrayList<>(typeToMechanisms.keySet());
        typeToMechanisms.forEach((key, value) -> {
            final String typeInnerName = String.format("type_%d", indexedKeys.indexOf(key));
            final String line = String.format("DSLLibrary.DSLObject %s = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel(\"%s\"));\n", typeInnerName, key);
            res.append(line);
            value.forEach(mechanismName -> res.append(String.format("%s.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel(\"%s\"));\n", typeInnerName, mechanismName)));
            res.append("\n");
        });

        return res.toString();
    }

    private String getPathwaysToConditionBlock() {
        final StringBuilder res = new StringBuilder();
        final String moleculeIdBlock = this.getMoleculeIdBlock();

        res.append(moleculeIdBlock);
        parent.getPathways().forEach(languageEntity -> {
            final Pathway pathwayObject = (Pathway) languageEntity;
            final Map<String, List<PathwayCondition>> conditionsGrouped = pathwayObject.groupByMechanism();

            conditionsGrouped.forEach((key, value) -> {
                if (value.stream().allMatch(PathwayCondition::isAlwaysRun)) {
                    res.append(generateEternalCondition(key));
                } else {
                    res.append(generateConditionBlock(key, value));
                }
            });
        });

        return res.toString();
    }

    private String generateEternalCondition(final String mechName) {
        return String.format("DSLLibrary.INSTANCE.setConditionToDSLMechanism(\"%s\", affectedObjects ->\n" +
                "                true\n" +
                "            );", mechName);
    }

    private String generateConditionBlock(final String mechName, final List<PathwayCondition> conditions) {
        final List<PathwayCondition> nonEmptyConditions = conditions.stream().filter(cond -> !cond.isAlwaysRun()).collect(Collectors.toList());
        final List<String> expressionList = new ArrayList<>();

        nonEmptyConditions.forEach(condition -> {
            String moleculeName = condition.getMoleculeName().toLowerCase();
            expressionList.addAll(this.generateExpression(moleculeName, condition));
        });

        final String expression = String.join(" && ", expressionList);
        String res = getConditionHeader(mechName, expression);

        return res;
    }

    private List<String> generateExpression(final String moleculeName, final PathwayCondition condition) {
        final List<String> expressions = new ArrayList<>();
        final String signalExpression = this.getSignalExpression(moleculeName);

        double value = 0.0;
        String expr = "";

        if (!Double.isNaN(value = condition.getBoundary(0))) {
            final String op = condition.getStrictness(0) ? ">" : ">=";
            expr = String.format("%s %s %.2f", signalExpression, op, value);

            expressions.add(expr);
        }

        if (!Double.isNaN(value = condition.getBoundary(1))) {
            String op = condition.getStrictness(1) ? "<" : "<=";
            expr = String.format("%s %s %.2f", signalExpression, op, value);

            expressions.add(expr);
        }

        return expressions;
    }

    private String getSignalExpression(final String moleculeName) {
        if (moleculeName.contains("grad")) {
            final String moleculeId = LangUtils.getBetweenParenthesis(moleculeName).get(0) + "Id";
            return String.format("LibraryFunctions.INSTANCE.gradient(\n" +
                    "                    obj1.getSignal(%s),\n" +
                    "                    obj2.getSignal(obj1.getId(), %s),\n" +
                    "                    1\n" +
                    "            );\n", moleculeId, moleculeId);

        } else {
            final String moleculeId = moleculeName + "Id";
            return String.format("obj1.getSignal(%s)", moleculeId);
        }
    }


    private String getConditionHeader(final String mechName, final String expression) {
        return String.format("DSLLibrary.INSTANCE.setConditionToDSLMechanism(\"%s\", affectedObjects -> {\n" +
                "            final PhysicalObject obj1 = (PhysicalObject) affectedObjects[0];\n" +
                "            return %s;\n" +
                "            });\n", mechName, expression);
    }

    private String getMoleculeIdBlock() {
        final StringBuilder res = new StringBuilder();
        parent.getMoleculeValues().keySet().forEach(key -> {
            final String moleculeId = key.toLowerCase() + "Id";
            res.append(String.format("final int %s = DSLLibrary.INSTANCE.getMoleculeIdByLabel(\"%s\");\n", moleculeId, key));
        });
        return res.toString();
    }
}
