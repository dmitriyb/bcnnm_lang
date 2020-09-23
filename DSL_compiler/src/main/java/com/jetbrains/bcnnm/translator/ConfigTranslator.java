package com.jetbrains.bcnnm.translator;

import com.jetbrains.bcnnm.core.Mechanism;
import com.jetbrains.bcnnm.utils.IndexedHashMap;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class ConfigTranslator {
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

        String res = template.replaceAll("\\{MOLECULES_BLOCK\\}", moleculesBlock)
                             .replaceAll("\\{INTRA_CONCENTRATIONS_BLOCK\\}", concentrationsBlock)
                             .replaceAll("\\{MECHANISMS_BLOCK\\}", mechanismsBlock)
                             .replaceAll("\\{LINKS_BLOCK\\}", linksBlock);

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

    //        DSLLibrary.DSLObject shell = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel("Shell"));
//        shell.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel("P1Diffusion"));
//
//        DSLLibrary.DSLObject cell = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel("Cell"));
//        cell.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel("E1Dynamic"));
//        cell.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel("P1Dynamic"));
//
//        DSLLibrary.DSLObject cellShellConnection = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel("Cell=>Shell"));
//        cellShellConnection.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel("NSCDivision"));
//        cellShellConnection.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel("P1Release"));

    private String addMechanismsBlock()
    {
        StringBuilder res = new StringBuilder();

        Map<String, List<LanguageEntity>> mechsByMapping = this.parent.getEntities().stream().collect(Collectors.groupingBy(entity -> ((Mechanism) entity).getInputType()));

        for(Map.Entry<String, List<LanguageEntity>> entry : mechsByMapping.entrySet())
        {
            String inputType = entry.getKey().replaceAll("=>", "to");
            String varName = inputType + "Object";

            String getObjectLine = String.format("DSLLibrary.DSLObject %s = DSLLibrary.INSTANCE.getDSLObjectByType(DSLLibrary.INSTANCE.getDSLObjectTypeByLabel(\"%s\"));\n", varName, inputType);

            res.append(getObjectLine);

            for(LanguageEntity entity : entry.getValue())
            {
                String mechName = entity.getName();
                String addLine = String.format("%s.addApplicableMechanism(DSLLibrary.INSTANCE.getDSLMechanismIdByLabel(\"%s\"));\n", varName, mechName);

                res.append(addLine);
            }
        }

        return res.toString();
    }

    private String template = "";
    private ProjectHandler parent;
}
