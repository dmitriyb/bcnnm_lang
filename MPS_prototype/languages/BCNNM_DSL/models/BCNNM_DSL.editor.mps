<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a6de4fb4-ab44-4861-82a6-d3f54b9bd8db(BCNNM_DSL.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="1xcl" ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="641JRGqCInD">
    <ref role="1XX52x" to="1xcl:4qEMtjOhV33" resolve="MoleculeDefinition" />
    <node concept="3EZMnI" id="641JRGqCOR5" role="2wV5jI">
      <node concept="3F0ifn" id="641JRGqCRbp" role="3EZMnx">
        <property role="3F0ifm" value="Molecule" />
      </node>
      <node concept="3F0A7n" id="641JRGqCOSG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="641JRGqCT8f" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3EZMnI" id="641JRGqCORp" role="3EZMnx">
        <node concept="3XFhqQ" id="641JRGqCRaq" role="3EZMnx" />
        <node concept="3EZMnI" id="641JRGqCOSS" role="3EZMnx">
          <node concept="VPM3Z" id="641JRGqCOSU" role="3F10Kt" />
          <node concept="3F0ifn" id="641JRGqCOTY" role="3EZMnx">
            <property role="3F0ifm" value="type" />
          </node>
          <node concept="3F0ifn" id="641JRGqCOU6" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="3F0A7n" id="641JRGqCOUp" role="3EZMnx">
            <ref role="1NtTu8" to="1xcl:4qEMtjOhV34" resolve="type" />
          </node>
          <node concept="2iRfu4" id="641JRGqCOSX" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="641JRGqCOT8" role="3EZMnx">
          <node concept="VPM3Z" id="641JRGqCOTa" role="3F10Kt" />
          <node concept="3F0ifn" id="641JRGqCOTc" role="3EZMnx">
            <property role="3F0ifm" value="radius" />
          </node>
          <node concept="3F0ifn" id="641JRGqCOTE" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="3F0A7n" id="641JRGqCOUx" role="3EZMnx">
            <ref role="1NtTu8" to="1xcl:4qEMtjOhV36" resolve="radius" />
          </node>
          <node concept="2iRfu4" id="641JRGqCOTd" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="641JRGqCORs" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="641JRGqCOR6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="641JRGqCMgc">
    <ref role="1XX52x" to="1xcl:641JRGqCBiT" resolve="MoleculeDefinitionReference" />
    <node concept="1iCGBv" id="641JRGqCMi9" role="2wV5jI">
      <ref role="1NtTu8" to="1xcl:641JRGqCBj1" resolve="definition" />
      <node concept="1sVBvm" id="641JRGqCMib" role="1sWHZn">
        <node concept="3F0ifn" id="641JRGqCMil" role="2wV5jI">
          <property role="3F0ifm" value="{ name }" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="641JRGqCV2X">
    <ref role="1XX52x" to="1xcl:4qEMtjOiaD6" resolve="Molecule" />
    <node concept="3EZMnI" id="641JRGqCV3b" role="2wV5jI">
      <node concept="3F0ifn" id="641JRGqCV3q" role="3EZMnx">
        <property role="3F0ifm" value="Molecule" />
      </node>
      <node concept="3F0A7n" id="641JRGqCXMJ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="VechU" id="2BgcPJZHzWK" role="3F10Kt">
          <property role="Vb096" value="red" />
        </node>
        <node concept="Vb9p2" id="2BgcPJZHzWQ" role="3F10Kt">
          <property role="Vbekb" value="BOLD" />
        </node>
      </node>
      <node concept="3F0ifn" id="641JRGqCV3J" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="641JRGqD4Cq" role="3EZMnx">
        <ref role="1NtTu8" to="1xcl:641JRGqD3IS" resolve="defintion" />
        <node concept="1sVBvm" id="641JRGqD4Cs" role="1sWHZn">
          <node concept="3F0A7n" id="641JRGqD4D2" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="30gYXW" id="4tnEUVERkK2" role="3F10Kt">
              <property role="Vb096" value="green" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="641JRGqCV40" role="3EZMnx">
        <node concept="3XFhqQ" id="641JRGqCXMp" role="3EZMnx" />
        <node concept="3EZMnI" id="641JRGqCV5p" role="3EZMnx">
          <node concept="VPM3Z" id="641JRGqCV5r" role="3F10Kt" />
          <node concept="3F0ifn" id="641JRGqCV5t" role="3EZMnx">
            <property role="3F0ifm" value="concentraion" />
          </node>
          <node concept="3F0ifn" id="641JRGqCV5T" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="3F1sOY" id="4r9vr$YwX$d" role="3EZMnx">
            <ref role="1NtTu8" to="1xcl:4r9vr$YwWC_" resolve="concentration" />
          </node>
          <node concept="2iRfu4" id="641JRGqCV5u" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="641JRGqCV43" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="641JRGqCV3e" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="641JRGqD80o">
    <ref role="1XX52x" to="1xcl:4qEMtjOi3C3" resolve="NamedConstant" />
    <node concept="3EZMnI" id="641JRGqD80q" role="2wV5jI">
      <node concept="3F0A7n" id="641JRGqDcxX" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="641JRGqD80Q" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4r9vr$YwtAS" role="3EZMnx">
        <ref role="1NtTu8" to="1xcl:4r9vr$YwkKs" resolve="value" />
      </node>
      <node concept="2iRfu4" id="641JRGqD80t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4r9vr$YwPMD">
    <ref role="1XX52x" to="1xcl:5spMjRtwk9l" resolve="ConditionWithFormula" />
    <node concept="3EZMnI" id="4r9vr$YwPMF" role="2wV5jI">
      <node concept="3F0A7n" id="4r9vr$YwPN1" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4r9vr$YwPN9" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3EZMnI" id="4r9vr$YwPNh" role="3EZMnx">
        <node concept="3XFhqQ" id="4r9vr$YwPNF" role="3EZMnx" />
        <node concept="3F1sOY" id="4r9vr$YwPNY" role="3EZMnx">
          <ref role="1NtTu8" to="1xcl:4r9vr$YwO1m" resolve="formula" />
        </node>
        <node concept="2iRkQZ" id="4r9vr$YwPNk" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="4r9vr$YwPMI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4r9vr$Yx427">
    <ref role="1XX52x" to="1xcl:4r9vr$Yx36e" resolve="MoleculeReference" />
    <node concept="1iCGBv" id="4r9vr$Yx429" role="2wV5jI">
      <ref role="1NtTu8" to="1xcl:4r9vr$Yx36i" resolve="molecule" />
      <node concept="1sVBvm" id="4r9vr$Yx42b" role="1sWHZn">
        <node concept="3F0A7n" id="4r9vr$Yx42i" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4r9vr$Yxent">
    <ref role="1XX52x" to="1xcl:4r9vr$Yxbs7" resolve="DynamicMechanism" />
    <node concept="3EZMnI" id="4r9vr$Yxenv" role="2wV5jI">
      <node concept="3F0A7n" id="4r9vr$YxenT" role="3EZMnx">
        <ref role="1NtTu8" to="1xcl:4r9vr$YxenM" resolve="type" />
      </node>
      <node concept="3F0A7n" id="4r9vr$YxenZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4r9vr$Yxeob" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F0ifn" id="4r9vr$Yxeoi" role="3EZMnx">
        <property role="3F0ifm" value="duration" />
      </node>
      <node concept="3F0ifn" id="4r9vr$Yxeop" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="4r9vr$YxeoS" role="3EZMnx">
        <ref role="1NtTu8" to="1xcl:4r9vr$Yxbsc" resolve="duration" />
      </node>
      <node concept="3F0ifn" id="4r9vr$Yxep9" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="3F0ifn" id="4r9vr$YxepD" role="3EZMnx">
        <property role="3F0ifm" value="from" />
      </node>
      <node concept="1iCGBv" id="4r9vr$YxepO" role="3EZMnx">
        <ref role="1NtTu8" to="1xcl:4r9vr$Yxep_" resolve="baseMechanism" />
        <node concept="1sVBvm" id="4r9vr$YxepQ" role="1sWHZn">
          <node concept="3F0A7n" id="4r9vr$Yxeq5" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="4r9vr$Yxeny" role="2iSdaV" />
      <node concept="3EZMnI" id="4r9vr$Yxeql" role="3EZMnx">
        <node concept="3XFhqQ" id="4r9vr$YxeqI" role="3EZMnx" />
        <node concept="3EZMnI" id="4r9vr$Yxer1" role="3EZMnx">
          <node concept="VPM3Z" id="4r9vr$Yxer3" role="3F10Kt" />
          <node concept="3F0ifn" id="4r9vr$Yxer5" role="3EZMnx">
            <property role="3F0ifm" value="parameters" />
          </node>
          <node concept="3F0ifn" id="4r9vr$YxerG" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="1iCGBv" id="4r9vr$YxerL" role="3EZMnx">
            <ref role="1NtTu8" to="1xcl:4r9vr$Yxbsa" resolve="parameters" />
            <node concept="1sVBvm" id="4r9vr$YxerN" role="1sWHZn">
              <node concept="3F0A7n" id="4r9vr$YxerW" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="4r9vr$Yxer6" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="4r9vr$Yxerk" role="3EZMnx">
          <node concept="VPM3Z" id="4r9vr$Yxerm" role="3F10Kt" />
          <node concept="3F0ifn" id="4r9vr$Yxero" role="3EZMnx">
            <property role="3F0ifm" value="delta" />
          </node>
          <node concept="3F0ifn" id="4r9vr$Yxesa" role="3EZMnx">
            <property role="3F0ifm" value=":" />
          </node>
          <node concept="3F1sOY" id="4r9vr$Yxesj" role="3EZMnx">
            <ref role="1NtTu8" to="1xcl:4r9vr$Yxbse" resolve="formula" />
          </node>
          <node concept="2iRfu4" id="4r9vr$Yxerp" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="4r9vr$Yxeqo" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4r9vr$YxpLK">
    <ref role="1XX52x" to="1xcl:4r9vr$YxpL_" resolve="NamedConstantReference" />
    <node concept="1iCGBv" id="4r9vr$YxpLM" role="2wV5jI">
      <ref role="1NtTu8" to="1xcl:4r9vr$YxpLA" resolve="ref" />
      <node concept="1sVBvm" id="4r9vr$YxpLO" role="1sWHZn">
        <node concept="3F0A7n" id="4r9vr$YxpLV" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
</model>

