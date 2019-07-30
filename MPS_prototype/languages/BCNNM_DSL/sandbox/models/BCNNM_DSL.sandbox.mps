<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6bcb3b44-32e3-46af-b334-30fc5dbf021b(BCNNM_DSL.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL">
      <concept id="6276268823263920725" name="BCNNM_DSL.structure.ConditionWithFormula" flags="ng" index="2aA8HC">
        <property id="6276268823263920726" name="formula" index="2aA8HF" />
      </concept>
      <concept id="6276268823263912137" name="BCNNM_DSL.structure.DivisionPathway" flags="ng" index="2aAeBO" />
      <concept id="6276268823263912136" name="BCNNM_DSL.structure.SpikePathway" flags="ng" index="2aAeBP" />
      <concept id="6276268823263870223" name="BCNNM_DSL.structure.SignalPathway" flags="ng" index="2aArgM">
        <property id="6276268823263912139" name="frequency" index="2aAeBQ" />
        <child id="6276268823263870232" name="conditions" index="2aArg_" />
      </concept>
      <concept id="1835501466345278524" name="BCNNM_DSL.structure.ConditionDistribution" flags="ng" index="3fggVB">
        <property id="1835501466345278527" name="parameters" index="3fggV$" />
        <property id="1835501466345278525" name="distribution" index="3fggVA" />
        <property id="1835501466345322556" name="ligand" index="3fgrFB" />
      </concept>
      <concept id="4049080668885031147" name="BCNNM_DSL.structure.StemCell" flags="ng" index="1JYy61">
        <property id="5376677673907679485" name="divisionTime" index="33_VGA" />
      </concept>
      <concept id="4049080668884986461" name="BCNNM_DSL.structure.Cell" flags="ng" index="1JYPcR">
        <child id="6276268823263910396" name="pathways" index="2aAd31" />
      </concept>
    </language>
  </registry>
  <node concept="1JYy61" id="14ndRyHZ6Dg">
    <property role="33_VGA" value="15" />
    <node concept="2aAeBO" id="28bk3yvd$u7" role="2aAd31">
      <property role="2aAeBQ" value="250" />
      <node concept="2aA8HC" id="28bk3yvdKQM" role="2aArg_">
        <property role="2aA8HF" value="GABA &gt; 0.5 AND TNF-a &lt; 0.6" />
      </node>
    </node>
    <node concept="2aAeBP" id="28bk3yvd$uc" role="2aAd31">
      <property role="2aAeBQ" value="15" />
      <node concept="3fggVB" id="28bk3yvdWSO" role="2aArg_">
        <property role="3fggVA" value="gaussian" />
        <property role="3fggV$" value="0.5, 0.1" />
        <property role="3fgrFB" value="CALI" />
      </node>
    </node>
  </node>
</model>

