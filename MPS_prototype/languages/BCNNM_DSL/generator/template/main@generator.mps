<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:441a19d2-b78d-4259-a204-3330fffa702a(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="1xcl" ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)" />
    <import index="rh3e" ref="r:33c6cc84-4a64-455a-8222-df658e689ef1(org.mar9000.mps.ecmascript.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt" />
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
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
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
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
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
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
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
    <node concept="3aamgX" id="4ZN49nylYvS" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4r9vr$YwLiw" resolve="ModelMechanism" />
      <node concept="j$656" id="4ZN49nylYvY" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nylYvW" resolve="reduce_ModelMechanism" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nym2Ve" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:3wLemDnMLzF" resolve="StemCell" />
      <node concept="j$656" id="4ZN49nym32c" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nym32a" resolve="reduce_Cell" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nym88T" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4qEMtjOi3C3" resolve="NamedConstant" />
      <node concept="j$656" id="4ZN49nym893" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nym891" resolve="reduce_NamedConstant" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nympSO" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4qEMtjOhV33" resolve="MoleculeDefinition" />
      <node concept="j$656" id="4ZN49nympV$" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nympVy" resolve="reduce_MoleculeDefinition" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nymDvQ" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4qEMtjOiaD6" resolve="Molecule" />
      <node concept="j$656" id="4ZN49nymDDD" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nymDDB" resolve="reduce_Molecule" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nymGbK" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
      <node concept="j$656" id="4ZN49nymGc0" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nymGbY" resolve="reduce_ConditionWithFormula" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nymYSc" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4r9vr$Yx36e" resolve="MoleculeReference" />
      <node concept="j$656" id="4ZN49nymYSu" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nymYSs" resolve="reduce_MoleculeReference" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nynaKh" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4r9vr$Yxbs7" resolve="DynamicMechanism" />
      <node concept="j$656" id="4ZN49nynaK_" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nynaKz" resolve="reduce_DynamicMechanism" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nynpTh" role="3acgRq">
      <ref role="30HIoZ" to="1xcl:4r9vr$YxpL_" resolve="NamedConstantReference" />
      <node concept="j$656" id="4ZN49nynpTB" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nynpT_" resolve="reduce_NamedConstantReference" />
      </node>
    </node>
    <node concept="3aamgX" id="4ZN49nynvND" role="3acgRq">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="rh3e:7rFtnRVFgIr" resolve="JSNumericLiteral" />
      <node concept="j$656" id="4ZN49nynvO1" role="1lVwrX">
        <ref role="v9R2y" node="4ZN49nynvNZ" resolve="reduce_JSNumericLiteral" />
      </node>
    </node>
    <node concept="3lhOvk" id="4r9vr$YxB9o" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:3wLemDnML_v" resolve="Space" />
      <ref role="3lhOvi" node="4r9vr$YxBEJ" resolve="map_Space" />
    </node>
    <node concept="3lhOvk" id="5Q9bsUM5lsT" role="3lj3bC">
      <ref role="30HIoZ" to="1xcl:3wLemDnML_v" resolve="Space" />
      <ref role="3lhOvi" node="5Q9bsUM5lsW" resolve="map_SpaceConditions" />
    </node>
  </node>
  <node concept="2pMbU2" id="4r9vr$YxBEJ">
    <property role="TrG5h" value="map_Space" />
    <node concept="3rIKKV" id="4r9vr$YxBEK" role="2pMbU3">
      <node concept="2pNNFK" id="4ZN49nylXHo" role="2pNm8H">
        <property role="2pNNFO" value="Model" />
        <node concept="2pNUuL" id="4ZN49nylXHw" role="2pNNFR">
          <property role="2pNUuO" value="name" />
          <node concept="2pMdtt" id="4ZN49nylXHx" role="2pMdts">
            <node concept="17Uvod" id="4ZN49nylXH$" role="lGtFl">
              <property role="2qtEX9" value="text" />
              <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
              <node concept="3zFVjK" id="4ZN49nylXHB" role="3zH0cK">
                <node concept="3clFbS" id="4ZN49nylXHC" role="2VODD2">
                  <node concept="3clFbF" id="4ZN49nylXHI" role="3cqZAp">
                    <node concept="2OqwBi" id="4ZN49nylXHD" role="3clFbG">
                      <node concept="3TrcHB" id="4ZN49nylXHG" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                      <node concept="30H73N" id="4ZN49nylXHH" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="4ZN49nylXSL" role="3o6s8t">
          <property role="2pNNFO" value="mechanism" />
          <node concept="2b32R4" id="4ZN49nylYn6" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nylYn9" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nylYna" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nylYng" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nylYnb" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nylYne" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4r9vr$YwLiH" resolve="modelMechanisms" />
                    </node>
                    <node concept="30H73N" id="4ZN49nylYnf" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="4ZN49nym2xp" role="3o6s8t">
          <property role="2pNNFO" value="cell" />
          <node concept="2b32R4" id="4ZN49nym2M$" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nym2MB" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nym2MC" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nym2MI" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nym2MD" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nym2MG" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:3wLemDnML_$" resolve="cells" />
                    </node>
                    <node concept="30H73N" id="4ZN49nym2MH" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="4r9vr$YxBEM" role="lGtFl">
      <ref role="n9lRv" to="1xcl:3wLemDnML_v" resolve="Space" />
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nylYvW">
    <property role="TrG5h" value="reduce_ModelMechanism" />
    <ref role="3gUMe" to="1xcl:4r9vr$YwLiw" resolve="ModelMechanism" />
    <node concept="2pNNFK" id="4ZN49nylYw1" role="13RCb5">
      <property role="2pNNFO" value="modelMechanism" />
      <node concept="2pNUuL" id="4ZN49nylYXn" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nylYXo" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nylYXs" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nylYXv" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nylYXw" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nylYXA" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nylYXx" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nylYX$" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nylYX_" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nylYw3" role="lGtFl" />
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nym32a">
    <property role="TrG5h" value="reduce_Cell" />
    <ref role="3gUMe" to="1xcl:3wLemDnMADt" resolve="Cell" />
    <node concept="2pNNFK" id="4ZN49nym32f" role="13RCb5">
      <property role="2pNNFO" value="cell" />
      <node concept="2pNUuL" id="4ZN49nym32m" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nym32n" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nym7e9" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nym7ec" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nym7ed" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nym7ej" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nym7ee" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nym7eh" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nym7ei" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nym32h" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nymibs" role="3o6s8t">
        <property role="2pNNFO" value="namedConstants" />
        <node concept="2pNNFK" id="4ZN49nymimc" role="3o6s8t">
          <property role="2pNNFO" value="constant" />
          <node concept="2b32R4" id="4ZN49nymkBM" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nymkBP" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nymkBQ" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymkBW" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymkBR" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nymkBU" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4qEMtjOi6IH" resolve="constants" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymkBV" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nymozN" role="3o6s8t">
        <property role="2pNNFO" value="moleculeTypes" />
        <node concept="2pNNFK" id="4ZN49nymoOY" role="3o6s8t">
          <property role="2pNNFO" value="molecule" />
          <node concept="2b32R4" id="4ZN49nymoP1" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nymoP4" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nymoP5" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymoPb" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymoP6" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nymoP9" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4qEMtjOicey" resolve="moleculeTypes" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymoPa" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nymAbS" role="3o6s8t">
        <property role="2pNNFO" value="molecules" />
        <node concept="2pNNFK" id="4ZN49nymAMd" role="3o6s8t">
          <property role="2pNNFO" value="molecule" />
          <node concept="2b32R4" id="4ZN49nymAMg" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nymAMj" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nymAMk" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymAMq" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymAMl" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nymAMo" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4qEMtjOi7wQ" resolve="molecules" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymAMp" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nymN_Q" role="3o6s8t">
        <property role="2pNNFO" value="conditions" />
        <node concept="2pNNFK" id="4ZN49nymNVb" role="3o6s8t">
          <property role="2pNNFO" value="condition" />
          <node concept="2b32R4" id="4ZN49nymO42" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nymO45" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nymO46" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymO4c" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymO47" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nymO4a" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4r9vr$YwVIE" resolve="conditions" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymO4b" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nynag1" role="3o6s8t">
        <property role="2pNNFO" value="mechanisms" />
        <node concept="2pNNFK" id="4ZN49nynaBs" role="3o6s8t">
          <property role="2pNNFO" value="mechanism" />
          <node concept="2b32R4" id="4ZN49nynaBv" role="lGtFl">
            <node concept="3JmXsc" id="4ZN49nynaBy" role="2P8S$">
              <node concept="3clFbS" id="4ZN49nynaBz" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nynaBD" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nynaB$" role="3clFbG">
                    <node concept="3Tsc0h" id="4ZN49nynaBB" role="2OqNvi">
                      <ref role="3TtcxE" to="1xcl:4r9vr$Yxdo4" resolve="mechanisms" />
                    </node>
                    <node concept="30H73N" id="4ZN49nynaBC" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nym891">
    <property role="TrG5h" value="reduce_NamedConstant" />
    <ref role="3gUMe" to="1xcl:4qEMtjOi3C3" resolve="NamedConstant" />
    <node concept="2pNNFK" id="4ZN49nym896" role="13RCb5">
      <property role="2pNNFO" value="constant" />
      <node concept="2pNUuL" id="4ZN49nym89a" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nym89b" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nym8kv" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nym8ky" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nym8kz" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nym8kD" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nym8k$" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nym8kB" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nym8kC" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nym8kt" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nymb8h" role="3o6s8t">
        <property role="2pNNFO" value="value" />
        <node concept="29HgVG" id="4ZN49nymbj4" role="lGtFl">
          <node concept="3NFfHV" id="4ZN49nymbj5" role="3NFExx">
            <node concept="3clFbS" id="4ZN49nymbj6" role="2VODD2">
              <node concept="3clFbF" id="4ZN49nymbjc" role="3cqZAp">
                <node concept="2OqwBi" id="4ZN49nymbj7" role="3clFbG">
                  <node concept="3TrEf2" id="4ZN49nymbja" role="2OqNvi">
                    <ref role="3Tt5mk" to="1xcl:4r9vr$YwkKs" resolve="value" />
                  </node>
                  <node concept="30H73N" id="4ZN49nymbjb" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nympVy">
    <property role="TrG5h" value="reduce_MoleculeDefinition" />
    <ref role="3gUMe" to="1xcl:4qEMtjOhV33" resolve="MoleculeDefinition" />
    <node concept="2pNNFK" id="4ZN49nympVB" role="13RCb5">
      <property role="2pNNFO" value="molecule" />
      <node concept="2pNUuL" id="4ZN49nympVQ" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nympVR" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nympVV" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nympVY" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nympVZ" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nympW5" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nympW0" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nympW3" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nympW4" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nympVD" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nymtYo" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="4ZN49nymu9a" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="17Uvod" id="4ZN49nymu9c" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="4ZN49nymu9d" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nymu9e" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymuhQ" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymuvI" role="3clFbG">
                    <node concept="30H73N" id="4ZN49nymuhP" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4ZN49nymuRm" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:4qEMtjOhV34" resolve="type" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4ZN49nymv2d" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nymvow" role="3o6s8t">
        <property role="2pNNFO" value="radius" />
        <node concept="3o6iSG" id="4ZN49nymvzY" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="17Uvod" id="4ZN49nymv$0" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="4ZN49nymv$1" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nymv$2" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymvGE" role="3cqZAp">
                  <node concept="3cpWs3" id="4ZN49nymy1M" role="3clFbG">
                    <node concept="Xl_RD" id="4ZN49nymycJ" role="3uHU7w" />
                    <node concept="2OqwBi" id="4ZN49nymvUy" role="3uHU7B">
                      <node concept="30H73N" id="4ZN49nymvGD" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4ZN49nymwa9" role="2OqNvi">
                        <ref role="3TsBF5" to="1xcl:4qEMtjOhV36" resolve="radius" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nymDDB">
    <property role="TrG5h" value="reduce_Molecule" />
    <ref role="3gUMe" to="1xcl:4qEMtjOiaD6" resolve="Molecule" />
    <node concept="2pNNFK" id="4ZN49nymDDG" role="13RCb5">
      <property role="2pNNFO" value="molecule" />
      <node concept="2pNUuL" id="4ZN49nymDDN" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nymDDO" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nymDDS" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nymDDV" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nymDDW" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymDE2" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymDDX" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nymDE0" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymDE1" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nymDDI" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nymEaB" role="3o6s8t">
        <property role="2pNNFO" value="concentration" />
        <node concept="3o6iSG" id="4ZN49nymElp" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="29HgVG" id="4ZN49nymEls" role="lGtFl">
            <node concept="3NFfHV" id="4ZN49nymElt" role="3NFExx">
              <node concept="3clFbS" id="4ZN49nymElu" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymEl$" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymElv" role="3clFbG">
                    <node concept="3TrEf2" id="4ZN49nymEly" role="2OqNvi">
                      <ref role="3Tt5mk" to="1xcl:4r9vr$YwWC_" resolve="concentration" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymElz" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nymGbY">
    <property role="TrG5h" value="reduce_ConditionWithFormula" />
    <ref role="3gUMe" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
    <node concept="2pNNFK" id="4ZN49nymGc3" role="13RCb5">
      <property role="2pNNFO" value="condition" />
      <node concept="2pNUuL" id="4ZN49nymKxq" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nymKxr" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nymKCh" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nymKCk" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nymKCl" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nymKCr" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nymKCm" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nymKCp" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nymKCq" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nymGc5" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nymGc7" role="3o6s8t">
        <property role="2pNNFO" value="formula" />
        <node concept="29HgVG" id="4ZN49nymGca" role="lGtFl">
          <node concept="3NFfHV" id="4ZN49nymGcb" role="3NFExx">
            <node concept="3clFbS" id="4ZN49nymGcc" role="2VODD2">
              <node concept="3clFbF" id="4ZN49nymGci" role="3cqZAp">
                <node concept="2OqwBi" id="4ZN49nymGcd" role="3clFbG">
                  <node concept="3TrEf2" id="4ZN49nymGcg" role="2OqNvi">
                    <ref role="3Tt5mk" to="1xcl:4r9vr$YwO1m" resolve="formula" />
                  </node>
                  <node concept="30H73N" id="4ZN49nymGch" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nymYSs">
    <property role="TrG5h" value="reduce_MoleculeReference" />
    <ref role="3gUMe" to="1xcl:4r9vr$Yx36e" resolve="MoleculeReference" />
    <node concept="3o6iSG" id="4ZN49nyn14U" role="13RCb5">
      <property role="3o6i5n" value=" map_moleculeName" />
      <node concept="raruj" id="4ZN49nyn14W" role="lGtFl" />
      <node concept="17Uvod" id="4ZN49nyn4Jk" role="lGtFl">
        <property role="2qtEX9" value="value" />
        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
        <node concept="3zFVjK" id="4ZN49nyn4Jl" role="3zH0cK">
          <node concept="3clFbS" id="4ZN49nyn4Jm" role="2VODD2">
            <node concept="3clFbF" id="4ZN49nyn4RZ" role="3cqZAp">
              <node concept="2OqwBi" id="4ZN49nyn6d0" role="3clFbG">
                <node concept="2OqwBi" id="4ZN49nyn57r" role="2Oq$k0">
                  <node concept="30H73N" id="4ZN49nyn4RY" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4ZN49nyn5yd" role="2OqNvi">
                    <ref role="3Tt5mk" to="1xcl:4r9vr$Yx36i" resolve="molecule" />
                  </node>
                </node>
                <node concept="3TrcHB" id="4ZN49nyn6MN" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nynaKz">
    <property role="TrG5h" value="reduce_DynamicMechanism" />
    <ref role="3gUMe" to="1xcl:4r9vr$Yxbs7" resolve="DynamicMechanism" />
    <node concept="2pNNFK" id="4ZN49nynaKC" role="13RCb5">
      <property role="2pNNFO" value="mechanism" />
      <node concept="2pNUuL" id="4ZN49nynaKG" role="2pNNFR">
        <property role="2pNUuO" value="name" />
        <node concept="2pMdtt" id="4ZN49nynaKH" role="2pMdts">
          <node concept="17Uvod" id="4ZN49nynaW1" role="lGtFl">
            <property role="2qtEX9" value="text" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" />
            <node concept="3zFVjK" id="4ZN49nynaW4" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nynaW5" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nynaWb" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nynaW6" role="3clFbG">
                    <node concept="3TrcHB" id="4ZN49nynaW9" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="4ZN49nynaWa" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="raruj" id="4ZN49nynaVZ" role="lGtFl" />
      <node concept="2pNNFK" id="4ZN49nyngy0" role="3o6s8t">
        <property role="2pNNFO" value="type" />
        <node concept="3o6iSG" id="4ZN49nyngZZ" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="17Uvod" id="4ZN49nynh01" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="4ZN49nynh02" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nynh03" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nynh8F" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nynhmz" role="3clFbG">
                    <node concept="30H73N" id="4ZN49nynh8E" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4ZN49nynhIb" role="2OqNvi">
                      <ref role="3TsBF5" to="1xcl:4r9vr$YxenM" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nynb7e" role="3o6s8t">
        <property role="2pNNFO" value="duration" />
        <node concept="3o6iSG" id="4ZN49nynbhY" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="17Uvod" id="4ZN49nynbi0" role="lGtFl">
            <property role="2qtEX9" value="value" />
            <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
            <node concept="3zFVjK" id="4ZN49nynbi1" role="3zH0cK">
              <node concept="3clFbS" id="4ZN49nynbi2" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nynbqE" role="3cqZAp">
                  <node concept="3cpWs3" id="4ZN49nyncQn" role="3clFbG">
                    <node concept="Xl_RD" id="4ZN49nyncQ_" role="3uHU7w" />
                    <node concept="2OqwBi" id="4ZN49nynbCy" role="3uHU7B">
                      <node concept="30H73N" id="4ZN49nynbqD" role="2Oq$k0" />
                      <node concept="3TrcHB" id="4ZN49nync0a" role="2OqNvi">
                        <ref role="3TsBF5" to="1xcl:4r9vr$Yxbsc" resolve="duration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2pNNFK" id="4ZN49nynNUG" role="3o6s8t">
        <property role="2pNNFO" value="delta" />
        <node concept="3o6iSG" id="4ZN49nynOpE" role="3o6s8t">
          <property role="3o6i5n" value="" />
          <node concept="29HgVG" id="4ZN49nynOpI" role="lGtFl">
            <node concept="3NFfHV" id="4ZN49nynOpJ" role="3NFExx">
              <node concept="3clFbS" id="4ZN49nynOpK" role="2VODD2">
                <node concept="3clFbF" id="4ZN49nynOpQ" role="3cqZAp">
                  <node concept="2OqwBi" id="4ZN49nynOpL" role="3clFbG">
                    <node concept="3TrEf2" id="4ZN49nynOpO" role="2OqNvi">
                      <ref role="3Tt5mk" to="1xcl:4r9vr$Yxbse" resolve="formula" />
                    </node>
                    <node concept="30H73N" id="4ZN49nynOpP" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nynpT_">
    <property role="TrG5h" value="reduce_NamedConstantReference" />
    <ref role="3gUMe" to="1xcl:4r9vr$YxpL_" resolve="NamedConstantReference" />
    <node concept="3o6iSG" id="4ZN49nynpTE" role="13RCb5">
      <node concept="raruj" id="4ZN49nynpTG" role="lGtFl" />
      <node concept="17Uvod" id="4ZN49nynpTH" role="lGtFl">
        <property role="2qtEX9" value="value" />
        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
        <node concept="3zFVjK" id="4ZN49nynpTI" role="3zH0cK">
          <node concept="3clFbS" id="4ZN49nynpTJ" role="2VODD2">
            <node concept="3clFbF" id="4ZN49nynq2o" role="3cqZAp">
              <node concept="3cpWs3" id="4ZN49nynsoi" role="3clFbG">
                <node concept="Xl_RD" id="4ZN49nynso$" role="3uHU7w" />
                <node concept="2OqwBi" id="4ZN49nynqUz" role="3uHU7B">
                  <node concept="2OqwBi" id="4ZN49nynqhO" role="2Oq$k0">
                    <node concept="30H73N" id="4ZN49nynq2n" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ZN49nynqGA" role="2OqNvi">
                      <ref role="3Tt5mk" to="1xcl:4r9vr$YxpLA" resolve="ref" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="4ZN49nynrwn" role="2OqNvi">
                    <ref role="3Tt5mk" to="1xcl:4r9vr$YwkKs" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="4ZN49nynvNZ">
    <property role="TrG5h" value="reduce_JSNumericLiteral" />
    <ref role="3gUMe" to="rh3e:7rFtnRVFgIr" resolve="JSNumericLiteral" />
    <node concept="3o6iSG" id="4ZN49nynvO4" role="13RCb5">
      <node concept="raruj" id="4ZN49nynvO6" role="lGtFl" />
      <node concept="17Uvod" id="4ZN49nynvO7" role="lGtFl">
        <property role="2qtEX9" value="value" />
        <property role="P4ACc" value="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" />
        <node concept="3zFVjK" id="4ZN49nynvO8" role="3zH0cK">
          <node concept="3clFbS" id="4ZN49nynvO9" role="2VODD2">
            <node concept="3clFbF" id="4ZN49nynvWM" role="3cqZAp">
              <node concept="2OqwBi" id="4ZN49nyn_Kt" role="3clFbG">
                <node concept="30H73N" id="4ZN49nynvWL" role="2Oq$k0" />
                <node concept="3TrcHB" id="4ZN49nynEhI" role="2OqNvi">
                  <ref role="3TsBF5" to="rh3e:7rFtnRVFgKW" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5Q9bsUM5lsW">
    <property role="TrG5h" value="map_SpaceConditions" />
    <node concept="3Tm1VV" id="5Q9bsUM5lsX" role="1B3o_S" />
    <node concept="n94m4" id="5Q9bsUM5lsY" role="lGtFl">
      <ref role="n9lRv" to="1xcl:3wLemDnML_v" resolve="Space" />
    </node>
  </node>
</model>

