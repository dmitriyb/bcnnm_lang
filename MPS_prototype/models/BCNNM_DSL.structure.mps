<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="7" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978164219" name="jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration" flags="ng" index="AxPO7">
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
    <node concept="1TJgyj" id="5spMjRtwhBW" role="1TKVEi">
      <property role="IQ2ns" value="6276268823263910396" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="pathways" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="5spMjRtw7Of" resolve="SignalPathway" />
    </node>
  </node>
  <node concept="1TIwiD" id="3wLemDnMLzF">
    <property role="EcuMT" value="4049080668885031147" />
    <property role="TrG5h" value="StemCell" />
    <property role="34LRSv" value="stemcell" />
    <ref role="1TJDcQ" node="3wLemDnMADt" resolve="Cell" />
  </node>
  <node concept="1TIwiD" id="3wLemDnML_n">
    <property role="EcuMT" value="4049080668885031255" />
    <property role="TrG5h" value="SpikingCell" />
    <property role="34LRSv" value="spikingcell" />
    <ref role="1TJDcQ" node="3wLemDnMADt" resolve="Cell" />
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
  </node>
  <node concept="AxPO7" id="5spMjRtw7Oa">
    <property role="TrG5h" value="ConditionType" />
    <ref role="M4eZT" to="tpck:fKAQMTB" resolve="boolean" />
    <node concept="M4N5e" id="5spMjRtw7Ob" role="M5hS2">
      <property role="1uS6qv" value="false" />
      <property role="1uS6qo" value="Rule" />
    </node>
    <node concept="M4N5e" id="5spMjRtw7Oc" role="M5hS2">
      <property role="1uS6qo" value="Probability" />
      <property role="1uS6qv" value="true" />
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
    <node concept="1TJgyi" id="5spMjRtwk9m" role="1TKVEl">
      <property role="IQ2nx" value="6276268823263920726" />
      <property role="TrG5h" value="formula" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="5spMjRtwmqL" role="1TKVEl">
      <property role="IQ2nx" value="6276268823263930033" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="5spMjRtw7Oa" resolve="ConditionType" />
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
</model>

