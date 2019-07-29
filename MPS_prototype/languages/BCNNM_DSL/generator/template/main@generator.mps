<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:441a19d2-b78d-4259-a204-3330fffa702a(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="1xcl" ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="3wLemDnMADl">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4EtMXI92B2U" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:5spMjRtwi38" resolve="SpikePathway" />
      <ref role="3lhOvi" node="4EtMXI92B2X" resolve="map_SpikePathway" />
    </node>
    <node concept="3lhOvk" id="4EtMXI92B3v" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:3wLemDnMLzF" resolve="StemCell" />
      <ref role="3lhOvi" node="4EtMXI92B3y" resolve="map_StemCell" />
    </node>
    <node concept="3lhOvk" id="4EtMXI92BPs" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
      <ref role="3lhOvi" node="4EtMXI92BPw" resolve="map_ConditionWithFormula" />
    </node>
  </node>
  <node concept="312cEu" id="4EtMXI92B2X">
    <property role="TrG5h" value="map_SpikePathway" />
    <node concept="3Tm1VV" id="4EtMXI92B2Y" role="1B3o_S" />
    <node concept="n94m4" id="4EtMXI92B2Z" role="lGtFl">
      <ref role="n9lRv" to="1xcl:5spMjRtwi38" resolve="SpikePathway" />
    </node>
    <node concept="2tJIrI" id="4EtMXI92B3a" role="jymVt" />
  </node>
  <node concept="2pMbU2" id="4EtMXI92B3y">
    <property role="TrG5h" value="map_StemCell" />
    <node concept="3rIKKV" id="4EtMXI92B3z" role="2pMbU3">
      <node concept="2pNNFK" id="4EtMXI92B3B" role="2pNm8H">
        <property role="2pNNFO" value="cell" />
        <node concept="3o6iSG" id="4EtMXI92B3D" role="3o6s8t" />
        <node concept="2pNNFK" id="4EtMXI92B3S" role="3o6s8t">
          <property role="2pNNFO" value="divisonTime" />
          <node concept="3o6iSG" id="4EtMXI92BHS" role="3o6s8t">
            <property role="3o6i5n" value="${node.divisionTime}" />
          </node>
        </node>
        <node concept="3o6iSG" id="4EtMXI92Ee7" role="3o6s8t" />
      </node>
    </node>
    <node concept="n94m4" id="4EtMXI92B3_" role="lGtFl">
      <ref role="n9lRv" to="1xcl:3wLemDnMLzF" resolve="StemCell" />
    </node>
  </node>
  <node concept="2pMbU2" id="4EtMXI92BPw">
    <property role="TrG5h" value="map_ConditionWithFormula" />
    <node concept="3rIKKV" id="4EtMXI92BPx" role="2pMbU3">
      <node concept="2pNNFK" id="4EtMXI92BP_" role="2pNm8H">
        <property role="2pNNFO" value="condition" />
        <node concept="3o6iSG" id="4EtMXI92BPB" role="3o6s8t" />
        <node concept="2pNNFK" id="4EtMXI92BPK" role="3o6s8t">
          <property role="2pNNFO" value="formula" />
          <node concept="3o6iSG" id="4EtMXI92BPO" role="3o6s8t">
            <property role="3o6i5n" value="$[formula]" />
          </node>
        </node>
        <node concept="3o6iSG" id="4EtMXI92BPG" role="3o6s8t" />
      </node>
    </node>
    <node concept="n94m4" id="4EtMXI92BPz" role="lGtFl">
      <ref role="n9lRv" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
    </node>
  </node>
</model>

