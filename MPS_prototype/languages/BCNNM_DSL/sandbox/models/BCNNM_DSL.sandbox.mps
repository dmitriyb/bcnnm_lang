<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6bcb3b44-32e3-46af-b334-30fc5dbf021b(BCNNM_DSL.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL">
      <concept id="6276268823263920725" name="BCNNM_DSL.structure.ConditionWithFormula" flags="ng" index="2aA8HC">
        <property id="6276268823263920726" name="formula" index="2aA8HF" />
      </concept>
      <concept id="6276268823263914006" name="BCNNM_DSL.structure.CheckSignalCondition" flags="ng" index="2aAe4F" />
      <concept id="6276268823263912137" name="BCNNM_DSL.structure.DivisionPathway" flags="ng" index="2aAeBO" />
      <concept id="6276268823263912138" name="BCNNM_DSL.structure.ApoptosisPathway" flags="ng" index="2aAeBR" />
      <concept id="6276268823263870234" name="BCNNM_DSL.structure.ConditionReducer" flags="ng" index="2aArgB">
        <property id="6276268823263870235" name="reduceRule" index="2aArgA" />
        <child id="6276268823263870242" name="conditions" index="2aArgv" />
      </concept>
      <concept id="6276268823263870223" name="BCNNM_DSL.structure.SignalPathway" flags="ng" index="2aArgM">
        <property id="6276268823263912139" name="frequency" index="2aAeBQ" />
        <child id="6276268823263870232" name="conditions" index="2aArg_" />
      </concept>
      <concept id="1835501466345278524" name="BCNNM_DSL.structure.ConditionDistribution" flags="ng" index="3fggVB">
        <property id="1835501466345278527" name="parameters" index="3fggV$" />
        <property id="1835501466345278525" name="distribution" index="3fggVA" />
        <property id="1835501466345322556" name="ligand" index="3fgrFB" />
      </concept>
      <concept id="4049080668885031263" name="BCNNM_DSL.structure.Space" flags="ng" index="1JYy0P">
        <child id="4049080668885031268" name="cells" index="1JYy0e" />
      </concept>
      <concept id="4049080668885031255" name="BCNNM_DSL.structure.SpikingCell" flags="ng" index="1JYy0X" />
      <concept id="4049080668885031147" name="BCNNM_DSL.structure.StemCell" flags="ng" index="1JYy61" />
      <concept id="4049080668884986461" name="BCNNM_DSL.structure.Cell" flags="ng" index="1JYPcR">
        <child id="6276268823263910396" name="pathways" index="2aAd31" />
      </concept>
    </language>
  </registry>
  <node concept="1JYy0P" id="3wLemDnMLMb">
    <property role="TrG5h" value="TestSpace" />
    <node concept="1JYy61" id="5spMjRtwivM" role="1JYy0e">
      <node concept="2aAeBO" id="5spMjRtwivP" role="2aAd31">
        <property role="2aAeBQ" value="100" />
        <node concept="2aArgB" id="5spMjRtwjAO" role="2aArg_">
          <property role="2aArgA" value="2" />
          <node concept="2aAe4F" id="5spMjRtwlQw" role="2aArgv">
            <property role="2aA8HF" value="gaba &gt; 0.75" />
          </node>
          <node concept="2aAe4F" id="5spMjRtwmqH" role="2aArgv">
            <property role="2aA8HF" value="SER &lt; 0.1" />
          </node>
        </node>
      </node>
      <node concept="2aAeBR" id="5spMjRtwnyr" role="2aAd31">
        <property role="2aAeBQ" value="250" />
        <node concept="2aAe4F" id="5spMjRtwny$" role="2aArg_">
          <property role="2aA8HF" value="GABA &lt; 0.1 OR TNFA &gt; 0.75" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1JYy0P" id="1_T0HJme0KT">
    <property role="TrG5h" value="ComplexRules" />
    <node concept="1JYy0X" id="1_T0HJme9b2" role="1JYy0e">
      <node concept="2aAeBO" id="1_T0HJme9b4" role="2aAd31">
        <property role="2aAeBQ" value="250" />
        <node concept="2aArgB" id="1_T0HJme9KJ" role="2aArg_">
          <property role="2aArgA" value="1" />
          <node concept="2aArgB" id="1_T0HJmebvu" role="2aArgv">
            <property role="2aArgA" value="1" />
            <node concept="2aA8HC" id="1_T0HJmebvw" role="2aArgv">
              <property role="2aA8HF" value="GABA &lt; 0.1" />
            </node>
            <node concept="2aArgB" id="1_T0HJmebv_" role="2aArgv">
              <property role="2aArgA" value="2" />
              <node concept="2aArgB" id="1_T0HJmebwd" role="2aArgv">
                <property role="2aArgA" value="2" />
                <node concept="2aA8HC" id="1_T0HJmebwm" role="2aArgv">
                  <property role="2aA8HF" value="GABA &lt;= 0.2" />
                </node>
                <node concept="2aA8HC" id="1_T0HJmebwh" role="2aArgv">
                  <property role="2aA8HF" value="GABA &gt; 0.15" />
                </node>
              </node>
              <node concept="2aA8HC" id="1_T0HJmebvI" role="2aArgv">
                <property role="2aA8HF" value="SER &lt; 0.2" />
              </node>
            </node>
            <node concept="2aA8HC" id="1_T0HJmebvS" role="2aArgv">
              <property role="2aA8HF" value="(-0.2*GABA) &lt; 0.5 " />
            </node>
          </node>
          <node concept="2aArgB" id="1_T0HJmebw$" role="2aArgv">
            <property role="2aArgA" value="2" />
            <node concept="2aArgB" id="1_T0HJmebwL" role="2aArgv">
              <property role="2aArgA" value="2" />
              <node concept="2aA8HC" id="1_T0HJmebwS" role="2aArgv">
                <property role="2aA8HF" value="GABA &lt; 0.5" />
              </node>
              <node concept="3fggVB" id="1_T0HJmebwN" role="2aArgv">
                <property role="3fggVA" value="gaussian" />
                <property role="3fggV$" value="0.5, 0.25" />
                <property role="3fgrFB" value="GABA" />
              </node>
            </node>
            <node concept="2aArgB" id="1_T0HJmec70" role="2aArgv">
              <node concept="2aA8HC" id="1_T0HJmec7b" role="2aArgv">
                <property role="2aA8HF" value="SQRT(SER)/EXP(SER) &lt; 0.3 " />
              </node>
              <node concept="3fggVB" id="1_T0HJmec76" role="2aArgv">
                <property role="3fggVA" value="gaussian" />
                <property role="3fggV$" value="0.6, 0.2" />
                <property role="3fgrFB" value="SER" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1JYy0X" id="1_T0HJmec87" role="1JYy0e">
      <node concept="2aAeBO" id="1_T0HJmec8s" role="2aAd31">
        <property role="2aAeBQ" value="250" />
        <node concept="2aArgB" id="1_T0HJmec8u" role="2aArg_">
          <node concept="2aA8HC" id="1_T0HJmec8w" role="2aArgv">
            <property role="2aA8HF" value="GABA &lt; 0.1 OR ((GABA &lt;= 0.2 AND GABA &gt; 0.15) AND SER &lt; 0.2) OR ( -0.2*GABA &lt; 0.5)" />
          </node>
          <node concept="2aA8HC" id="1_T0HJmec8P" role="2aArgv">
            <property role="2aA8HF" value="(GABA &lt; 0.5 AND gaussian(GABA, [0.5, 0.25])) AND (SQRT(SER)/EXP(SER) &lt; 0.3 OR gaussian(SER,[0.6, 0.2])" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

