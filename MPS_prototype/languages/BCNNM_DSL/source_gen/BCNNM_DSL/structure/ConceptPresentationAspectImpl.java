package BCNNM_DSL.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_ApoptosisPathway;
  private ConceptPresentation props_Cell;
  private ConceptPresentation props_CheckGradientCondigion;
  private ConceptPresentation props_CheckSignalCondition;
  private ConceptPresentation props_Condition;
  private ConceptPresentation props_ConditionDistribution;
  private ConceptPresentation props_ConditionReducer;
  private ConceptPresentation props_ConditionWithFormula;
  private ConceptPresentation props_DivisionPathway;
  private ConceptPresentation props_DynamicMechanism;
  private ConceptPresentation props_ModelMechanism;
  private ConceptPresentation props_Molecule;
  private ConceptPresentation props_MoleculeDefinition;
  private ConceptPresentation props_MoleculeDefinitionReference;
  private ConceptPresentation props_MoleculeReference;
  private ConceptPresentation props_NamedConstant;
  private ConceptPresentation props_NamedConstantReference;
  private ConceptPresentation props_SignalPathway;
  private ConceptPresentation props_Space;
  private ConceptPresentation props_SpikePathway;
  private ConceptPresentation props_Stage;
  private ConceptPresentation props_StemCell;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.ApoptosisPathway:
        if (props_ApoptosisPathway == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ApoptosisPathway");
          props_ApoptosisPathway = cpb.create();
        }
        return props_ApoptosisPathway;
      case LanguageConceptSwitch.Cell:
        if (props_Cell == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Cell = cpb.create();
        }
        return props_Cell;
      case LanguageConceptSwitch.CheckGradientCondigion:
        if (props_CheckGradientCondigion == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CheckGradientCondigion = cpb.create();
        }
        return props_CheckGradientCondigion;
      case LanguageConceptSwitch.CheckSignalCondition:
        if (props_CheckSignalCondition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_CheckSignalCondition = cpb.create();
        }
        return props_CheckSignalCondition;
      case LanguageConceptSwitch.Condition:
        if (props_Condition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_Condition = cpb.create();
        }
        return props_Condition;
      case LanguageConceptSwitch.ConditionDistribution:
        if (props_ConditionDistribution == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ConditionDistribution = cpb.create();
        }
        return props_ConditionDistribution;
      case LanguageConceptSwitch.ConditionReducer:
        if (props_ConditionReducer == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ConditionReducer = cpb.create();
        }
        return props_ConditionReducer;
      case LanguageConceptSwitch.ConditionWithFormula:
        if (props_ConditionWithFormula == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ConditionWithFormula = cpb.create();
        }
        return props_ConditionWithFormula;
      case LanguageConceptSwitch.DivisionPathway:
        if (props_DivisionPathway == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("DivisionPathway");
          props_DivisionPathway = cpb.create();
        }
        return props_DivisionPathway;
      case LanguageConceptSwitch.DynamicMechanism:
        if (props_DynamicMechanism == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_DynamicMechanism = cpb.create();
        }
        return props_DynamicMechanism;
      case LanguageConceptSwitch.ModelMechanism:
        if (props_ModelMechanism == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_ModelMechanism = cpb.create();
        }
        return props_ModelMechanism;
      case LanguageConceptSwitch.Molecule:
        if (props_Molecule == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Molecule = cpb.create();
        }
        return props_Molecule;
      case LanguageConceptSwitch.MoleculeDefinition:
        if (props_MoleculeDefinition == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_MoleculeDefinition = cpb.create();
        }
        return props_MoleculeDefinition;
      case LanguageConceptSwitch.MoleculeDefinitionReference:
        if (props_MoleculeDefinitionReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x9edcd71856d444c5L, 0xae868ea31c5d7fbbL, 0x6101bf7b1aa274b9L, 0x6101bf7b1aa274c1L, "definition", "", "");
          props_MoleculeDefinitionReference = cpb.create();
        }
        return props_MoleculeDefinitionReference;
      case LanguageConceptSwitch.MoleculeReference:
        if (props_MoleculeReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x9edcd71856d444c5L, 0xae868ea31c5d7fbbL, 0x46c97db93e84318eL, 0x46c97db93e843192L, "molecule", "", "");
          props_MoleculeReference = cpb.create();
        }
        return props_MoleculeReference;
      case LanguageConceptSwitch.NamedConstant:
        if (props_NamedConstant == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_NamedConstant = cpb.create();
        }
        return props_NamedConstant;
      case LanguageConceptSwitch.NamedConstantReference:
        if (props_NamedConstantReference == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByReference(0x9edcd71856d444c5L, 0xae868ea31c5d7fbbL, 0x46c97db93e859c65L, 0x46c97db93e859c66L, "ref", "", "");
          props_NamedConstantReference = cpb.create();
        }
        return props_NamedConstantReference;
      case LanguageConceptSwitch.SignalPathway:
        if (props_SignalPathway == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          props_SignalPathway = cpb.create();
        }
        return props_SignalPathway;
      case LanguageConceptSwitch.Space:
        if (props_Space == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Space = cpb.create();
        }
        return props_Space;
      case LanguageConceptSwitch.SpikePathway:
        if (props_SpikePathway == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("SpikePathway");
          props_SpikePathway = cpb.create();
        }
        return props_SpikePathway;
      case LanguageConceptSwitch.Stage:
        if (props_Stage == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Stage");
          props_Stage = cpb.create();
        }
        return props_Stage;
      case LanguageConceptSwitch.StemCell:
        if (props_StemCell == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_StemCell = cpb.create();
        }
        return props_StemCell;
    }
    return null;
  }
}
