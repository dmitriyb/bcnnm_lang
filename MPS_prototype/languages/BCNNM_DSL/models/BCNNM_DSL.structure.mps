<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="a4829704-6b1b-4b3f-8122-a4a2e6ac90ff" name="org.mar9000.mps.ecmascript" version="0" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="rh3e" ref="r:33c6cc84-4a64-455a-8222-df658e689ef1(org.mar9000.mps.ecmascript.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
        <property id="1212080844762" name="hasNoDefaultMember" index="PDuV0" />
        <reference id="1083171729157" name="memberDataType" index="M4eZT" />
        <child id="1083172003582" name="member" index="M5hS2" />
      </concept>
      <concept id="1083171877298" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ig" index="M4N5e">
        <property id="1083923523172" name="externalValue" index="1uS6qo" />
        <property id="1083923523171" name="internalValue" index="1uS6qv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3wLemDnMADt">
    <property role="EcuMT" value="4049080668884986461" />
    <property role="TrG5h" value="Cell" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4qEMtjOi6IH" role="1TKVEi">
      <property role="IQ2ns" value="5092104245164403629" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="constants" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4qEMtjOi3C3" resolve="NamedConstant" />
    </node>
    <node concept="1TJgyj" id="4qEMtjOicey" role="1TKVEi">
      <property role="IQ2ns" value="5092104245164426146" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="moleculeTypes" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4qEMtjOhV33" resolve="MoleculeDefinition" />
    </node>
    <node concept="1TJgyj" id="4qEMtjOi7wQ" role="1TKVEi">
      <property role="IQ2ns" value="5092104245164406838" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="molecules" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4qEMtjOiaD6" resolve="Molecule" />
    </node>
    <node concept="1TJgyj" id="4r9vr$YwVIE" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545039786" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conditions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5spMjRtwk9l" resolve="ConditionWithFormula" />
    </node>
    <node concept="1TJgyj" id="4r9vr$Yxdo4" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545112068" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="mechanisms" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4r9vr$Yxbs7" resolve="DynamicMechanism" />
    </node>
    <node concept="PrWs8" id="4ZN49nym32r" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="3wLemDnMLzF">
    <property role="EcuMT" value="4049080668885031147" />
    <property role="TrG5h" value="StemCell" />
    <property role="34LRSv" value="stemcell" />
    <ref role="1TJDcQ" node="3wLemDnMADt" resolve="Cell" />
    <node concept="1TJgyi" id="4EtMXI92B3X" role="1TKVEl">
      <property role="IQ2nx" value="5376677673907679485" />
      <property role="TrG5h" value="divisionTime" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3wLemDnML_v">
    <property role="EcuMT" value="4049080668885031263" />
    <property role="TrG5h" value="Space" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="3wLemDnML_w" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="3wLemDnML_$" role="1TKVEi">
      <property role="IQ2ns" value="4049080668885031268" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="cells" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="3wLemDnMADt" resolve="Cell" />
    </node>
    <node concept="1TJgyj" id="4r9vr$YwLiH" role="1TKVEi">
      <property role="IQ2ns" value="5100746287544997037" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="modelMechanisms" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="4r9vr$YwLiw" resolve="ModelMechanism" />
    </node>
  </node>
  <node concept="AxPO7" id="5spMjRtw7Oa">
    <property role="TrG5h" value="ConditionType" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="5spMjRtw7Ob" role="M5hS2">
      <property role="1uS6qo" value="Rule" />
      <property role="1uS6qv" value="rule" />
    </node>
    <node concept="M4N5e" id="5spMjRtw7Oc" role="M5hS2">
      <property role="1uS6qo" value="Probability" />
      <property role="1uS6qv" value="probability" />
    </node>
    <node concept="M4N5e" id="28bk3yvdZY6" role="M5hS2">
      <property role="1uS6qo" value="Distribution" />
      <property role="1uS6qv" value="distribution" />
    </node>
  </node>
  <node concept="1TIwiD" id="5spMjRtw7Of">
    <property role="EcuMT" value="6276268823263870223" />
    <property role="TrG5h" value="SignalPathway" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="5spMjRtw7Oo" role="1TKVEi">
      <property role="IQ2ns" value="6276268823263870232" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conditions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5spMjRtw7Og" resolve="Condition" />
    </node>
    <node concept="1TJgyi" id="5spMjRtwi3b" role="1TKVEl">
      <property role="IQ2nx" value="6276268823263912139" />
      <property role="TrG5h" value="frequency" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="5spMjRtw7Og">
    <property role="EcuMT" value="6276268823263870224" />
    <property role="TrG5h" value="Condition" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="28bk3yvdY9q" role="1TKVEl">
      <property role="IQ2nx" value="2453142626152997466" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="5spMjRtw7Oa" resolve="ConditionType" />
    </node>
    <node concept="PrWs8" id="4r9vr$YwOU5" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="5spMjRtw7Oq">
    <property role="EcuMT" value="6276268823263870234" />
    <property role="TrG5h" value="ConditionReducer" />
    <ref role="1TJDcQ" node="5spMjRtw7Og" resolve="Condition" />
    <node concept="1TJgyi" id="5spMjRtw7Or" role="1TKVEl">
      <property role="IQ2nx" value="6276268823263870235" />
      <property role="TrG5h" value="reduceRule" />
      <ref role="AX2Wp" node="5spMjRtw7Ot" resolve="ReduceType" />
    </node>
    <node concept="1TJgyj" id="5spMjRtw7Oy" role="1TKVEi">
      <property role="IQ2ns" value="6276268823263870242" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="conditions" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5spMjRtw7Og" resolve="Condition" />
    </node>
  </node>
  <node concept="AxPO7" id="5spMjRtw7Ot">
    <property role="TrG5h" value="ReduceType" />
    <ref role="M4eZT" to="tpck:fKAQMTA" resolve="integer" />
    <node concept="M4N5e" id="5spMjRtw7Ou" role="M5hS2">
      <property role="1uS6qo" value="LogicalOr" />
      <property role="1uS6qv" value="1" />
    </node>
    <node concept="M4N5e" id="5spMjRtw7Ov" role="M5hS2">
      <property role="1uS6qo" value="LogicalAnd" />
      <property role="1uS6qv" value="2" />
    </node>
  </node>
  <node concept="1TIwiD" id="5spMjRtwi38">
    <property role="EcuMT" value="6276268823263912136" />
    <property role="TrG5h" value="SpikePathway" />
    <ref role="1TJDcQ" node="5spMjRtw7Of" resolve="SignalPathway" />
  </node>
  <node concept="1TIwiD" id="5spMjRtwi39">
    <property role="EcuMT" value="6276268823263912137" />
    <property role="TrG5h" value="DivisionPathway" />
    <ref role="1TJDcQ" node="5spMjRtw7Of" resolve="SignalPathway" />
  </node>
  <node concept="1TIwiD" id="5spMjRtwi3a">
    <property role="EcuMT" value="6276268823263912138" />
    <property role="TrG5h" value="ApoptosisPathway" />
    <ref role="1TJDcQ" node="5spMjRtw7Of" resolve="SignalPathway" />
  </node>
  <node concept="1TIwiD" id="5spMjRtwiwm">
    <property role="EcuMT" value="6276268823263914006" />
    <property role="TrG5h" value="CheckSignalCondition" />
    <ref role="1TJDcQ" node="5spMjRtwk9l" resolve="ConditionWithFormula" />
  </node>
  <node concept="1TIwiD" id="5spMjRtwiwn">
    <property role="EcuMT" value="6276268823263914007" />
    <property role="TrG5h" value="CheckGradientCondigion" />
    <ref role="1TJDcQ" node="5spMjRtwk9l" resolve="ConditionWithFormula" />
  </node>
  <node concept="1TIwiD" id="5spMjRtwk9l">
    <property role="EcuMT" value="6276268823263920725" />
    <property role="TrG5h" value="ConditionWithFormula" />
    <ref role="1TJDcQ" node="5spMjRtw7Og" resolve="Condition" />
    <node concept="1TJgyj" id="4r9vr$YwO1m" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545008214" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="formula" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="1_T0HJme0KW">
    <property role="EcuMT" value="1835501466345278524" />
    <property role="TrG5h" value="ConditionDistribution" />
    <ref role="1TJDcQ" node="5spMjRtw7Og" resolve="Condition" />
    <node concept="1TJgyi" id="1_T0HJme0KX" role="1TKVEl">
      <property role="IQ2nx" value="1835501466345278525" />
      <property role="TrG5h" value="distribution" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1_T0HJme0KZ" role="1TKVEl">
      <property role="IQ2nx" value="1835501466345278527" />
      <property role="TrG5h" value="parameters" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="1_T0HJmebwW" role="1TKVEl">
      <property role="IQ2nx" value="1835501466345322556" />
      <property role="TrG5h" value="ligand" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qEMtjOhV2X">
    <property role="EcuMT" value="5092104245164355773" />
    <property role="TrG5h" value="Stage" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4qEMtjOhV2Y" role="1TKVEl">
      <property role="IQ2nx" value="5092104245164355774" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4qEMtjOhV30" role="1TKVEl">
      <property role="IQ2nx" value="5092104245164355776" />
      <property role="TrG5h" value="duration" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qEMtjOhV33">
    <property role="EcuMT" value="5092104245164355779" />
    <property role="TrG5h" value="MoleculeDefinition" />
    <property role="34LRSv" value="molecule reference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4qEMtjOhV34" role="1TKVEl">
      <property role="IQ2nx" value="5092104245164355780" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="4qEMtjOhV39" resolve="MoleculeType" />
    </node>
    <node concept="1TJgyi" id="4qEMtjOhV36" role="1TKVEl">
      <property role="IQ2nx" value="5092104245164355782" />
      <property role="TrG5h" value="radius" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="641JRGqCBiU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="AxPO7" id="4qEMtjOhV39">
    <property role="TrG5h" value="MoleculeType" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="4qEMtjOhV3a" role="M5hS2">
      <property role="1uS6qo" value="cyclin" />
      <property role="1uS6qv" value="cyclin" />
    </node>
    <node concept="M4N5e" id="4qEMtjOhV3b" role="M5hS2">
      <property role="1uS6qo" value="phosphatase" />
      <property role="1uS6qv" value="phosphatase" />
    </node>
    <node concept="M4N5e" id="4qEMtjOhV3e" role="M5hS2">
      <property role="1uS6qo" value="kinase" />
      <property role="1uS6qv" value="kinase" />
    </node>
    <node concept="M4N5e" id="4qEMtjOhV3i" role="M5hS2">
      <property role="1uS6qo" value="protease" />
      <property role="1uS6qv" value="protease" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qEMtjOi3C3">
    <property role="EcuMT" value="5092104245164390915" />
    <property role="TrG5h" value="NamedConstant" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="641JRGqD80b" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="4r9vr$YwkKs" role="1TKVEi">
      <property role="IQ2ns" value="5100746287544880156" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="4qEMtjOiaD6">
    <property role="EcuMT" value="5092104245164419654" />
    <property role="TrG5h" value="Molecule" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="641JRGqCInu" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="641JRGqD3IS" role="1TKVEi">
      <property role="IQ2ns" value="6990078632104573880" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="defintion" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qEMtjOhV33" resolve="MoleculeDefinition" />
    </node>
    <node concept="1TJgyj" id="4r9vr$YwWC_" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545043493" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="concentration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="641JRGqCBiT">
    <property role="EcuMT" value="6990078632104457401" />
    <property role="TrG5h" value="MoleculeDefinitionReference" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="641JRGqCBj1" role="1TKVEi">
      <property role="IQ2ns" value="6990078632104457409" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="definition" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qEMtjOhV33" resolve="MoleculeDefinition" />
    </node>
  </node>
  <node concept="1TIwiD" id="4r9vr$YwLiw">
    <property role="EcuMT" value="5100746287544997024" />
    <property role="TrG5h" value="ModelMechanism" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4r9vr$YwLix" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4r9vr$Yx36e">
    <property role="EcuMT" value="5100746287545069966" />
    <property role="TrG5h" value="MoleculeReference" />
    <ref role="1TJDcQ" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    <node concept="1TJgyj" id="4r9vr$Yx36i" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545069970" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="molecule" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qEMtjOiaD6" resolve="Molecule" />
    </node>
  </node>
  <node concept="1TIwiD" id="4r9vr$Yxbs7">
    <property role="EcuMT" value="5100746287545104135" />
    <property role="TrG5h" value="DynamicMechanism" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="4r9vr$Yxep_" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545116261" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="baseMechanism" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4r9vr$YwLiw" resolve="ModelMechanism" />
    </node>
    <node concept="PrWs8" id="4r9vr$Yxbs8" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="4r9vr$Yxbsa" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545104138" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="parameters" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qEMtjOiaD6" resolve="Molecule" />
    </node>
    <node concept="1TJgyi" id="4r9vr$Yxbsc" role="1TKVEl">
      <property role="IQ2nx" value="5100746287545104140" />
      <property role="TrG5h" value="duration" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="4r9vr$YxenM" role="1TKVEl">
      <property role="IQ2nx" value="5100746287545116146" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="4r9vr$YxenR" resolve="MechanismType" />
    </node>
    <node concept="1TJgyj" id="4r9vr$Yxbse" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545104142" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="formula" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    </node>
  </node>
  <node concept="AxPO7" id="4r9vr$YxenR">
    <property role="TrG5h" value="MechanismType" />
    <property role="PDuV0" value="true" />
    <ref role="M4eZT" to="tpck:fKAOsGN" resolve="string" />
    <node concept="M4N5e" id="4r9vr$YxenS" role="M5hS2">
      <property role="1uS6qo" value="cyclic" />
      <property role="1uS6qv" value="cyclic" />
    </node>
  </node>
  <node concept="1TIwiD" id="4r9vr$YxpL_">
    <property role="EcuMT" value="5100746287545162853" />
    <property role="TrG5h" value="NamedConstantReference" />
    <ref role="1TJDcQ" to="rh3e:7rFtnRVF22p" resolve="JSExpression" />
    <node concept="1TJgyj" id="4r9vr$YxpLA" role="1TKVEi">
      <property role="IQ2ns" value="5100746287545162854" />
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="ref" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="4qEMtjOi3C3" resolve="NamedConstant" />
    </node>
  </node>
</model>

