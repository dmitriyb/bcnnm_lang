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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG">
        <property id="1622293396948953704" name="value" index="3o6i5n" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="bUwia" id="3wLemDnMADl">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="28bk3yvdy$u" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:5spMjRtwi39" resolve="DivisionPathway" />
      <node concept="j$656" id="28bk3yvdy$$" role="1lVwrX">
        <ref role="v9R2y" node="28bk3yvdy$y" resolve="reduce_DivisionPathway" />
      </node>
    </node>
    <node concept="3aamgX" id="28bk3yvdEQj" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:5spMjRtwi38" resolve="SpikePathway" />
      <node concept="j$656" id="28bk3yvdEQr" role="1lVwrX">
        <ref role="v9R2y" node="28bk3yvdEQp" resolve="reduce_SpikePathway" />
      </node>
    </node>
    <node concept="3aamgX" id="28bk3yvdKQO" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
      <node concept="j$656" id="28bk3yvdKQY" role="1lVwrX">
        <ref role="v9R2y" node="28bk3yvdKQW" resolve="reduce_ConditionWithFormula" />
      </node>
    </node>
    <node concept="3aamgX" id="28bk3yvdWSQ" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:1_T0HJme0KW" resolve="ConditionDistribution" />
      <node concept="j$656" id="28bk3yvdWT2" role="1lVwrX">
        <ref role="v9R2y" node="28bk3yvdWT0" resolve="reduce_ConditionDistribution" />
      </node>
    </node>
    <node concept="3lhOvk" id="28bk3yvcMKF" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:3wLemDnMLzF" resolve="StemCell" />
      <ref role="3lhOvi" node="28bk3yvcMKL" resolve="map_StemCell" />
    </node>
  </node>
  <node concept="2pMbU2" id="28bk3yvcMKL">
    <property role="TrG5h" value="map_StemCell" />
    <node concept="3rIKKV" id="28bk3yvcMKM" role="2pMbU3">
      <node concept="2pNNFK" id="28bk3yvcMKQ" role="2pNm8H">
        <property role="2pNNFO" value="cell" />
        <node concept="2pNNFK" id="28bk3yvdsjO" role="3o6s8t">
          <property role="2pNNFO" value="celltype" />
          <node concept="3o6iSG" id="28bk3yvdsJf" role="3o6s8t">
            <property role="3o6i5n" value="StemCell" />
          </node>
        </node>
        <node concept="2pNNFK" id="28bk3yvcUwL" role="3o6s8t">
          <property role="2pNNFO" value="property" />
          <node concept="2pNUuL" id="28bk3yveapr" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="28bk3yveaps" role="2pMdts">
              <property role="2pMdty" value="divisionTime" />
            </node>
          </node>
          <node concept="3o6iSG" id="28bk3yvcU$z" role="3o6s8t">
            <property role="3o6i5n" value="map_divisionTime" />
            <node concept="17Uvod" id="28bk3yvcU$D" role="lGtFl">
              <property role="2qtEX9" value="value" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
              <node concept="3zFVjK" id="28bk3yvcU$E" role="3zH0cK">
                <node concept="3clFbS" id="28bk3yvcU$F" role="2VODD2">
                  <node concept="3clFbF" id="28bk3yvd5g7" role="3cqZAp">
                    <node concept="3cpWs3" id="28bk3yvd7eB" role="3clFbG">
                      <node concept="2OqwBi" id="28bk3yvd60Q" role="3uHU7B">
                        <node concept="30H73N" id="28bk3yvd5MY" role="2Oq$k0" />
                        <node concept="3TrcHB" id="28bk3yvd6oq" role="2OqNvi">
                          <ref role="3TsBF5" to="1xcl:4EtMXI92B3X" resolve="divisionTime" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="28bk3yvd8q2" role="3uHU7w">
                        <property role="Xl_RC" value="" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3o6iSG" id="28bk3yvdwbm" role="3o6s8t" />
        <node concept="2pNNFK" id="28bk3yvdwB1" role="3o6s8t">
          <property role="2pNNFO" value="pathway" />
          <node concept="2b32R4" id="28bk3yvdx2x" role="lGtFl">
            <node concept="3JmXsc" id="28bk3yvdx2y" role="2P8S$">
              <node concept="3clFbS" id="28bk3yvdx2z" role="2VODD2">
                <node concept="3clFbF" id="28bk3yvdx7r" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yvdxj_" role="3clFbG">
                    <node concept="30H73N" id="28bk3yvdx7q" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="28bk3yvdxBv" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:5spMjRtwhBW" resolve="pathways" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="28bk3yvcMKO" role="lGtFl">
      <ref role="n9lRv" to="1xcl:3wLemDnMLzF" resolve="StemCell" />
    </node>
  </node>
  <node concept="13MO4I" id="28bk3yvdy$y">
    <property role="TrG5h" value="reduce_DivisionPathway" />
    <ref role="3gUMe" to="1xcl:5spMjRtwi39" resolve="DivisionPathway" />
    <node concept="2pNNFK" id="28bk3yvdy$B" role="13RCb5">
      <property role="2pNNFO" value="pathway" />
      <node concept="2pNNFK" id="28bk3yvd$ug" role="3o6s8t">
        <property role="2pNNFO" value="frequency" />
        <node concept="3o6iSG" id="28bk3yvd$ul" role="3o6s8t">
          <property role="3o6i5n" value="map_frequency" />
          <node concept="17Uvod" id="28bk3yvd$ur" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yvd$us" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yvd$ut" role="2VODD2">
                <node concept="3clFbF" id="28bk3yvd$B5" role="3cqZAp">
                  <node concept="3cpWs3" id="28bk3yvdAFL" role="3clFbG">
                    <node concept="2OqwBi" id="28bk3yvd_jm" role="3uHU7B">
                      <node concept="30H73N" id="28bk3yvd_5u" role="2Oq$k0" />
                      <node concept="3TrcHB" id="28bk3yvd_yh" role="2OqNvi">
                        <ref role="3TsBF5" to="1xcl:5spMjRtwi3b" resolve="frequency" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="28bk3yvdBi4" role="3uHU7w" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yvdy$M" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="28bk3yvdy$Q" role="3o6s8t">
          <property role="3o6i5n" value="DivisionPathway" />
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yvdKiE" role="3o6s8t">
        <property role="2pNNFO" value="condition" />
        <node concept="2b32R4" id="28bk3yvdKI8" role="lGtFl">
          <node concept="3JmXsc" id="28bk3yvdKIb" role="2P8S$">
            <node concept="3clFbS" id="28bk3yvdKIc" role="2VODD2">
              <node concept="3clFbF" id="28bk3yvdKIi" role="3cqZAp">
                <node concept="2OqwBi" id="28bk3yvdKId" role="3clFbG">
                  <node concept="3Tsc0h" id="28bk3yvdKIg" role="2OqNvi">
                    <ref role="3TtcxE" to="1xcl:5spMjRtw7Oo" resolve="conditions" />
                  </node>
                  <node concept="30H73N" id="28bk3yvdKIh" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="28bk3yvdy$Y" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="28bk3yvdEQp">
    <property role="TrG5h" value="reduce_SpikePathway" />
    <ref role="3gUMe" to="1xcl:5spMjRtwi38" resolve="SpikePathway" />
    <node concept="2pNNFK" id="28bk3yvdEQx" role="13RCb5">
      <property role="2pNNFO" value="pathway" />
      <node concept="2pNNFK" id="28bk3yvdFH3" role="3o6s8t">
        <property role="2pNNFO" value="frequency" />
        <node concept="3o6iSG" id="28bk3yvdFH9" role="3o6s8t">
          <property role="3o6i5n" value="map_frequency" />
          <node concept="17Uvod" id="28bk3yvdFHb" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yvdFHc" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yvdFHd" role="2VODD2">
                <node concept="3clFbF" id="28bk3yvdFPP" role="3cqZAp">
                  <node concept="3cpWs3" id="28bk3yvdH$P" role="3clFbG">
                    <node concept="Xl_RD" id="28bk3yvdH_3" role="3uHU7w">
                      <property role="Xl_RC" value="" />
                    </node>
                    <node concept="2OqwBi" id="28bk3yvdG3H" role="3uHU7B">
                      <node concept="30H73N" id="28bk3yvdFPO" role="2Oq$k0" />
                      <node concept="3TrcHB" id="28bk3yvdGrl" role="2OqNvi">
                        <ref role="3TsBF5" to="1xcl:5spMjRtwi3b" resolve="frequency" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yvdIxM" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="28bk3yvdIXc" role="3o6s8t">
          <property role="3o6i5n" value="SpikePathway" />
        </node>
      </node>
      <node concept="3o6iSG" id="28bk3yvdTR0" role="3o6s8t">
        <property role="3o6i5n" value="map_conditions" />
        <node concept="2b32R4" id="28bk3yvdUis" role="lGtFl">
          <node concept="3JmXsc" id="28bk3yvdUiv" role="2P8S$">
            <node concept="3clFbS" id="28bk3yvdUiw" role="2VODD2">
              <node concept="3clFbF" id="28bk3yvdUiA" role="3cqZAp">
                <node concept="2OqwBi" id="28bk3yvdUix" role="3clFbG">
                  <node concept="3Tsc0h" id="28bk3yvdUi$" role="2OqNvi">
                    <ref role="3TtcxE" to="1xcl:5spMjRtw7Oo" resolve="conditions" />
                  </node>
                  <node concept="30H73N" id="28bk3yvdUi_" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="28bk3yvdEQz" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="28bk3yvdKQW">
    <property role="TrG5h" value="reduce_ConditionWithFormula" />
    <ref role="3gUMe" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
    <node concept="2pNNFK" id="28bk3yvdKR1" role="13RCb5">
      <property role="2pNNFO" value="condition" />
      <node concept="2pNNFK" id="28bk3yvdKRe" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="28bk3yvdKRi" role="3o6s8t">
          <property role="3o6i5n" value="map_type" />
          <node concept="17Uvod" id="28bk3yvdKRo" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yvdKRp" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yvdKRq" role="2VODD2">
                <node concept="3clFbF" id="28bk3yve1Qc" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yve244" role="3clFbG">
                    <node concept="30H73N" id="28bk3yve1Qb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="28bk3yve2rG" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:28bk3yvdY9q" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yvdPrn" role="3o6s8t">
        <property role="2pNNFO" value="formula" />
        <node concept="3o6iSG" id="28bk3yvdPAh" role="3o6s8t">
          <property role="3o6i5n" value="map_formula" />
          <node concept="17Uvod" id="28bk3yvdPAn" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yvdPAq" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yvdPAr" role="2VODD2">
                <node concept="3clFbF" id="28bk3yvdPAx" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yvdPAs" role="3clFbG">
                    <node concept="3TrcHB" id="28bk3yvdPAv" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:5spMjRtwk9m" resolve="formula" />
                    </node>
                    <node concept="30H73N" id="28bk3yvdPAw" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="28bk3yvdKR3" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="28bk3yvdWT0">
    <property role="TrG5h" value="reduce_ConditionDistribution" />
    <ref role="3gUMe" to="1xcl:1_T0HJme0KW" resolve="ConditionDistribution" />
    <node concept="2pNNFK" id="28bk3yvdWT5" role="13RCb5">
      <property role="2pNNFO" value="condition" />
      <node concept="2pNNFK" id="28bk3yvdWTn" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="28bk3yvdWTs" role="3o6s8t">
          <property role="3o6i5n" value="map_type" />
          <node concept="17Uvod" id="28bk3yvdXgm" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yvdXgn" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yvdXgo" role="2VODD2">
                <node concept="3clFbF" id="28bk3yvdZ7t" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yvdZll" role="3clFbG">
                    <node concept="30H73N" id="28bk3yvdZ7s" role="2Oq$k0" />
                    <node concept="3TrcHB" id="28bk3yvdZ$k" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:28bk3yvdY9q" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yve62p" role="3o6s8t">
        <property role="2pNNFO" value="family" />
        <node concept="3o6iSG" id="28bk3yve6dk" role="3o6s8t">
          <property role="3o6i5n" value="map_family" />
          <node concept="17Uvod" id="28bk3yve6dq" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yve6dt" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yve6du" role="2VODD2">
                <node concept="3clFbF" id="28bk3yve6d$" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yve6dv" role="3clFbG">
                    <node concept="3TrcHB" id="28bk3yve6dy" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:1_T0HJme0KX" resolve="distribution" />
                    </node>
                    <node concept="30H73N" id="28bk3yve6dz" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yve6I3" role="3o6s8t">
        <property role="2pNNFO" value="ligand" />
        <node concept="3o6iSG" id="28bk3yve6TC" role="3o6s8t">
          <property role="3o6i5n" value="map_ligand" />
          <node concept="17Uvod" id="28bk3yve6TI" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yve6TL" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yve6TM" role="2VODD2">
                <node concept="3clFbF" id="28bk3yve6TS" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yve6TN" role="3clFbG">
                    <node concept="3TrcHB" id="28bk3yve6TQ" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:1_T0HJmebwW" resolve="ligand" />
                    </node>
                    <node concept="30H73N" id="28bk3yve6TR" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="28bk3yve7AB" role="3o6s8t">
        <property role="2pNNFO" value="parameters" />
        <node concept="3o6iSG" id="28bk3yve7MR" role="3o6s8t">
          <property role="3o6i5n" value="map_parameters" />
          <node concept="17Uvod" id="28bk3yve7MX" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="28bk3yve7N0" role="3zH0cK">
              <node concept="3clFbS" id="28bk3yve7N1" role="2VODD2">
                <node concept="3clFbF" id="28bk3yve7N7" role="3cqZAp">
                  <node concept="2OqwBi" id="28bk3yve7N2" role="3clFbG">
                    <node concept="3TrcHB" id="28bk3yve7N5" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:1_T0HJme0KZ" resolve="parameters" />
                    </node>
                    <node concept="30H73N" id="28bk3yve7N6" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="28bk3yvdWT7" role="lGtFl" />
    </node>
  </node>
</model>

