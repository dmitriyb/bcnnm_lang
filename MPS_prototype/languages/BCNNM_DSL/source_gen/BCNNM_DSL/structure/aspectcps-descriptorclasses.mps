<?xml version="1.0" encoding="UTF-8"?>
<model ref="00000000-0000-4000-5f02-5beb5f025beb/i:f785882(checkpoints/BCNNM_DSL.structure@descriptorclasses)">
  <persistence version="9" />
  <attribute name="checkpoint" value="DescriptorClasses" />
  <attribute name="generation-plan" value="AspectCPS" />
  <languages />
  <imports>
    <import index="1xcl" ref="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)" />
    <import index="ksn4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.lang.smodel(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bzg8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.impl(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="7980339663309897032" name="jetbrains.mps.lang.generator.structure.OriginTrace" flags="ng" index="cd27G">
        <child id="7980339663309897037" name="origin" index="cd27D" />
      </concept>
      <concept id="9032177546941580387" name="jetbrains.mps.lang.generator.structure.TrivialNodeId" flags="nn" index="2$VJBW">
        <property id="9032177546941580392" name="nodeId" index="2$VJBR" />
        <child id="8557539026538618631" name="cncpt" index="3iCydw" />
      </concept>
      <concept id="5808518347809715508" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_InputNode" flags="nn" index="385nmt">
        <property id="5808518347809748738" name="presentation" index="385vuF" />
        <child id="5808518347809747118" name="node" index="385v07" />
      </concept>
      <concept id="3864140621129707969" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_Mappings" flags="nn" index="39dXUE">
        <child id="3864140621129713349" name="labels" index="39e2AI" />
      </concept>
      <concept id="3864140621129713351" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeMapEntry" flags="nn" index="39e2AG">
        <property id="5843998055530255671" name="isNewRoot" index="2mV_xN" />
        <reference id="3864140621129713371" name="inputOrigin" index="39e2AK" />
        <child id="5808518347809748862" name="inputNode" index="385vvn" />
        <child id="3864140621129713365" name="outputNode" index="39e2AY" />
      </concept>
      <concept id="3864140621129713348" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_LabelEntry" flags="nn" index="39e2AJ">
        <property id="3864140621129715945" name="label" index="39e3Y2" />
        <child id="3864140621129715947" name="entries" index="39e3Y0" />
      </concept>
      <concept id="3864140621129713362" name="jetbrains.mps.lang.generator.structure.GeneratorDebug_NodeRef" flags="nn" index="39e2AT">
        <reference id="3864140621129713363" name="node" index="39e2AS" />
      </concept>
      <concept id="3637169702552512264" name="jetbrains.mps.lang.generator.structure.ElementaryNodeId" flags="ng" index="3u3nmq">
        <property id="3637169702552512269" name="nodeId" index="3u3nmv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6911370362349121511" name="jetbrains.mps.lang.smodel.structure.ConceptId" flags="nn" index="2x4n5u">
        <property id="6911370362349122519" name="conceptName" index="2x4mPI" />
        <property id="6911370362349121516" name="conceptId" index="2x4n5l" />
        <child id="6911370362349121514" name="languageIdentity" index="2x4n5j" />
      </concept>
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
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
  <node concept="312cEu" id="0">
    <property role="TrG5h" value="ConceptPresentationAspectImpl" />
    <node concept="3uibUv" id="1" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~ConceptPresentationAspectBase" resolve="ConceptPresentationAspectBase" />
    </node>
    <node concept="312cEg" id="2" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ApoptosisPathway" />
      <node concept="3uibUv" id="m" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="n" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Cell" />
      <node concept="3uibUv" id="o" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Condition" />
      <node concept="3uibUv" id="q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="r" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ConditionWithFormula" />
      <node concept="3uibUv" id="s" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="t" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_DynamicMechanism" />
      <node concept="3uibUv" id="u" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="v" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_GlobalParameters" />
      <node concept="3uibUv" id="w" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="x" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="8" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_ModelMechanism" />
      <node concept="3uibUv" id="y" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="9" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Molecule" />
      <node concept="3uibUv" id="$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="a" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_MoleculeDefinition" />
      <node concept="3uibUv" id="A" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="B" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="b" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_MoleculeDefinitionReference" />
      <node concept="3uibUv" id="C" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="D" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="c" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_MoleculeReference" />
      <node concept="3uibUv" id="E" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="F" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="d" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_NamedConstant" />
      <node concept="3uibUv" id="G" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="H" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="e" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_NamedConstantReference" />
      <node concept="3uibUv" id="I" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="J" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="f" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_SignalPathway" />
      <node concept="3uibUv" id="K" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="L" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="g" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Space" />
      <node concept="3uibUv" id="M" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="N" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="h" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_Stage" />
      <node concept="3uibUv" id="O" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="P" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="i" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="TrG5h" value="props_StemCell" />
      <node concept="3uibUv" id="Q" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="3Tm6S6" id="R" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="j" role="1B3o_S" />
    <node concept="2tJIrI" id="k" role="jymVt" />
    <node concept="3clFb_" id="l" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="S" role="1B3o_S" />
      <node concept="37vLTG" id="T" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="Y" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
      <node concept="3clFbS" id="U" role="3clF47">
        <node concept="3cpWs8" id="Z" role="3cqZAp">
          <node concept="3cpWsn" id="12" role="3cpWs9">
            <property role="TrG5h" value="structureDescriptor" />
            <node concept="3uibUv" id="13" role="1tU5fm">
              <ref role="3uigEE" node="vB" resolve="StructureAspectDescriptor" />
            </node>
            <node concept="10QFUN" id="14" role="33vP2m">
              <node concept="3uibUv" id="15" role="10QFUM">
                <ref role="3uigEE" node="vB" resolve="StructureAspectDescriptor" />
              </node>
              <node concept="2OqwBi" id="16" role="10QFUP">
                <node concept="37vLTw" id="17" role="2Oq$k0">
                  <ref role="3cqZAo" to="ze1i:~ConceptPresentationAspectBase.myLanguageRuntime" resolve="myLanguageRuntime" />
                </node>
                <node concept="liA8E" id="18" role="2OqNvi">
                  <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class)" resolve="getAspect" />
                  <node concept="3VsKOn" id="19" role="37wK5m">
                    <ref role="3VsUkX" to="ze1i:~StructureAspectDescriptor" resolve="StructureAspectDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="10" role="3cqZAp">
          <node concept="2OqwBi" id="1a" role="3KbGdf">
            <node concept="37vLTw" id="1s" role="2Oq$k0">
              <ref role="3cqZAo" node="12" resolve="structureDescriptor" />
            </node>
            <node concept="liA8E" id="1t" role="2OqNvi">
              <ref role="37wK5l" node="wc" resolve="internalIndex" />
              <node concept="37vLTw" id="1u" role="37wK5m">
                <ref role="3cqZAo" node="T" resolve="c" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="1b" role="3KbHQx">
            <node concept="3clFbS" id="1v" role="3Kbo56">
              <node concept="3clFbJ" id="1x" role="3cqZAp">
                <node concept="3clFbS" id="1z" role="3clFbx">
                  <node concept="3cpWs8" id="1_" role="3cqZAp">
                    <node concept="3cpWsn" id="1C" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="1D" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1E" role="33vP2m">
                        <node concept="1pGfFk" id="1F" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1A" role="3cqZAp">
                    <node concept="2OqwBi" id="1G" role="3clFbG">
                      <node concept="37vLTw" id="1H" role="2Oq$k0">
                        <ref role="3cqZAo" node="1C" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="1I" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <node concept="Xl_RD" id="1J" role="37wK5m">
                          <property role="Xl_RC" value="ApoptosisPathway" />
                          <node concept="cd27G" id="1L" role="lGtFl">
                            <node concept="3u3nmq" id="1M" role="cd27D">
                              <property role="3u3nmv" value="6276268823263912138" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="1K" role="lGtFl">
                          <node concept="3u3nmq" id="1N" role="cd27D">
                            <property role="3u3nmv" value="6276268823263912138" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1B" role="3cqZAp">
                    <node concept="37vLTI" id="1O" role="3clFbG">
                      <node concept="2OqwBi" id="1P" role="37vLTx">
                        <node concept="37vLTw" id="1R" role="2Oq$k0">
                          <ref role="3cqZAo" node="1C" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="1S" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1Q" role="37vLTJ">
                        <ref role="3cqZAo" node="2" resolve="props_ApoptosisPathway" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1$" role="3clFbw">
                  <node concept="10Nm6u" id="1T" role="3uHU7w" />
                  <node concept="37vLTw" id="1U" role="3uHU7B">
                    <ref role="3cqZAo" node="2" resolve="props_ApoptosisPathway" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1y" role="3cqZAp">
                <node concept="37vLTw" id="1V" role="3cqZAk">
                  <ref role="3cqZAo" node="2" resolve="props_ApoptosisPathway" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1w" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sh" resolve="ApoptosisPathway" />
            </node>
          </node>
          <node concept="3KbdKl" id="1c" role="3KbHQx">
            <node concept="3clFbS" id="1W" role="3Kbo56">
              <node concept="3clFbJ" id="1Y" role="3cqZAp">
                <node concept="3clFbS" id="20" role="3clFbx">
                  <node concept="3cpWs8" id="22" role="3cqZAp">
                    <node concept="3cpWsn" id="24" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="25" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="26" role="33vP2m">
                        <node concept="1pGfFk" id="27" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="23" role="3cqZAp">
                    <node concept="37vLTI" id="28" role="3clFbG">
                      <node concept="2OqwBi" id="29" role="37vLTx">
                        <node concept="37vLTw" id="2b" role="2Oq$k0">
                          <ref role="3cqZAo" node="24" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2c" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2a" role="37vLTJ">
                        <ref role="3cqZAo" node="3" resolve="props_Cell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="21" role="3clFbw">
                  <node concept="10Nm6u" id="2d" role="3uHU7w" />
                  <node concept="37vLTw" id="2e" role="3uHU7B">
                    <ref role="3cqZAo" node="3" resolve="props_Cell" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1Z" role="3cqZAp">
                <node concept="37vLTw" id="2f" role="3cqZAk">
                  <ref role="3cqZAo" node="3" resolve="props_Cell" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="1X" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="si" resolve="Cell" />
            </node>
          </node>
          <node concept="3KbdKl" id="1d" role="3KbHQx">
            <node concept="3clFbS" id="2g" role="3Kbo56">
              <node concept="3clFbJ" id="2i" role="3cqZAp">
                <node concept="3clFbS" id="2k" role="3clFbx">
                  <node concept="3cpWs8" id="2m" role="3cqZAp">
                    <node concept="3cpWsn" id="2o" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2p" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2q" role="33vP2m">
                        <node concept="1pGfFk" id="2r" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2n" role="3cqZAp">
                    <node concept="37vLTI" id="2s" role="3clFbG">
                      <node concept="2OqwBi" id="2t" role="37vLTx">
                        <node concept="37vLTw" id="2v" role="2Oq$k0">
                          <ref role="3cqZAo" node="2o" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2w" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2u" role="37vLTJ">
                        <ref role="3cqZAo" node="4" resolve="props_Condition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2l" role="3clFbw">
                  <node concept="10Nm6u" id="2x" role="3uHU7w" />
                  <node concept="37vLTw" id="2y" role="3uHU7B">
                    <ref role="3cqZAo" node="4" resolve="props_Condition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2j" role="3cqZAp">
                <node concept="37vLTw" id="2z" role="3cqZAk">
                  <ref role="3cqZAo" node="4" resolve="props_Condition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2h" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sj" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1e" role="3KbHQx">
            <node concept="3clFbS" id="2$" role="3Kbo56">
              <node concept="3clFbJ" id="2A" role="3cqZAp">
                <node concept="3clFbS" id="2C" role="3clFbx">
                  <node concept="3cpWs8" id="2E" role="3cqZAp">
                    <node concept="3cpWsn" id="2H" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="2I" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="2J" role="33vP2m">
                        <node concept="1pGfFk" id="2K" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2F" role="3cqZAp">
                    <node concept="2OqwBi" id="2L" role="3clFbG">
                      <node concept="37vLTw" id="2M" role="2Oq$k0">
                        <ref role="3cqZAo" node="2H" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="2N" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="2O" role="lGtFl">
                          <node concept="3u3nmq" id="2P" role="cd27D">
                            <property role="3u3nmv" value="6276268823263920725" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2G" role="3cqZAp">
                    <node concept="37vLTI" id="2Q" role="3clFbG">
                      <node concept="2OqwBi" id="2R" role="37vLTx">
                        <node concept="37vLTw" id="2T" role="2Oq$k0">
                          <ref role="3cqZAo" node="2H" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="2U" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2S" role="37vLTJ">
                        <ref role="3cqZAo" node="5" resolve="props_ConditionWithFormula" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="2D" role="3clFbw">
                  <node concept="10Nm6u" id="2V" role="3uHU7w" />
                  <node concept="37vLTw" id="2W" role="3uHU7B">
                    <ref role="3cqZAo" node="5" resolve="props_ConditionWithFormula" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2B" role="3cqZAp">
                <node concept="37vLTw" id="2X" role="3cqZAk">
                  <ref role="3cqZAo" node="5" resolve="props_ConditionWithFormula" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2_" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sk" resolve="ConditionWithFormula" />
            </node>
          </node>
          <node concept="3KbdKl" id="1f" role="3KbHQx">
            <node concept="3clFbS" id="2Y" role="3Kbo56">
              <node concept="3clFbJ" id="30" role="3cqZAp">
                <node concept="3clFbS" id="32" role="3clFbx">
                  <node concept="3cpWs8" id="34" role="3cqZAp">
                    <node concept="3cpWsn" id="37" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="38" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="39" role="33vP2m">
                        <node concept="1pGfFk" id="3a" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="35" role="3cqZAp">
                    <node concept="2OqwBi" id="3b" role="3clFbG">
                      <node concept="37vLTw" id="3c" role="2Oq$k0">
                        <ref role="3cqZAo" node="37" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3d" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="3e" role="lGtFl">
                          <node concept="3u3nmq" id="3f" role="cd27D">
                            <property role="3u3nmv" value="5100746287545104135" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="36" role="3cqZAp">
                    <node concept="37vLTI" id="3g" role="3clFbG">
                      <node concept="2OqwBi" id="3h" role="37vLTx">
                        <node concept="37vLTw" id="3j" role="2Oq$k0">
                          <ref role="3cqZAo" node="37" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3k" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3i" role="37vLTJ">
                        <ref role="3cqZAo" node="6" resolve="props_DynamicMechanism" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="33" role="3clFbw">
                  <node concept="10Nm6u" id="3l" role="3uHU7w" />
                  <node concept="37vLTw" id="3m" role="3uHU7B">
                    <ref role="3cqZAo" node="6" resolve="props_DynamicMechanism" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="31" role="3cqZAp">
                <node concept="37vLTw" id="3n" role="3cqZAk">
                  <ref role="3cqZAo" node="6" resolve="props_DynamicMechanism" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="2Z" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sl" resolve="DynamicMechanism" />
            </node>
          </node>
          <node concept="3KbdKl" id="1g" role="3KbHQx">
            <node concept="3clFbS" id="3o" role="3Kbo56">
              <node concept="3clFbJ" id="3q" role="3cqZAp">
                <node concept="3clFbS" id="3s" role="3clFbx">
                  <node concept="3cpWs8" id="3u" role="3cqZAp">
                    <node concept="3cpWsn" id="3x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="3z" role="33vP2m">
                        <node concept="1pGfFk" id="3$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3v" role="3cqZAp">
                    <node concept="2OqwBi" id="3_" role="3clFbG">
                      <node concept="37vLTw" id="3A" role="2Oq$k0">
                        <ref role="3cqZAo" node="3x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="3B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <node concept="Xl_RD" id="3C" role="37wK5m">
                          <property role="Xl_RC" value="GlobalParameters" />
                          <node concept="cd27G" id="3E" role="lGtFl">
                            <node concept="3u3nmq" id="3F" role="cd27D">
                              <property role="3u3nmv" value="6739968683110917928" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="3D" role="lGtFl">
                          <node concept="3u3nmq" id="3G" role="cd27D">
                            <property role="3u3nmv" value="6739968683110917928" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3w" role="3cqZAp">
                    <node concept="37vLTI" id="3H" role="3clFbG">
                      <node concept="2OqwBi" id="3I" role="37vLTx">
                        <node concept="37vLTw" id="3K" role="2Oq$k0">
                          <ref role="3cqZAo" node="3x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="3L" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3J" role="37vLTJ">
                        <ref role="3cqZAo" node="7" resolve="props_GlobalParameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3t" role="3clFbw">
                  <node concept="10Nm6u" id="3M" role="3uHU7w" />
                  <node concept="37vLTw" id="3N" role="3uHU7B">
                    <ref role="3cqZAo" node="7" resolve="props_GlobalParameters" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3r" role="3cqZAp">
                <node concept="37vLTw" id="3O" role="3cqZAk">
                  <ref role="3cqZAo" node="7" resolve="props_GlobalParameters" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3p" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sm" resolve="GlobalParameters" />
            </node>
          </node>
          <node concept="3KbdKl" id="1h" role="3KbHQx">
            <node concept="3clFbS" id="3P" role="3Kbo56">
              <node concept="3clFbJ" id="3R" role="3cqZAp">
                <node concept="3clFbS" id="3T" role="3clFbx">
                  <node concept="3cpWs8" id="3V" role="3cqZAp">
                    <node concept="3cpWsn" id="3Y" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="3Z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="40" role="33vP2m">
                        <node concept="1pGfFk" id="41" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3W" role="3cqZAp">
                    <node concept="2OqwBi" id="42" role="3clFbG">
                      <node concept="37vLTw" id="43" role="2Oq$k0">
                        <ref role="3cqZAo" node="3Y" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="44" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="45" role="lGtFl">
                          <node concept="3u3nmq" id="46" role="cd27D">
                            <property role="3u3nmv" value="5100746287544997024" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="3X" role="3cqZAp">
                    <node concept="37vLTI" id="47" role="3clFbG">
                      <node concept="2OqwBi" id="48" role="37vLTx">
                        <node concept="37vLTw" id="4a" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Y" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4b" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="49" role="37vLTJ">
                        <ref role="3cqZAo" node="8" resolve="props_ModelMechanism" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="3U" role="3clFbw">
                  <node concept="10Nm6u" id="4c" role="3uHU7w" />
                  <node concept="37vLTw" id="4d" role="3uHU7B">
                    <ref role="3cqZAo" node="8" resolve="props_ModelMechanism" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3S" role="3cqZAp">
                <node concept="37vLTw" id="4e" role="3cqZAk">
                  <ref role="3cqZAo" node="8" resolve="props_ModelMechanism" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="3Q" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sn" resolve="ModelMechanism" />
            </node>
          </node>
          <node concept="3KbdKl" id="1i" role="3KbHQx">
            <node concept="3clFbS" id="4f" role="3Kbo56">
              <node concept="3clFbJ" id="4h" role="3cqZAp">
                <node concept="3clFbS" id="4j" role="3clFbx">
                  <node concept="3cpWs8" id="4l" role="3cqZAp">
                    <node concept="3cpWsn" id="4o" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4p" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4q" role="33vP2m">
                        <node concept="1pGfFk" id="4r" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4m" role="3cqZAp">
                    <node concept="2OqwBi" id="4s" role="3clFbG">
                      <node concept="37vLTw" id="4t" role="2Oq$k0">
                        <ref role="3cqZAo" node="4o" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4u" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="4v" role="lGtFl">
                          <node concept="3u3nmq" id="4w" role="cd27D">
                            <property role="3u3nmv" value="5092104245164419654" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4n" role="3cqZAp">
                    <node concept="37vLTI" id="4x" role="3clFbG">
                      <node concept="2OqwBi" id="4y" role="37vLTx">
                        <node concept="37vLTw" id="4$" role="2Oq$k0">
                          <ref role="3cqZAo" node="4o" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4_" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4z" role="37vLTJ">
                        <ref role="3cqZAo" node="9" resolve="props_Molecule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4k" role="3clFbw">
                  <node concept="10Nm6u" id="4A" role="3uHU7w" />
                  <node concept="37vLTw" id="4B" role="3uHU7B">
                    <ref role="3cqZAo" node="9" resolve="props_Molecule" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4i" role="3cqZAp">
                <node concept="37vLTw" id="4C" role="3cqZAk">
                  <ref role="3cqZAo" node="9" resolve="props_Molecule" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4g" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="so" resolve="Molecule" />
            </node>
          </node>
          <node concept="3KbdKl" id="1j" role="3KbHQx">
            <node concept="3clFbS" id="4D" role="3Kbo56">
              <node concept="3clFbJ" id="4F" role="3cqZAp">
                <node concept="3clFbS" id="4H" role="3clFbx">
                  <node concept="3cpWs8" id="4J" role="3cqZAp">
                    <node concept="3cpWsn" id="4M" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="4N" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="4O" role="33vP2m">
                        <node concept="1pGfFk" id="4P" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4K" role="3cqZAp">
                    <node concept="2OqwBi" id="4Q" role="3clFbG">
                      <node concept="37vLTw" id="4R" role="2Oq$k0">
                        <ref role="3cqZAo" node="4M" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="4S" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="4T" role="lGtFl">
                          <node concept="3u3nmq" id="4U" role="cd27D">
                            <property role="3u3nmv" value="5092104245164355779" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4L" role="3cqZAp">
                    <node concept="37vLTI" id="4V" role="3clFbG">
                      <node concept="2OqwBi" id="4W" role="37vLTx">
                        <node concept="37vLTw" id="4Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="4M" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="4Z" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4X" role="37vLTJ">
                        <ref role="3cqZAo" node="a" resolve="props_MoleculeDefinition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="4I" role="3clFbw">
                  <node concept="10Nm6u" id="50" role="3uHU7w" />
                  <node concept="37vLTw" id="51" role="3uHU7B">
                    <ref role="3cqZAo" node="a" resolve="props_MoleculeDefinition" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4G" role="3cqZAp">
                <node concept="37vLTw" id="52" role="3cqZAk">
                  <ref role="3cqZAo" node="a" resolve="props_MoleculeDefinition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="4E" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sp" resolve="MoleculeDefinition" />
            </node>
          </node>
          <node concept="3KbdKl" id="1k" role="3KbHQx">
            <node concept="3clFbS" id="53" role="3Kbo56">
              <node concept="3clFbJ" id="55" role="3cqZAp">
                <node concept="3clFbS" id="57" role="3clFbx">
                  <node concept="3cpWs8" id="59" role="3cqZAp">
                    <node concept="3cpWsn" id="5c" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5d" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5e" role="33vP2m">
                        <node concept="1pGfFk" id="5f" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5a" role="3cqZAp">
                    <node concept="2OqwBi" id="5g" role="3clFbG">
                      <node concept="37vLTw" id="5h" role="2Oq$k0">
                        <ref role="3cqZAo" node="5c" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="5i" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <node concept="1adDum" id="5j" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                          <node concept="cd27G" id="5r" role="lGtFl">
                            <node concept="3u3nmq" id="5s" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="5k" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                          <node concept="cd27G" id="5t" role="lGtFl">
                            <node concept="3u3nmq" id="5u" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="5l" role="37wK5m">
                          <property role="1adDun" value="0x6101bf7b1aa274b9L" />
                          <node concept="cd27G" id="5v" role="lGtFl">
                            <node concept="3u3nmq" id="5w" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="5m" role="37wK5m">
                          <property role="1adDun" value="0x6101bf7b1aa274c1L" />
                          <node concept="cd27G" id="5x" role="lGtFl">
                            <node concept="3u3nmq" id="5y" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5n" role="37wK5m">
                          <property role="Xl_RC" value="definition" />
                          <node concept="cd27G" id="5z" role="lGtFl">
                            <node concept="3u3nmq" id="5$" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5o" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="5_" role="lGtFl">
                            <node concept="3u3nmq" id="5A" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5p" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="5B" role="lGtFl">
                            <node concept="3u3nmq" id="5C" role="cd27D">
                              <property role="3u3nmv" value="6990078632104457401" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="5q" role="lGtFl">
                          <node concept="3u3nmq" id="5D" role="cd27D">
                            <property role="3u3nmv" value="6990078632104457401" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5b" role="3cqZAp">
                    <node concept="37vLTI" id="5E" role="3clFbG">
                      <node concept="2OqwBi" id="5F" role="37vLTx">
                        <node concept="37vLTw" id="5H" role="2Oq$k0">
                          <ref role="3cqZAo" node="5c" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="5I" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="5G" role="37vLTJ">
                        <ref role="3cqZAo" node="b" resolve="props_MoleculeDefinitionReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="58" role="3clFbw">
                  <node concept="10Nm6u" id="5J" role="3uHU7w" />
                  <node concept="37vLTw" id="5K" role="3uHU7B">
                    <ref role="3cqZAo" node="b" resolve="props_MoleculeDefinitionReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="56" role="3cqZAp">
                <node concept="37vLTw" id="5L" role="3cqZAk">
                  <ref role="3cqZAo" node="b" resolve="props_MoleculeDefinitionReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="54" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sq" resolve="MoleculeDefinitionReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1l" role="3KbHQx">
            <node concept="3clFbS" id="5M" role="3Kbo56">
              <node concept="3clFbJ" id="5O" role="3cqZAp">
                <node concept="3clFbS" id="5Q" role="3clFbx">
                  <node concept="3cpWs8" id="5S" role="3cqZAp">
                    <node concept="3cpWsn" id="5V" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="5W" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="5X" role="33vP2m">
                        <node concept="1pGfFk" id="5Y" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5T" role="3cqZAp">
                    <node concept="2OqwBi" id="5Z" role="3clFbG">
                      <node concept="37vLTw" id="60" role="2Oq$k0">
                        <ref role="3cqZAo" node="5V" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="61" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <node concept="1adDum" id="62" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                          <node concept="cd27G" id="6a" role="lGtFl">
                            <node concept="3u3nmq" id="6b" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="63" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                          <node concept="cd27G" id="6c" role="lGtFl">
                            <node concept="3u3nmq" id="6d" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="64" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e84318eL" />
                          <node concept="cd27G" id="6e" role="lGtFl">
                            <node concept="3u3nmq" id="6f" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="65" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e843192L" />
                          <node concept="cd27G" id="6g" role="lGtFl">
                            <node concept="3u3nmq" id="6h" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="66" role="37wK5m">
                          <property role="Xl_RC" value="molecule" />
                          <node concept="cd27G" id="6i" role="lGtFl">
                            <node concept="3u3nmq" id="6j" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="67" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="6k" role="lGtFl">
                            <node concept="3u3nmq" id="6l" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="68" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="6m" role="lGtFl">
                            <node concept="3u3nmq" id="6n" role="cd27D">
                              <property role="3u3nmv" value="5100746287545069966" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="69" role="lGtFl">
                          <node concept="3u3nmq" id="6o" role="cd27D">
                            <property role="3u3nmv" value="5100746287545069966" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5U" role="3cqZAp">
                    <node concept="37vLTI" id="6p" role="3clFbG">
                      <node concept="2OqwBi" id="6q" role="37vLTx">
                        <node concept="37vLTw" id="6s" role="2Oq$k0">
                          <ref role="3cqZAo" node="5V" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6t" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6r" role="37vLTJ">
                        <ref role="3cqZAo" node="c" resolve="props_MoleculeReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5R" role="3clFbw">
                  <node concept="10Nm6u" id="6u" role="3uHU7w" />
                  <node concept="37vLTw" id="6v" role="3uHU7B">
                    <ref role="3cqZAo" node="c" resolve="props_MoleculeReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5P" role="3cqZAp">
                <node concept="37vLTw" id="6w" role="3cqZAk">
                  <ref role="3cqZAo" node="c" resolve="props_MoleculeReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="5N" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sr" resolve="MoleculeReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1m" role="3KbHQx">
            <node concept="3clFbS" id="6x" role="3Kbo56">
              <node concept="3clFbJ" id="6z" role="3cqZAp">
                <node concept="3clFbS" id="6_" role="3clFbx">
                  <node concept="3cpWs8" id="6B" role="3cqZAp">
                    <node concept="3cpWsn" id="6E" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="6F" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="6G" role="33vP2m">
                        <node concept="1pGfFk" id="6H" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6C" role="3cqZAp">
                    <node concept="2OqwBi" id="6I" role="3clFbG">
                      <node concept="37vLTw" id="6J" role="2Oq$k0">
                        <ref role="3cqZAo" node="6E" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="6K" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="6L" role="lGtFl">
                          <node concept="3u3nmq" id="6M" role="cd27D">
                            <property role="3u3nmv" value="5092104245164390915" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6D" role="3cqZAp">
                    <node concept="37vLTI" id="6N" role="3clFbG">
                      <node concept="2OqwBi" id="6O" role="37vLTx">
                        <node concept="37vLTw" id="6Q" role="2Oq$k0">
                          <ref role="3cqZAo" node="6E" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="6R" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6P" role="37vLTJ">
                        <ref role="3cqZAo" node="d" resolve="props_NamedConstant" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="6A" role="3clFbw">
                  <node concept="10Nm6u" id="6S" role="3uHU7w" />
                  <node concept="37vLTw" id="6T" role="3uHU7B">
                    <ref role="3cqZAo" node="d" resolve="props_NamedConstant" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6$" role="3cqZAp">
                <node concept="37vLTw" id="6U" role="3cqZAk">
                  <ref role="3cqZAo" node="d" resolve="props_NamedConstant" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6y" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ss" resolve="NamedConstant" />
            </node>
          </node>
          <node concept="3KbdKl" id="1n" role="3KbHQx">
            <node concept="3clFbS" id="6V" role="3Kbo56">
              <node concept="3clFbJ" id="6X" role="3cqZAp">
                <node concept="3clFbS" id="6Z" role="3clFbx">
                  <node concept="3cpWs8" id="71" role="3cqZAp">
                    <node concept="3cpWsn" id="74" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="75" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="76" role="33vP2m">
                        <node concept="1pGfFk" id="77" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="72" role="3cqZAp">
                    <node concept="2OqwBi" id="78" role="3clFbG">
                      <node concept="37vLTw" id="79" role="2Oq$k0">
                        <ref role="3cqZAo" node="74" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="7a" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByReference(long,long,long,long,java.lang.String,java.lang.String,java.lang.String)" resolve="presentationByReference" />
                        <node concept="1adDum" id="7b" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                          <node concept="cd27G" id="7j" role="lGtFl">
                            <node concept="3u3nmq" id="7k" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="7c" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                          <node concept="cd27G" id="7l" role="lGtFl">
                            <node concept="3u3nmq" id="7m" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="7d" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e859c65L" />
                          <node concept="cd27G" id="7n" role="lGtFl">
                            <node concept="3u3nmq" id="7o" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="1adDum" id="7e" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e859c66L" />
                          <node concept="cd27G" id="7p" role="lGtFl">
                            <node concept="3u3nmq" id="7q" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7f" role="37wK5m">
                          <property role="Xl_RC" value="ref" />
                          <node concept="cd27G" id="7r" role="lGtFl">
                            <node concept="3u3nmq" id="7s" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7g" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="7t" role="lGtFl">
                            <node concept="3u3nmq" id="7u" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="7h" role="37wK5m">
                          <property role="Xl_RC" value="" />
                          <node concept="cd27G" id="7v" role="lGtFl">
                            <node concept="3u3nmq" id="7w" role="cd27D">
                              <property role="3u3nmv" value="5100746287545162853" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="7i" role="lGtFl">
                          <node concept="3u3nmq" id="7x" role="cd27D">
                            <property role="3u3nmv" value="5100746287545162853" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="73" role="3cqZAp">
                    <node concept="37vLTI" id="7y" role="3clFbG">
                      <node concept="2OqwBi" id="7z" role="37vLTx">
                        <node concept="37vLTw" id="7_" role="2Oq$k0">
                          <ref role="3cqZAo" node="74" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7A" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7$" role="37vLTJ">
                        <ref role="3cqZAo" node="e" resolve="props_NamedConstantReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="70" role="3clFbw">
                  <node concept="10Nm6u" id="7B" role="3uHU7w" />
                  <node concept="37vLTw" id="7C" role="3uHU7B">
                    <ref role="3cqZAo" node="e" resolve="props_NamedConstantReference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6Y" role="3cqZAp">
                <node concept="37vLTw" id="7D" role="3cqZAk">
                  <ref role="3cqZAo" node="e" resolve="props_NamedConstantReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="6W" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="st" resolve="NamedConstantReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="1o" role="3KbHQx">
            <node concept="3clFbS" id="7E" role="3Kbo56">
              <node concept="3clFbJ" id="7G" role="3cqZAp">
                <node concept="3clFbS" id="7I" role="3clFbx">
                  <node concept="3cpWs8" id="7K" role="3cqZAp">
                    <node concept="3cpWsn" id="7M" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="7N" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="7O" role="33vP2m">
                        <node concept="1pGfFk" id="7P" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="7L" role="3cqZAp">
                    <node concept="37vLTI" id="7Q" role="3clFbG">
                      <node concept="2OqwBi" id="7R" role="37vLTx">
                        <node concept="37vLTw" id="7T" role="2Oq$k0">
                          <ref role="3cqZAo" node="7M" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="7U" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7S" role="37vLTJ">
                        <ref role="3cqZAo" node="f" resolve="props_SignalPathway" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="7J" role="3clFbw">
                  <node concept="10Nm6u" id="7V" role="3uHU7w" />
                  <node concept="37vLTw" id="7W" role="3uHU7B">
                    <ref role="3cqZAo" node="f" resolve="props_SignalPathway" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7H" role="3cqZAp">
                <node concept="37vLTw" id="7X" role="3cqZAk">
                  <ref role="3cqZAo" node="f" resolve="props_SignalPathway" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7F" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="su" resolve="SignalPathway" />
            </node>
          </node>
          <node concept="3KbdKl" id="1p" role="3KbHQx">
            <node concept="3clFbS" id="7Y" role="3Kbo56">
              <node concept="3clFbJ" id="80" role="3cqZAp">
                <node concept="3clFbS" id="82" role="3clFbx">
                  <node concept="3cpWs8" id="84" role="3cqZAp">
                    <node concept="3cpWsn" id="87" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="88" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="89" role="33vP2m">
                        <node concept="1pGfFk" id="8a" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="85" role="3cqZAp">
                    <node concept="2OqwBi" id="8b" role="3clFbG">
                      <node concept="37vLTw" id="8c" role="2Oq$k0">
                        <ref role="3cqZAo" node="87" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8d" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="8e" role="lGtFl">
                          <node concept="3u3nmq" id="8f" role="cd27D">
                            <property role="3u3nmv" value="4049080668885031263" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="86" role="3cqZAp">
                    <node concept="37vLTI" id="8g" role="3clFbG">
                      <node concept="2OqwBi" id="8h" role="37vLTx">
                        <node concept="37vLTw" id="8j" role="2Oq$k0">
                          <ref role="3cqZAo" node="87" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8k" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8i" role="37vLTJ">
                        <ref role="3cqZAo" node="g" resolve="props_Space" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="83" role="3clFbw">
                  <node concept="10Nm6u" id="8l" role="3uHU7w" />
                  <node concept="37vLTw" id="8m" role="3uHU7B">
                    <ref role="3cqZAo" node="g" resolve="props_Space" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="81" role="3cqZAp">
                <node concept="37vLTw" id="8n" role="3cqZAk">
                  <ref role="3cqZAo" node="g" resolve="props_Space" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="7Z" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sv" resolve="Space" />
            </node>
          </node>
          <node concept="3KbdKl" id="1q" role="3KbHQx">
            <node concept="3clFbS" id="8o" role="3Kbo56">
              <node concept="3clFbJ" id="8q" role="3cqZAp">
                <node concept="3clFbS" id="8s" role="3clFbx">
                  <node concept="3cpWs8" id="8u" role="3cqZAp">
                    <node concept="3cpWsn" id="8x" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8y" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="8z" role="33vP2m">
                        <node concept="1pGfFk" id="8$" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8v" role="3cqZAp">
                    <node concept="2OqwBi" id="8_" role="3clFbG">
                      <node concept="37vLTw" id="8A" role="2Oq$k0">
                        <ref role="3cqZAo" node="8x" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="8B" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.rawPresentation(java.lang.String)" resolve="rawPresentation" />
                        <node concept="Xl_RD" id="8C" role="37wK5m">
                          <property role="Xl_RC" value="Stage" />
                          <node concept="cd27G" id="8E" role="lGtFl">
                            <node concept="3u3nmq" id="8F" role="cd27D">
                              <property role="3u3nmv" value="5092104245164355773" />
                            </node>
                          </node>
                        </node>
                        <node concept="cd27G" id="8D" role="lGtFl">
                          <node concept="3u3nmq" id="8G" role="cd27D">
                            <property role="3u3nmv" value="5092104245164355773" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8w" role="3cqZAp">
                    <node concept="37vLTI" id="8H" role="3clFbG">
                      <node concept="2OqwBi" id="8I" role="37vLTx">
                        <node concept="37vLTw" id="8K" role="2Oq$k0">
                          <ref role="3cqZAo" node="8x" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="8L" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="8J" role="37vLTJ">
                        <ref role="3cqZAo" node="h" resolve="props_Stage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8t" role="3clFbw">
                  <node concept="10Nm6u" id="8M" role="3uHU7w" />
                  <node concept="37vLTw" id="8N" role="3uHU7B">
                    <ref role="3cqZAo" node="h" resolve="props_Stage" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8r" role="3cqZAp">
                <node concept="37vLTw" id="8O" role="3cqZAk">
                  <ref role="3cqZAo" node="h" resolve="props_Stage" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8p" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sw" resolve="Stage" />
            </node>
          </node>
          <node concept="3KbdKl" id="1r" role="3KbHQx">
            <node concept="3clFbS" id="8P" role="3Kbo56">
              <node concept="3clFbJ" id="8R" role="3cqZAp">
                <node concept="3clFbS" id="8T" role="3clFbx">
                  <node concept="3cpWs8" id="8V" role="3cqZAp">
                    <node concept="3cpWsn" id="8Y" role="3cpWs9">
                      <property role="TrG5h" value="cpb" />
                      <node concept="3uibUv" id="8Z" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ConceptPresentationBuilder" resolve="ConceptPresentationBuilder" />
                      </node>
                      <node concept="2ShNRf" id="90" role="33vP2m">
                        <node concept="1pGfFk" id="91" role="2ShVmc">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.&lt;init&gt;()" resolve="ConceptPresentationBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8W" role="3cqZAp">
                    <node concept="2OqwBi" id="92" role="3clFbG">
                      <node concept="37vLTw" id="93" role="2Oq$k0">
                        <ref role="3cqZAo" node="8Y" resolve="cpb" />
                      </node>
                      <node concept="liA8E" id="94" role="2OqNvi">
                        <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.presentationByName()" resolve="presentationByName" />
                        <node concept="cd27G" id="95" role="lGtFl">
                          <node concept="3u3nmq" id="96" role="cd27D">
                            <property role="3u3nmv" value="4049080668885031147" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="8X" role="3cqZAp">
                    <node concept="37vLTI" id="97" role="3clFbG">
                      <node concept="2OqwBi" id="98" role="37vLTx">
                        <node concept="37vLTw" id="9a" role="2Oq$k0">
                          <ref role="3cqZAo" node="8Y" resolve="cpb" />
                        </node>
                        <node concept="liA8E" id="9b" role="2OqNvi">
                          <ref role="37wK5l" to="ze1i:~ConceptPresentationBuilder.create()" resolve="create" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="99" role="37vLTJ">
                        <ref role="3cqZAo" node="i" resolve="props_StemCell" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="8U" role="3clFbw">
                  <node concept="10Nm6u" id="9c" role="3uHU7w" />
                  <node concept="37vLTw" id="9d" role="3uHU7B">
                    <ref role="3cqZAo" node="i" resolve="props_StemCell" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="8S" role="3cqZAp">
                <node concept="37vLTw" id="9e" role="3cqZAk">
                  <ref role="3cqZAo" node="i" resolve="props_StemCell" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="8Q" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sx" resolve="StemCell" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="11" role="3cqZAp">
          <node concept="10Nm6u" id="9f" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="V" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptPresentation" resolve="ConceptPresentation" />
      </node>
      <node concept="2AHcQZ" id="W" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="X" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="9g">
    <property role="TrG5h" value="EnumerationDescriptor_ConditionType" />
    <node concept="2tJIrI" id="9h" role="jymVt">
      <node concept="cd27G" id="9w" role="lGtFl">
        <node concept="3u3nmq" id="9x" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="9i" role="jymVt">
      <node concept="3cqZAl" id="9y" role="3clF45">
        <node concept="cd27G" id="9A" role="lGtFl">
          <node concept="3u3nmq" id="9B" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="9z" role="1B3o_S">
        <node concept="cd27G" id="9C" role="lGtFl">
          <node concept="3u3nmq" id="9D" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="9$" role="3clF47">
        <node concept="XkiVB" id="9E" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <node concept="1adDum" id="9G" role="37wK5m">
            <property role="1adDun" value="0x9edcd71856d444c5L" />
            <node concept="cd27G" id="9N" role="lGtFl">
              <node concept="3u3nmq" id="9O" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="9H" role="37wK5m">
            <property role="1adDun" value="0xae868ea31c5d7fbbL" />
            <node concept="cd27G" id="9P" role="lGtFl">
              <node concept="3u3nmq" id="9Q" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="9I" role="37wK5m">
            <property role="1adDun" value="0x5719c93ddd807d0aL" />
            <node concept="cd27G" id="9R" role="lGtFl">
              <node concept="3u3nmq" id="9S" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="9J" role="37wK5m">
            <property role="Xl_RC" value="ConditionType" />
            <node concept="cd27G" id="9T" role="lGtFl">
              <node concept="3u3nmq" id="9U" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="9K" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870218" />
            <node concept="cd27G" id="9V" role="lGtFl">
              <node concept="3u3nmq" id="9W" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Rm8GO" id="9L" role="37wK5m">
            <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
            <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
            <node concept="cd27G" id="9X" role="lGtFl">
              <node concept="3u3nmq" id="9Y" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="9M" role="lGtFl">
            <node concept="3u3nmq" id="9Z" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="9F" role="lGtFl">
          <node concept="3u3nmq" id="a0" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="9_" role="lGtFl">
        <node concept="3u3nmq" id="a1" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9j" role="jymVt">
      <node concept="cd27G" id="a2" role="lGtFl">
        <node concept="3u3nmq" id="a3" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9k" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_rule_0" />
      <node concept="3Tm6S6" id="a4" role="1B3o_S">
        <node concept="cd27G" id="a8" role="lGtFl">
          <node concept="3u3nmq" id="a9" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="a5" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="aa" role="lGtFl">
          <node concept="3u3nmq" id="ab" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="a6" role="33vP2m">
        <node concept="1pGfFk" id="ac" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="ae" role="37wK5m">
            <property role="Xl_RC" value="rule" />
            <node concept="cd27G" id="aj" role="lGtFl">
              <node concept="3u3nmq" id="ak" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="af" role="37wK5m">
            <property role="Xl_RC" value="Rule" />
            <node concept="cd27G" id="al" role="lGtFl">
              <node concept="3u3nmq" id="am" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="ag" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870219" />
            <node concept="cd27G" id="an" role="lGtFl">
              <node concept="3u3nmq" id="ao" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="ah" role="37wK5m">
            <property role="Xl_RC" value="Rule" />
            <node concept="cd27G" id="ap" role="lGtFl">
              <node concept="3u3nmq" id="aq" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="ai" role="lGtFl">
            <node concept="3u3nmq" id="ar" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="ad" role="lGtFl">
          <node concept="3u3nmq" id="as" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="a7" role="lGtFl">
        <node concept="3u3nmq" id="at" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9l" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_probability_0" />
      <node concept="3Tm6S6" id="au" role="1B3o_S">
        <node concept="cd27G" id="ay" role="lGtFl">
          <node concept="3u3nmq" id="az" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="av" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="a$" role="lGtFl">
          <node concept="3u3nmq" id="a_" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="aw" role="33vP2m">
        <node concept="1pGfFk" id="aA" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="aC" role="37wK5m">
            <property role="Xl_RC" value="probability" />
            <node concept="cd27G" id="aH" role="lGtFl">
              <node concept="3u3nmq" id="aI" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="aD" role="37wK5m">
            <property role="Xl_RC" value="Probability" />
            <node concept="cd27G" id="aJ" role="lGtFl">
              <node concept="3u3nmq" id="aK" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="aE" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870220" />
            <node concept="cd27G" id="aL" role="lGtFl">
              <node concept="3u3nmq" id="aM" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="aF" role="37wK5m">
            <property role="Xl_RC" value="Probability" />
            <node concept="cd27G" id="aN" role="lGtFl">
              <node concept="3u3nmq" id="aO" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="aG" role="lGtFl">
            <node concept="3u3nmq" id="aP" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="aB" role="lGtFl">
          <node concept="3u3nmq" id="aQ" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="ax" role="lGtFl">
        <node concept="3u3nmq" id="aR" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="9m" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_distribution_0" />
      <node concept="3Tm6S6" id="aS" role="1B3o_S">
        <node concept="cd27G" id="aW" role="lGtFl">
          <node concept="3u3nmq" id="aX" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="aT" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="aY" role="lGtFl">
          <node concept="3u3nmq" id="aZ" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="aU" role="33vP2m">
        <node concept="1pGfFk" id="b0" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="b2" role="37wK5m">
            <property role="Xl_RC" value="distribution" />
            <node concept="cd27G" id="b7" role="lGtFl">
              <node concept="3u3nmq" id="b8" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="b3" role="37wK5m">
            <property role="Xl_RC" value="Distribution" />
            <node concept="cd27G" id="b9" role="lGtFl">
              <node concept="3u3nmq" id="ba" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="b4" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/2453142626153004934" />
            <node concept="cd27G" id="bb" role="lGtFl">
              <node concept="3u3nmq" id="bc" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="b5" role="37wK5m">
            <property role="Xl_RC" value="Distribution" />
            <node concept="cd27G" id="bd" role="lGtFl">
              <node concept="3u3nmq" id="be" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="b6" role="lGtFl">
            <node concept="3u3nmq" id="bf" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="b1" role="lGtFl">
          <node concept="3u3nmq" id="bg" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="aV" role="lGtFl">
        <node concept="3u3nmq" id="bh" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="9n" role="1B3o_S">
      <node concept="cd27G" id="bi" role="lGtFl">
        <node concept="3u3nmq" id="bj" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="9o" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <node concept="cd27G" id="bk" role="lGtFl">
        <node concept="3u3nmq" id="bl" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9p" role="jymVt">
      <node concept="cd27G" id="bm" role="lGtFl">
        <node concept="3u3nmq" id="bn" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="9q" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <node concept="3Tm1VV" id="bo" role="1B3o_S">
        <node concept="cd27G" id="bu" role="lGtFl">
          <node concept="3u3nmq" id="bv" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="bw" role="lGtFl">
          <node concept="3u3nmq" id="bx" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="bq" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="by" role="lGtFl">
          <node concept="3u3nmq" id="bz" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="br" role="3clF47">
        <node concept="3clFbF" id="b$" role="3cqZAp">
          <node concept="37vLTw" id="bA" role="3clFbG">
            <ref role="3cqZAo" node="9k" resolve="VALUE_rule_0" />
            <node concept="cd27G" id="bC" role="lGtFl">
              <node concept="3u3nmq" id="bD" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="bB" role="lGtFl">
            <node concept="3u3nmq" id="bE" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="b_" role="lGtFl">
          <node concept="3u3nmq" id="bF" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="bG" role="lGtFl">
          <node concept="3u3nmq" id="bH" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="bt" role="lGtFl">
        <node concept="3u3nmq" id="bI" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9r" role="jymVt">
      <node concept="cd27G" id="bJ" role="lGtFl">
        <node concept="3u3nmq" id="bK" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="9s" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <node concept="3Tm1VV" id="bL" role="1B3o_S">
        <node concept="cd27G" id="bR" role="lGtFl">
          <node concept="3u3nmq" id="bS" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <node concept="cd27G" id="bT" role="lGtFl">
          <node concept="3u3nmq" id="bU" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="bN" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="bV" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="cd27G" id="bX" role="lGtFl">
            <node concept="3u3nmq" id="bY" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="bW" role="lGtFl">
          <node concept="3u3nmq" id="bZ" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="bO" role="3clF47">
        <node concept="3cpWs6" id="c0" role="3cqZAp">
          <node concept="2YIFZM" id="c2" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="c4" role="37wK5m">
              <ref role="3cqZAo" node="9k" resolve="VALUE_rule_0" />
              <node concept="cd27G" id="c8" role="lGtFl">
                <node concept="3u3nmq" id="c9" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="c5" role="37wK5m">
              <ref role="3cqZAo" node="9l" resolve="VALUE_probability_0" />
              <node concept="cd27G" id="ca" role="lGtFl">
                <node concept="3u3nmq" id="cb" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="c6" role="37wK5m">
              <ref role="3cqZAo" node="9m" resolve="VALUE_distribution_0" />
              <node concept="cd27G" id="cc" role="lGtFl">
                <node concept="3u3nmq" id="cd" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="c7" role="lGtFl">
              <node concept="3u3nmq" id="ce" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="c3" role="lGtFl">
            <node concept="3u3nmq" id="cf" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="c1" role="lGtFl">
          <node concept="3u3nmq" id="cg" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="ch" role="lGtFl">
          <node concept="3u3nmq" id="ci" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="bQ" role="lGtFl">
        <node concept="3u3nmq" id="cj" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="9t" role="jymVt">
      <node concept="cd27G" id="ck" role="lGtFl">
        <node concept="3u3nmq" id="cl" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="9u" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <node concept="3Tm1VV" id="cm" role="1B3o_S">
        <node concept="cd27G" id="ct" role="lGtFl">
          <node concept="3u3nmq" id="cu" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="cv" role="lGtFl">
          <node concept="3u3nmq" id="cw" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="co" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="cx" role="lGtFl">
          <node concept="3u3nmq" id="cy" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="cp" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="cz" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <node concept="cd27G" id="cA" role="lGtFl">
            <node concept="3u3nmq" id="cB" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="c$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <node concept="cd27G" id="cC" role="lGtFl">
            <node concept="3u3nmq" id="cD" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="c_" role="lGtFl">
          <node concept="3u3nmq" id="cE" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="cq" role="3clF47">
        <node concept="3clFbJ" id="cF" role="3cqZAp">
          <node concept="3clFbS" id="cJ" role="3clFbx">
            <node concept="3cpWs6" id="cM" role="3cqZAp">
              <node concept="10Nm6u" id="cO" role="3cqZAk">
                <node concept="cd27G" id="cQ" role="lGtFl">
                  <node concept="3u3nmq" id="cR" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870218" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="cP" role="lGtFl">
                <node concept="3u3nmq" id="cS" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="cN" role="lGtFl">
              <node concept="3u3nmq" id="cT" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="cK" role="3clFbw">
            <node concept="10Nm6u" id="cU" role="3uHU7w">
              <node concept="cd27G" id="cX" role="lGtFl">
                <node concept="3u3nmq" id="cY" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="cV" role="3uHU7B">
              <ref role="3cqZAo" node="cp" resolve="string" />
              <node concept="cd27G" id="cZ" role="lGtFl">
                <node concept="3u3nmq" id="d0" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="cW" role="lGtFl">
              <node concept="3u3nmq" id="d1" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="cL" role="lGtFl">
            <node concept="3u3nmq" id="d2" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="cG" role="3cqZAp">
          <node concept="37vLTw" id="d3" role="3KbGdf">
            <ref role="3cqZAo" node="cp" resolve="string" />
            <node concept="cd27G" id="d8" role="lGtFl">
              <node concept="3u3nmq" id="d9" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="d4" role="3KbHQx">
            <node concept="Xl_RD" id="da" role="3Kbmr1">
              <property role="Xl_RC" value="rule" />
              <node concept="cd27G" id="dd" role="lGtFl">
                <node concept="3u3nmq" id="de" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="db" role="3Kbo56">
              <node concept="3cpWs6" id="df" role="3cqZAp">
                <node concept="37vLTw" id="dh" role="3cqZAk">
                  <ref role="3cqZAo" node="9k" resolve="VALUE_rule_0" />
                  <node concept="cd27G" id="dj" role="lGtFl">
                    <node concept="3u3nmq" id="dk" role="cd27D">
                      <property role="3u3nmv" value="6276268823263870218" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="di" role="lGtFl">
                  <node concept="3u3nmq" id="dl" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870218" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="dg" role="lGtFl">
                <node concept="3u3nmq" id="dm" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="dc" role="lGtFl">
              <node concept="3u3nmq" id="dn" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="d5" role="3KbHQx">
            <node concept="Xl_RD" id="do" role="3Kbmr1">
              <property role="Xl_RC" value="probability" />
              <node concept="cd27G" id="dr" role="lGtFl">
                <node concept="3u3nmq" id="ds" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="dp" role="3Kbo56">
              <node concept="3cpWs6" id="dt" role="3cqZAp">
                <node concept="37vLTw" id="dv" role="3cqZAk">
                  <ref role="3cqZAo" node="9l" resolve="VALUE_probability_0" />
                  <node concept="cd27G" id="dx" role="lGtFl">
                    <node concept="3u3nmq" id="dy" role="cd27D">
                      <property role="3u3nmv" value="6276268823263870218" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="dw" role="lGtFl">
                  <node concept="3u3nmq" id="dz" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870218" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="du" role="lGtFl">
                <node concept="3u3nmq" id="d$" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="dq" role="lGtFl">
              <node concept="3u3nmq" id="d_" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="d6" role="3KbHQx">
            <node concept="Xl_RD" id="dA" role="3Kbmr1">
              <property role="Xl_RC" value="distribution" />
              <node concept="cd27G" id="dD" role="lGtFl">
                <node concept="3u3nmq" id="dE" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="dB" role="3Kbo56">
              <node concept="3cpWs6" id="dF" role="3cqZAp">
                <node concept="37vLTw" id="dH" role="3cqZAk">
                  <ref role="3cqZAo" node="9m" resolve="VALUE_distribution_0" />
                  <node concept="cd27G" id="dJ" role="lGtFl">
                    <node concept="3u3nmq" id="dK" role="cd27D">
                      <property role="3u3nmv" value="6276268823263870218" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="dI" role="lGtFl">
                  <node concept="3u3nmq" id="dL" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870218" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="dG" role="lGtFl">
                <node concept="3u3nmq" id="dM" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870218" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="dC" role="lGtFl">
              <node concept="3u3nmq" id="dN" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="d7" role="lGtFl">
            <node concept="3u3nmq" id="dO" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="cH" role="3cqZAp">
          <node concept="10Nm6u" id="dP" role="3cqZAk">
            <node concept="cd27G" id="dR" role="lGtFl">
              <node concept="3u3nmq" id="dS" role="cd27D">
                <property role="3u3nmv" value="6276268823263870218" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="dQ" role="lGtFl">
            <node concept="3u3nmq" id="dT" role="cd27D">
              <property role="3u3nmv" value="6276268823263870218" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="cI" role="lGtFl">
          <node concept="3u3nmq" id="dU" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="cr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="dV" role="lGtFl">
          <node concept="3u3nmq" id="dW" role="cd27D">
            <property role="3u3nmv" value="6276268823263870218" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="cs" role="lGtFl">
        <node concept="3u3nmq" id="dX" role="cd27D">
          <property role="3u3nmv" value="6276268823263870218" />
        </node>
      </node>
    </node>
    <node concept="cd27G" id="9v" role="lGtFl">
      <node concept="3u3nmq" id="dY" role="cd27D">
        <property role="3u3nmv" value="6276268823263870218" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="dZ">
    <property role="TrG5h" value="EnumerationDescriptor_MechanismType" />
    <node concept="2tJIrI" id="e0" role="jymVt">
      <node concept="cd27G" id="ed" role="lGtFl">
        <node concept="3u3nmq" id="ee" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="e1" role="jymVt">
      <node concept="3cqZAl" id="ef" role="3clF45">
        <node concept="cd27G" id="ej" role="lGtFl">
          <node concept="3u3nmq" id="ek" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="eg" role="1B3o_S">
        <node concept="cd27G" id="el" role="lGtFl">
          <node concept="3u3nmq" id="em" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="eh" role="3clF47">
        <node concept="XkiVB" id="en" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <node concept="1adDum" id="ep" role="37wK5m">
            <property role="1adDun" value="0x9edcd71856d444c5L" />
            <node concept="cd27G" id="ew" role="lGtFl">
              <node concept="3u3nmq" id="ex" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="eq" role="37wK5m">
            <property role="1adDun" value="0xae868ea31c5d7fbbL" />
            <node concept="cd27G" id="ey" role="lGtFl">
              <node concept="3u3nmq" id="ez" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="er" role="37wK5m">
            <property role="1adDun" value="0x46c97db93e84e5f7L" />
            <node concept="cd27G" id="e$" role="lGtFl">
              <node concept="3u3nmq" id="e_" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="es" role="37wK5m">
            <property role="Xl_RC" value="MechanismType" />
            <node concept="cd27G" id="eA" role="lGtFl">
              <node concept="3u3nmq" id="eB" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="et" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287545116151" />
            <node concept="cd27G" id="eC" role="lGtFl">
              <node concept="3u3nmq" id="eD" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Rm8GO" id="eu" role="37wK5m">
            <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
            <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
            <node concept="cd27G" id="eE" role="lGtFl">
              <node concept="3u3nmq" id="eF" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="ev" role="lGtFl">
            <node concept="3u3nmq" id="eG" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="eo" role="lGtFl">
          <node concept="3u3nmq" id="eH" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="ei" role="lGtFl">
        <node concept="3u3nmq" id="eI" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="e2" role="jymVt">
      <node concept="cd27G" id="eJ" role="lGtFl">
        <node concept="3u3nmq" id="eK" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="e3" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_cyclic_0" />
      <node concept="3Tm6S6" id="eL" role="1B3o_S">
        <node concept="cd27G" id="eP" role="lGtFl">
          <node concept="3u3nmq" id="eQ" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="eM" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="eR" role="lGtFl">
          <node concept="3u3nmq" id="eS" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="eN" role="33vP2m">
        <node concept="1pGfFk" id="eT" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="eV" role="37wK5m">
            <property role="Xl_RC" value="cyclic" />
            <node concept="cd27G" id="f0" role="lGtFl">
              <node concept="3u3nmq" id="f1" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="eW" role="37wK5m">
            <property role="Xl_RC" value="cyclic" />
            <node concept="cd27G" id="f2" role="lGtFl">
              <node concept="3u3nmq" id="f3" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="eX" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287545116152" />
            <node concept="cd27G" id="f4" role="lGtFl">
              <node concept="3u3nmq" id="f5" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="eY" role="37wK5m">
            <property role="Xl_RC" value="cyclic" />
            <node concept="cd27G" id="f6" role="lGtFl">
              <node concept="3u3nmq" id="f7" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="eZ" role="lGtFl">
            <node concept="3u3nmq" id="f8" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="eU" role="lGtFl">
          <node concept="3u3nmq" id="f9" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="eO" role="lGtFl">
        <node concept="3u3nmq" id="fa" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="e4" role="1B3o_S">
      <node concept="cd27G" id="fb" role="lGtFl">
        <node concept="3u3nmq" id="fc" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="e5" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <node concept="cd27G" id="fd" role="lGtFl">
        <node concept="3u3nmq" id="fe" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="e6" role="jymVt">
      <node concept="cd27G" id="ff" role="lGtFl">
        <node concept="3u3nmq" id="fg" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="e7" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <node concept="3Tm1VV" id="fh" role="1B3o_S">
        <node concept="cd27G" id="fn" role="lGtFl">
          <node concept="3u3nmq" id="fo" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="fp" role="lGtFl">
          <node concept="3u3nmq" id="fq" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="fj" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="fr" role="lGtFl">
          <node concept="3u3nmq" id="fs" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="fk" role="3clF47">
        <node concept="3clFbF" id="ft" role="3cqZAp">
          <node concept="10Nm6u" id="fv" role="3clFbG">
            <node concept="cd27G" id="fx" role="lGtFl">
              <node concept="3u3nmq" id="fy" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="fw" role="lGtFl">
            <node concept="3u3nmq" id="fz" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="fu" role="lGtFl">
          <node concept="3u3nmq" id="f$" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="f_" role="lGtFl">
          <node concept="3u3nmq" id="fA" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="fm" role="lGtFl">
        <node concept="3u3nmq" id="fB" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="e8" role="jymVt">
      <node concept="cd27G" id="fC" role="lGtFl">
        <node concept="3u3nmq" id="fD" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="e9" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <node concept="3Tm1VV" id="fE" role="1B3o_S">
        <node concept="cd27G" id="fK" role="lGtFl">
          <node concept="3u3nmq" id="fL" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <node concept="cd27G" id="fM" role="lGtFl">
          <node concept="3u3nmq" id="fN" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="fG" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="fO" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="cd27G" id="fQ" role="lGtFl">
            <node concept="3u3nmq" id="fR" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="fP" role="lGtFl">
          <node concept="3u3nmq" id="fS" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="fH" role="3clF47">
        <node concept="3cpWs6" id="fT" role="3cqZAp">
          <node concept="2YIFZM" id="fV" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="fX" role="37wK5m">
              <ref role="3cqZAo" node="e3" resolve="VALUE_cyclic_0" />
              <node concept="cd27G" id="fZ" role="lGtFl">
                <node concept="3u3nmq" id="g0" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="fY" role="lGtFl">
              <node concept="3u3nmq" id="g1" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="fW" role="lGtFl">
            <node concept="3u3nmq" id="g2" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="fU" role="lGtFl">
          <node concept="3u3nmq" id="g3" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="fI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="g4" role="lGtFl">
          <node concept="3u3nmq" id="g5" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="fJ" role="lGtFl">
        <node concept="3u3nmq" id="g6" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="ea" role="jymVt">
      <node concept="cd27G" id="g7" role="lGtFl">
        <node concept="3u3nmq" id="g8" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="eb" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <node concept="3Tm1VV" id="g9" role="1B3o_S">
        <node concept="cd27G" id="gg" role="lGtFl">
          <node concept="3u3nmq" id="gh" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ga" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="gi" role="lGtFl">
          <node concept="3u3nmq" id="gj" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="gb" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="gk" role="lGtFl">
          <node concept="3u3nmq" id="gl" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="gc" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="gm" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <node concept="cd27G" id="gp" role="lGtFl">
            <node concept="3u3nmq" id="gq" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="gn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <node concept="cd27G" id="gr" role="lGtFl">
            <node concept="3u3nmq" id="gs" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="go" role="lGtFl">
          <node concept="3u3nmq" id="gt" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="gd" role="3clF47">
        <node concept="3clFbJ" id="gu" role="3cqZAp">
          <node concept="3clFbS" id="gy" role="3clFbx">
            <node concept="3cpWs6" id="g_" role="3cqZAp">
              <node concept="10Nm6u" id="gB" role="3cqZAk">
                <node concept="cd27G" id="gD" role="lGtFl">
                  <node concept="3u3nmq" id="gE" role="cd27D">
                    <property role="3u3nmv" value="5100746287545116151" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="gC" role="lGtFl">
                <node concept="3u3nmq" id="gF" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="gA" role="lGtFl">
              <node concept="3u3nmq" id="gG" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="gz" role="3clFbw">
            <node concept="10Nm6u" id="gH" role="3uHU7w">
              <node concept="cd27G" id="gK" role="lGtFl">
                <node concept="3u3nmq" id="gL" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="gI" role="3uHU7B">
              <ref role="3cqZAo" node="gc" resolve="string" />
              <node concept="cd27G" id="gM" role="lGtFl">
                <node concept="3u3nmq" id="gN" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="gJ" role="lGtFl">
              <node concept="3u3nmq" id="gO" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="g$" role="lGtFl">
            <node concept="3u3nmq" id="gP" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="gv" role="3cqZAp">
          <node concept="37vLTw" id="gQ" role="3KbGdf">
            <ref role="3cqZAo" node="gc" resolve="string" />
            <node concept="cd27G" id="gT" role="lGtFl">
              <node concept="3u3nmq" id="gU" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="gR" role="3KbHQx">
            <node concept="Xl_RD" id="gV" role="3Kbmr1">
              <property role="Xl_RC" value="cyclic" />
              <node concept="cd27G" id="gY" role="lGtFl">
                <node concept="3u3nmq" id="gZ" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="gW" role="3Kbo56">
              <node concept="3cpWs6" id="h0" role="3cqZAp">
                <node concept="37vLTw" id="h2" role="3cqZAk">
                  <ref role="3cqZAo" node="e3" resolve="VALUE_cyclic_0" />
                  <node concept="cd27G" id="h4" role="lGtFl">
                    <node concept="3u3nmq" id="h5" role="cd27D">
                      <property role="3u3nmv" value="5100746287545116151" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="h3" role="lGtFl">
                  <node concept="3u3nmq" id="h6" role="cd27D">
                    <property role="3u3nmv" value="5100746287545116151" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="h1" role="lGtFl">
                <node concept="3u3nmq" id="h7" role="cd27D">
                  <property role="3u3nmv" value="5100746287545116151" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="gX" role="lGtFl">
              <node concept="3u3nmq" id="h8" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="gS" role="lGtFl">
            <node concept="3u3nmq" id="h9" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="gw" role="3cqZAp">
          <node concept="10Nm6u" id="ha" role="3cqZAk">
            <node concept="cd27G" id="hc" role="lGtFl">
              <node concept="3u3nmq" id="hd" role="cd27D">
                <property role="3u3nmv" value="5100746287545116151" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="hb" role="lGtFl">
            <node concept="3u3nmq" id="he" role="cd27D">
              <property role="3u3nmv" value="5100746287545116151" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="gx" role="lGtFl">
          <node concept="3u3nmq" id="hf" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ge" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="hg" role="lGtFl">
          <node concept="3u3nmq" id="hh" role="cd27D">
            <property role="3u3nmv" value="5100746287545116151" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="gf" role="lGtFl">
        <node concept="3u3nmq" id="hi" role="cd27D">
          <property role="3u3nmv" value="5100746287545116151" />
        </node>
      </node>
    </node>
    <node concept="cd27G" id="ec" role="lGtFl">
      <node concept="3u3nmq" id="hj" role="cd27D">
        <property role="3u3nmv" value="5100746287545116151" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="hk">
    <property role="TrG5h" value="EnumerationDescriptor_MoleculeType" />
    <node concept="2tJIrI" id="hl" role="jymVt">
      <node concept="cd27G" id="h_" role="lGtFl">
        <node concept="3u3nmq" id="hA" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="hm" role="jymVt">
      <node concept="3cqZAl" id="hB" role="3clF45">
        <node concept="cd27G" id="hF" role="lGtFl">
          <node concept="3u3nmq" id="hG" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="hC" role="1B3o_S">
        <node concept="cd27G" id="hH" role="lGtFl">
          <node concept="3u3nmq" id="hI" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="hD" role="3clF47">
        <node concept="XkiVB" id="hJ" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <node concept="1adDum" id="hL" role="37wK5m">
            <property role="1adDun" value="0x9edcd71856d444c5L" />
            <node concept="cd27G" id="hS" role="lGtFl">
              <node concept="3u3nmq" id="hT" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="hM" role="37wK5m">
            <property role="1adDun" value="0xae868ea31c5d7fbbL" />
            <node concept="cd27G" id="hU" role="lGtFl">
              <node concept="3u3nmq" id="hV" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="hN" role="37wK5m">
            <property role="1adDun" value="0x46aac9d4f447b0c9L" />
            <node concept="cd27G" id="hW" role="lGtFl">
              <node concept="3u3nmq" id="hX" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="hO" role="37wK5m">
            <property role="Xl_RC" value="MoleculeType" />
            <node concept="cd27G" id="hY" role="lGtFl">
              <node concept="3u3nmq" id="hZ" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="hP" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355785" />
            <node concept="cd27G" id="i0" role="lGtFl">
              <node concept="3u3nmq" id="i1" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Rm8GO" id="hQ" role="37wK5m">
            <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
            <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
            <node concept="cd27G" id="i2" role="lGtFl">
              <node concept="3u3nmq" id="i3" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="hR" role="lGtFl">
            <node concept="3u3nmq" id="i4" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="hK" role="lGtFl">
          <node concept="3u3nmq" id="i5" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="hE" role="lGtFl">
        <node concept="3u3nmq" id="i6" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hn" role="jymVt">
      <node concept="cd27G" id="i7" role="lGtFl">
        <node concept="3u3nmq" id="i8" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="ho" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_cyclin_0" />
      <node concept="3Tm6S6" id="i9" role="1B3o_S">
        <node concept="cd27G" id="id" role="lGtFl">
          <node concept="3u3nmq" id="ie" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ia" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="if" role="lGtFl">
          <node concept="3u3nmq" id="ig" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="ib" role="33vP2m">
        <node concept="1pGfFk" id="ih" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="ij" role="37wK5m">
            <property role="Xl_RC" value="cyclin" />
            <node concept="cd27G" id="io" role="lGtFl">
              <node concept="3u3nmq" id="ip" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="ik" role="37wK5m">
            <property role="Xl_RC" value="cyclin" />
            <node concept="cd27G" id="iq" role="lGtFl">
              <node concept="3u3nmq" id="ir" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="il" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355786" />
            <node concept="cd27G" id="is" role="lGtFl">
              <node concept="3u3nmq" id="it" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="im" role="37wK5m">
            <property role="Xl_RC" value="cyclin" />
            <node concept="cd27G" id="iu" role="lGtFl">
              <node concept="3u3nmq" id="iv" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="in" role="lGtFl">
            <node concept="3u3nmq" id="iw" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="ii" role="lGtFl">
          <node concept="3u3nmq" id="ix" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="ic" role="lGtFl">
        <node concept="3u3nmq" id="iy" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="hp" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_phosphatase_0" />
      <node concept="3Tm6S6" id="iz" role="1B3o_S">
        <node concept="cd27G" id="iB" role="lGtFl">
          <node concept="3u3nmq" id="iC" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="i$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="iD" role="lGtFl">
          <node concept="3u3nmq" id="iE" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="i_" role="33vP2m">
        <node concept="1pGfFk" id="iF" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="iH" role="37wK5m">
            <property role="Xl_RC" value="phosphatase" />
            <node concept="cd27G" id="iM" role="lGtFl">
              <node concept="3u3nmq" id="iN" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="iI" role="37wK5m">
            <property role="Xl_RC" value="phosphatase" />
            <node concept="cd27G" id="iO" role="lGtFl">
              <node concept="3u3nmq" id="iP" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="iJ" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355787" />
            <node concept="cd27G" id="iQ" role="lGtFl">
              <node concept="3u3nmq" id="iR" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="iK" role="37wK5m">
            <property role="Xl_RC" value="phosphatase" />
            <node concept="cd27G" id="iS" role="lGtFl">
              <node concept="3u3nmq" id="iT" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="iL" role="lGtFl">
            <node concept="3u3nmq" id="iU" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="iG" role="lGtFl">
          <node concept="3u3nmq" id="iV" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="iA" role="lGtFl">
        <node concept="3u3nmq" id="iW" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="hq" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_kinase_0" />
      <node concept="3Tm6S6" id="iX" role="1B3o_S">
        <node concept="cd27G" id="j1" role="lGtFl">
          <node concept="3u3nmq" id="j2" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="iY" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="j3" role="lGtFl">
          <node concept="3u3nmq" id="j4" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="iZ" role="33vP2m">
        <node concept="1pGfFk" id="j5" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="j7" role="37wK5m">
            <property role="Xl_RC" value="kinase" />
            <node concept="cd27G" id="jc" role="lGtFl">
              <node concept="3u3nmq" id="jd" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="j8" role="37wK5m">
            <property role="Xl_RC" value="kinase" />
            <node concept="cd27G" id="je" role="lGtFl">
              <node concept="3u3nmq" id="jf" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="j9" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355790" />
            <node concept="cd27G" id="jg" role="lGtFl">
              <node concept="3u3nmq" id="jh" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="ja" role="37wK5m">
            <property role="Xl_RC" value="kinase" />
            <node concept="cd27G" id="ji" role="lGtFl">
              <node concept="3u3nmq" id="jj" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="jb" role="lGtFl">
            <node concept="3u3nmq" id="jk" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="j6" role="lGtFl">
          <node concept="3u3nmq" id="jl" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="j0" role="lGtFl">
        <node concept="3u3nmq" id="jm" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="hr" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_protease_0" />
      <node concept="3Tm6S6" id="jn" role="1B3o_S">
        <node concept="cd27G" id="jr" role="lGtFl">
          <node concept="3u3nmq" id="js" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="jo" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="jt" role="lGtFl">
          <node concept="3u3nmq" id="ju" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="jp" role="33vP2m">
        <node concept="1pGfFk" id="jv" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="jx" role="37wK5m">
            <property role="Xl_RC" value="protease" />
            <node concept="cd27G" id="jA" role="lGtFl">
              <node concept="3u3nmq" id="jB" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="jy" role="37wK5m">
            <property role="Xl_RC" value="protease" />
            <node concept="cd27G" id="jC" role="lGtFl">
              <node concept="3u3nmq" id="jD" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="jz" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355794" />
            <node concept="cd27G" id="jE" role="lGtFl">
              <node concept="3u3nmq" id="jF" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="j$" role="37wK5m">
            <property role="Xl_RC" value="protease" />
            <node concept="cd27G" id="jG" role="lGtFl">
              <node concept="3u3nmq" id="jH" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="j_" role="lGtFl">
            <node concept="3u3nmq" id="jI" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="jw" role="lGtFl">
          <node concept="3u3nmq" id="jJ" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="jq" role="lGtFl">
        <node concept="3u3nmq" id="jK" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="hs" role="1B3o_S">
      <node concept="cd27G" id="jL" role="lGtFl">
        <node concept="3u3nmq" id="jM" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="ht" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <node concept="cd27G" id="jN" role="lGtFl">
        <node concept="3u3nmq" id="jO" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hu" role="jymVt">
      <node concept="cd27G" id="jP" role="lGtFl">
        <node concept="3u3nmq" id="jQ" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="hv" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <node concept="3Tm1VV" id="jR" role="1B3o_S">
        <node concept="cd27G" id="jX" role="lGtFl">
          <node concept="3u3nmq" id="jY" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jS" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="jZ" role="lGtFl">
          <node concept="3u3nmq" id="k0" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="jT" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="k1" role="lGtFl">
          <node concept="3u3nmq" id="k2" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="jU" role="3clF47">
        <node concept="3clFbF" id="k3" role="3cqZAp">
          <node concept="37vLTw" id="k5" role="3clFbG">
            <ref role="3cqZAo" node="ho" resolve="VALUE_cyclin_0" />
            <node concept="cd27G" id="k7" role="lGtFl">
              <node concept="3u3nmq" id="k8" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="k6" role="lGtFl">
            <node concept="3u3nmq" id="k9" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="k4" role="lGtFl">
          <node concept="3u3nmq" id="ka" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="jV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="kb" role="lGtFl">
          <node concept="3u3nmq" id="kc" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="jW" role="lGtFl">
        <node concept="3u3nmq" id="kd" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hw" role="jymVt">
      <node concept="cd27G" id="ke" role="lGtFl">
        <node concept="3u3nmq" id="kf" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="hx" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <node concept="3Tm1VV" id="kg" role="1B3o_S">
        <node concept="cd27G" id="km" role="lGtFl">
          <node concept="3u3nmq" id="kn" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <node concept="cd27G" id="ko" role="lGtFl">
          <node concept="3u3nmq" id="kp" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ki" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="kq" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="cd27G" id="ks" role="lGtFl">
            <node concept="3u3nmq" id="kt" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="kr" role="lGtFl">
          <node concept="3u3nmq" id="ku" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="kj" role="3clF47">
        <node concept="3cpWs6" id="kv" role="3cqZAp">
          <node concept="2YIFZM" id="kx" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="kz" role="37wK5m">
              <ref role="3cqZAo" node="ho" resolve="VALUE_cyclin_0" />
              <node concept="cd27G" id="kC" role="lGtFl">
                <node concept="3u3nmq" id="kD" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="k$" role="37wK5m">
              <ref role="3cqZAo" node="hp" resolve="VALUE_phosphatase_0" />
              <node concept="cd27G" id="kE" role="lGtFl">
                <node concept="3u3nmq" id="kF" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="k_" role="37wK5m">
              <ref role="3cqZAo" node="hq" resolve="VALUE_kinase_0" />
              <node concept="cd27G" id="kG" role="lGtFl">
                <node concept="3u3nmq" id="kH" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="kA" role="37wK5m">
              <ref role="3cqZAo" node="hr" resolve="VALUE_protease_0" />
              <node concept="cd27G" id="kI" role="lGtFl">
                <node concept="3u3nmq" id="kJ" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="kB" role="lGtFl">
              <node concept="3u3nmq" id="kK" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="ky" role="lGtFl">
            <node concept="3u3nmq" id="kL" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="kw" role="lGtFl">
          <node concept="3u3nmq" id="kM" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="kN" role="lGtFl">
          <node concept="3u3nmq" id="kO" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="kl" role="lGtFl">
        <node concept="3u3nmq" id="kP" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="hy" role="jymVt">
      <node concept="cd27G" id="kQ" role="lGtFl">
        <node concept="3u3nmq" id="kR" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="hz" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <node concept="3Tm1VV" id="kS" role="1B3o_S">
        <node concept="cd27G" id="kZ" role="lGtFl">
          <node concept="3u3nmq" id="l0" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="l1" role="lGtFl">
          <node concept="3u3nmq" id="l2" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="kU" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="l3" role="lGtFl">
          <node concept="3u3nmq" id="l4" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="kV" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="l5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <node concept="cd27G" id="l8" role="lGtFl">
            <node concept="3u3nmq" id="l9" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="l6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <node concept="cd27G" id="la" role="lGtFl">
            <node concept="3u3nmq" id="lb" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="l7" role="lGtFl">
          <node concept="3u3nmq" id="lc" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="kW" role="3clF47">
        <node concept="3clFbJ" id="ld" role="3cqZAp">
          <node concept="3clFbS" id="lh" role="3clFbx">
            <node concept="3cpWs6" id="lk" role="3cqZAp">
              <node concept="10Nm6u" id="lm" role="3cqZAk">
                <node concept="cd27G" id="lo" role="lGtFl">
                  <node concept="3u3nmq" id="lp" role="cd27D">
                    <property role="3u3nmv" value="5092104245164355785" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="ln" role="lGtFl">
                <node concept="3u3nmq" id="lq" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="ll" role="lGtFl">
              <node concept="3u3nmq" id="lr" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="li" role="3clFbw">
            <node concept="10Nm6u" id="ls" role="3uHU7w">
              <node concept="cd27G" id="lv" role="lGtFl">
                <node concept="3u3nmq" id="lw" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="lt" role="3uHU7B">
              <ref role="3cqZAo" node="kV" resolve="string" />
              <node concept="cd27G" id="lx" role="lGtFl">
                <node concept="3u3nmq" id="ly" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="lu" role="lGtFl">
              <node concept="3u3nmq" id="lz" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="lj" role="lGtFl">
            <node concept="3u3nmq" id="l$" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="le" role="3cqZAp">
          <node concept="37vLTw" id="l_" role="3KbGdf">
            <ref role="3cqZAo" node="kV" resolve="string" />
            <node concept="cd27G" id="lF" role="lGtFl">
              <node concept="3u3nmq" id="lG" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lA" role="3KbHQx">
            <node concept="Xl_RD" id="lH" role="3Kbmr1">
              <property role="Xl_RC" value="cyclin" />
              <node concept="cd27G" id="lK" role="lGtFl">
                <node concept="3u3nmq" id="lL" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="lI" role="3Kbo56">
              <node concept="3cpWs6" id="lM" role="3cqZAp">
                <node concept="37vLTw" id="lO" role="3cqZAk">
                  <ref role="3cqZAo" node="ho" resolve="VALUE_cyclin_0" />
                  <node concept="cd27G" id="lQ" role="lGtFl">
                    <node concept="3u3nmq" id="lR" role="cd27D">
                      <property role="3u3nmv" value="5092104245164355785" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="lP" role="lGtFl">
                  <node concept="3u3nmq" id="lS" role="cd27D">
                    <property role="3u3nmv" value="5092104245164355785" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="lN" role="lGtFl">
                <node concept="3u3nmq" id="lT" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="lJ" role="lGtFl">
              <node concept="3u3nmq" id="lU" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lB" role="3KbHQx">
            <node concept="Xl_RD" id="lV" role="3Kbmr1">
              <property role="Xl_RC" value="phosphatase" />
              <node concept="cd27G" id="lY" role="lGtFl">
                <node concept="3u3nmq" id="lZ" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="lW" role="3Kbo56">
              <node concept="3cpWs6" id="m0" role="3cqZAp">
                <node concept="37vLTw" id="m2" role="3cqZAk">
                  <ref role="3cqZAo" node="hp" resolve="VALUE_phosphatase_0" />
                  <node concept="cd27G" id="m4" role="lGtFl">
                    <node concept="3u3nmq" id="m5" role="cd27D">
                      <property role="3u3nmv" value="5092104245164355785" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="m3" role="lGtFl">
                  <node concept="3u3nmq" id="m6" role="cd27D">
                    <property role="3u3nmv" value="5092104245164355785" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="m1" role="lGtFl">
                <node concept="3u3nmq" id="m7" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="lX" role="lGtFl">
              <node concept="3u3nmq" id="m8" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lC" role="3KbHQx">
            <node concept="Xl_RD" id="m9" role="3Kbmr1">
              <property role="Xl_RC" value="kinase" />
              <node concept="cd27G" id="mc" role="lGtFl">
                <node concept="3u3nmq" id="md" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="ma" role="3Kbo56">
              <node concept="3cpWs6" id="me" role="3cqZAp">
                <node concept="37vLTw" id="mg" role="3cqZAk">
                  <ref role="3cqZAo" node="hq" resolve="VALUE_kinase_0" />
                  <node concept="cd27G" id="mi" role="lGtFl">
                    <node concept="3u3nmq" id="mj" role="cd27D">
                      <property role="3u3nmv" value="5092104245164355785" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="mh" role="lGtFl">
                  <node concept="3u3nmq" id="mk" role="cd27D">
                    <property role="3u3nmv" value="5092104245164355785" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="mf" role="lGtFl">
                <node concept="3u3nmq" id="ml" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="mb" role="lGtFl">
              <node concept="3u3nmq" id="mm" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="lD" role="3KbHQx">
            <node concept="Xl_RD" id="mn" role="3Kbmr1">
              <property role="Xl_RC" value="protease" />
              <node concept="cd27G" id="mq" role="lGtFl">
                <node concept="3u3nmq" id="mr" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="mo" role="3Kbo56">
              <node concept="3cpWs6" id="ms" role="3cqZAp">
                <node concept="37vLTw" id="mu" role="3cqZAk">
                  <ref role="3cqZAo" node="hr" resolve="VALUE_protease_0" />
                  <node concept="cd27G" id="mw" role="lGtFl">
                    <node concept="3u3nmq" id="mx" role="cd27D">
                      <property role="3u3nmv" value="5092104245164355785" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="mv" role="lGtFl">
                  <node concept="3u3nmq" id="my" role="cd27D">
                    <property role="3u3nmv" value="5092104245164355785" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="mt" role="lGtFl">
                <node concept="3u3nmq" id="mz" role="cd27D">
                  <property role="3u3nmv" value="5092104245164355785" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="mp" role="lGtFl">
              <node concept="3u3nmq" id="m$" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="lE" role="lGtFl">
            <node concept="3u3nmq" id="m_" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="lf" role="3cqZAp">
          <node concept="10Nm6u" id="mA" role="3cqZAk">
            <node concept="cd27G" id="mC" role="lGtFl">
              <node concept="3u3nmq" id="mD" role="cd27D">
                <property role="3u3nmv" value="5092104245164355785" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="mB" role="lGtFl">
            <node concept="3u3nmq" id="mE" role="cd27D">
              <property role="3u3nmv" value="5092104245164355785" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="lg" role="lGtFl">
          <node concept="3u3nmq" id="mF" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="kX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="mG" role="lGtFl">
          <node concept="3u3nmq" id="mH" role="cd27D">
            <property role="3u3nmv" value="5092104245164355785" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="kY" role="lGtFl">
        <node concept="3u3nmq" id="mI" role="cd27D">
          <property role="3u3nmv" value="5092104245164355785" />
        </node>
      </node>
    </node>
    <node concept="cd27G" id="h$" role="lGtFl">
      <node concept="3u3nmq" id="mJ" role="cd27D">
        <property role="3u3nmv" value="5092104245164355785" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="mK">
    <property role="TrG5h" value="EnumerationDescriptor_ReduceType" />
    <node concept="2tJIrI" id="mL" role="jymVt">
      <node concept="cd27G" id="mZ" role="lGtFl">
        <node concept="3u3nmq" id="n0" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="mM" role="jymVt">
      <node concept="3cqZAl" id="n1" role="3clF45">
        <node concept="cd27G" id="n5" role="lGtFl">
          <node concept="3u3nmq" id="n6" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="n2" role="1B3o_S">
        <node concept="cd27G" id="n7" role="lGtFl">
          <node concept="3u3nmq" id="n8" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="n3" role="3clF47">
        <node concept="XkiVB" id="n9" role="3cqZAp">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptorBase.&lt;init&gt;(long,long,long,java.lang.String,java.lang.String)" resolve="EnumerationDescriptorBase" />
          <node concept="1adDum" id="nb" role="37wK5m">
            <property role="1adDun" value="0x9edcd71856d444c5L" />
            <node concept="cd27G" id="ni" role="lGtFl">
              <node concept="3u3nmq" id="nj" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="nc" role="37wK5m">
            <property role="1adDun" value="0xae868ea31c5d7fbbL" />
            <node concept="cd27G" id="nk" role="lGtFl">
              <node concept="3u3nmq" id="nl" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="1adDum" id="nd" role="37wK5m">
            <property role="1adDun" value="0x5719c93ddd807d1dL" />
            <node concept="cd27G" id="nm" role="lGtFl">
              <node concept="3u3nmq" id="nn" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="ne" role="37wK5m">
            <property role="Xl_RC" value="ReduceType" />
            <node concept="cd27G" id="no" role="lGtFl">
              <node concept="3u3nmq" id="np" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="nf" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870237" />
            <node concept="cd27G" id="nq" role="lGtFl">
              <node concept="3u3nmq" id="nr" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Rm8GO" id="ng" role="37wK5m">
            <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.INTEGER" resolve="INTEGER" />
            <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
            <node concept="cd27G" id="ns" role="lGtFl">
              <node concept="3u3nmq" id="nt" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="nh" role="lGtFl">
            <node concept="3u3nmq" id="nu" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="na" role="lGtFl">
          <node concept="3u3nmq" id="nv" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="n4" role="lGtFl">
        <node concept="3u3nmq" id="nw" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mN" role="jymVt">
      <node concept="cd27G" id="nx" role="lGtFl">
        <node concept="3u3nmq" id="ny" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="mO" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_1_0" />
      <node concept="3Tm6S6" id="nz" role="1B3o_S">
        <node concept="cd27G" id="nB" role="lGtFl">
          <node concept="3u3nmq" id="nC" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="n$" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="nD" role="lGtFl">
          <node concept="3u3nmq" id="nE" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="n_" role="33vP2m">
        <node concept="1pGfFk" id="nF" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="nH" role="37wK5m">
            <property role="Xl_RC" value="1" />
            <node concept="cd27G" id="nM" role="lGtFl">
              <node concept="3u3nmq" id="nN" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="nI" role="37wK5m">
            <property role="Xl_RC" value="LogicalOr" />
            <node concept="cd27G" id="nO" role="lGtFl">
              <node concept="3u3nmq" id="nP" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="nJ" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870238" />
            <node concept="cd27G" id="nQ" role="lGtFl">
              <node concept="3u3nmq" id="nR" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="nK" role="37wK5m">
            <property role="Xl_RC" value="LogicalOr" />
            <node concept="cd27G" id="nS" role="lGtFl">
              <node concept="3u3nmq" id="nT" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="nL" role="lGtFl">
            <node concept="3u3nmq" id="nU" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="nG" role="lGtFl">
          <node concept="3u3nmq" id="nV" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="nA" role="lGtFl">
        <node concept="3u3nmq" id="nW" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="mP" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="VALUE_2_0" />
      <node concept="3Tm6S6" id="nX" role="1B3o_S">
        <node concept="cd27G" id="o1" role="lGtFl">
          <node concept="3u3nmq" id="o2" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="nY" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="o3" role="lGtFl">
          <node concept="3u3nmq" id="o4" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="nZ" role="33vP2m">
        <node concept="1pGfFk" id="o5" role="2ShVmc">
          <ref role="37wK5l" to="ze1i:~EnumerationDescriptor$MemberDescriptor.&lt;init&gt;(java.lang.String,java.lang.String,java.lang.String,java.lang.String)" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="Xl_RD" id="o7" role="37wK5m">
            <property role="Xl_RC" value="2" />
            <node concept="cd27G" id="oc" role="lGtFl">
              <node concept="3u3nmq" id="od" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="o8" role="37wK5m">
            <property role="Xl_RC" value="LogicalAnd" />
            <node concept="cd27G" id="oe" role="lGtFl">
              <node concept="3u3nmq" id="of" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="o9" role="37wK5m">
            <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870239" />
            <node concept="cd27G" id="og" role="lGtFl">
              <node concept="3u3nmq" id="oh" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="Xl_RD" id="oa" role="37wK5m">
            <property role="Xl_RC" value="LogicalAnd" />
            <node concept="cd27G" id="oi" role="lGtFl">
              <node concept="3u3nmq" id="oj" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="ob" role="lGtFl">
            <node concept="3u3nmq" id="ok" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="o6" role="lGtFl">
          <node concept="3u3nmq" id="ol" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="o0" role="lGtFl">
        <node concept="3u3nmq" id="om" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="mQ" role="1B3o_S">
      <node concept="cd27G" id="on" role="lGtFl">
        <node concept="3u3nmq" id="oo" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="mR" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~EnumerationDescriptorBase" resolve="EnumerationDescriptorBase" />
      <node concept="cd27G" id="op" role="lGtFl">
        <node concept="3u3nmq" id="oq" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mS" role="jymVt">
      <node concept="cd27G" id="or" role="lGtFl">
        <node concept="3u3nmq" id="os" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="mT" role="jymVt">
      <property role="TrG5h" value="getDefault" />
      <node concept="3Tm1VV" id="ot" role="1B3o_S">
        <node concept="cd27G" id="oz" role="lGtFl">
          <node concept="3u3nmq" id="o$" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ou" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="o_" role="lGtFl">
          <node concept="3u3nmq" id="oA" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="ov" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="oB" role="lGtFl">
          <node concept="3u3nmq" id="oC" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="ow" role="3clF47">
        <node concept="3clFbF" id="oD" role="3cqZAp">
          <node concept="37vLTw" id="oF" role="3clFbG">
            <ref role="3cqZAo" node="mO" resolve="VALUE_1_0" />
            <node concept="cd27G" id="oH" role="lGtFl">
              <node concept="3u3nmq" id="oI" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="oG" role="lGtFl">
            <node concept="3u3nmq" id="oJ" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="oE" role="lGtFl">
          <node concept="3u3nmq" id="oK" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="ox" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="oL" role="lGtFl">
          <node concept="3u3nmq" id="oM" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="oy" role="lGtFl">
        <node concept="3u3nmq" id="oN" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mU" role="jymVt">
      <node concept="cd27G" id="oO" role="lGtFl">
        <node concept="3u3nmq" id="oP" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="mV" role="jymVt">
      <property role="TrG5h" value="getMembers" />
      <node concept="3Tm1VV" id="oQ" role="1B3o_S">
        <node concept="cd27G" id="oW" role="lGtFl">
          <node concept="3u3nmq" id="oX" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        <node concept="cd27G" id="oY" role="lGtFl">
          <node concept="3u3nmq" id="oZ" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="oS" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="p0" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
          <node concept="cd27G" id="p2" role="lGtFl">
            <node concept="3u3nmq" id="p3" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="p1" role="lGtFl">
          <node concept="3u3nmq" id="p4" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="oT" role="3clF47">
        <node concept="3cpWs6" id="p5" role="3cqZAp">
          <node concept="2YIFZM" id="p7" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="p9" role="37wK5m">
              <ref role="3cqZAo" node="mO" resolve="VALUE_1_0" />
              <node concept="cd27G" id="pc" role="lGtFl">
                <node concept="3u3nmq" id="pd" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="pa" role="37wK5m">
              <ref role="3cqZAo" node="mP" resolve="VALUE_2_0" />
              <node concept="cd27G" id="pe" role="lGtFl">
                <node concept="3u3nmq" id="pf" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="pb" role="lGtFl">
              <node concept="3u3nmq" id="pg" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="p8" role="lGtFl">
            <node concept="3u3nmq" id="ph" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="p6" role="lGtFl">
          <node concept="3u3nmq" id="pi" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="oU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="pj" role="lGtFl">
          <node concept="3u3nmq" id="pk" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="oV" role="lGtFl">
        <node concept="3u3nmq" id="pl" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="mW" role="jymVt">
      <node concept="cd27G" id="pm" role="lGtFl">
        <node concept="3u3nmq" id="pn" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="mX" role="jymVt">
      <property role="TrG5h" value="getMember" />
      <node concept="3Tm1VV" id="po" role="1B3o_S">
        <node concept="cd27G" id="pv" role="lGtFl">
          <node concept="3u3nmq" id="pw" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="pp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        <node concept="cd27G" id="px" role="lGtFl">
          <node concept="3u3nmq" id="py" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="pq" role="3clF45">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor$MemberDescriptor" resolve="EnumerationDescriptor.MemberDescriptor" />
        <node concept="cd27G" id="pz" role="lGtFl">
          <node concept="3u3nmq" id="p$" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="pr" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="p_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          <node concept="cd27G" id="pC" role="lGtFl">
            <node concept="3u3nmq" id="pD" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="pA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          <node concept="cd27G" id="pE" role="lGtFl">
            <node concept="3u3nmq" id="pF" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="pB" role="lGtFl">
          <node concept="3u3nmq" id="pG" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="ps" role="3clF47">
        <node concept="3clFbJ" id="pH" role="3cqZAp">
          <node concept="3clFbS" id="pL" role="3clFbx">
            <node concept="3cpWs6" id="pO" role="3cqZAp">
              <node concept="10Nm6u" id="pQ" role="3cqZAk">
                <node concept="cd27G" id="pS" role="lGtFl">
                  <node concept="3u3nmq" id="pT" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870237" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="pR" role="lGtFl">
                <node concept="3u3nmq" id="pU" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="pP" role="lGtFl">
              <node concept="3u3nmq" id="pV" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="pM" role="3clFbw">
            <node concept="10Nm6u" id="pW" role="3uHU7w">
              <node concept="cd27G" id="pZ" role="lGtFl">
                <node concept="3u3nmq" id="q0" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="pX" role="3uHU7B">
              <ref role="3cqZAo" node="pr" resolve="string" />
              <node concept="cd27G" id="q1" role="lGtFl">
                <node concept="3u3nmq" id="q2" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="pY" role="lGtFl">
              <node concept="3u3nmq" id="q3" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="pN" role="lGtFl">
            <node concept="3u3nmq" id="q4" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="pI" role="3cqZAp">
          <node concept="37vLTw" id="q5" role="3KbGdf">
            <ref role="3cqZAo" node="pr" resolve="string" />
            <node concept="cd27G" id="q9" role="lGtFl">
              <node concept="3u3nmq" id="qa" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="q6" role="3KbHQx">
            <node concept="Xl_RD" id="qb" role="3Kbmr1">
              <property role="Xl_RC" value="1" />
              <node concept="cd27G" id="qe" role="lGtFl">
                <node concept="3u3nmq" id="qf" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="qc" role="3Kbo56">
              <node concept="3cpWs6" id="qg" role="3cqZAp">
                <node concept="37vLTw" id="qi" role="3cqZAk">
                  <ref role="3cqZAo" node="mO" resolve="VALUE_1_0" />
                  <node concept="cd27G" id="qk" role="lGtFl">
                    <node concept="3u3nmq" id="ql" role="cd27D">
                      <property role="3u3nmv" value="6276268823263870237" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="qj" role="lGtFl">
                  <node concept="3u3nmq" id="qm" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870237" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="qh" role="lGtFl">
                <node concept="3u3nmq" id="qn" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="qd" role="lGtFl">
              <node concept="3u3nmq" id="qo" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="q7" role="3KbHQx">
            <node concept="Xl_RD" id="qp" role="3Kbmr1">
              <property role="Xl_RC" value="2" />
              <node concept="cd27G" id="qs" role="lGtFl">
                <node concept="3u3nmq" id="qt" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="qq" role="3Kbo56">
              <node concept="3cpWs6" id="qu" role="3cqZAp">
                <node concept="37vLTw" id="qw" role="3cqZAk">
                  <ref role="3cqZAo" node="mP" resolve="VALUE_2_0" />
                  <node concept="cd27G" id="qy" role="lGtFl">
                    <node concept="3u3nmq" id="qz" role="cd27D">
                      <property role="3u3nmv" value="6276268823263870237" />
                    </node>
                  </node>
                </node>
                <node concept="cd27G" id="qx" role="lGtFl">
                  <node concept="3u3nmq" id="q$" role="cd27D">
                    <property role="3u3nmv" value="6276268823263870237" />
                  </node>
                </node>
              </node>
              <node concept="cd27G" id="qv" role="lGtFl">
                <node concept="3u3nmq" id="q_" role="cd27D">
                  <property role="3u3nmv" value="6276268823263870237" />
                </node>
              </node>
            </node>
            <node concept="cd27G" id="qr" role="lGtFl">
              <node concept="3u3nmq" id="qA" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="q8" role="lGtFl">
            <node concept="3u3nmq" id="qB" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="pJ" role="3cqZAp">
          <node concept="10Nm6u" id="qC" role="3cqZAk">
            <node concept="cd27G" id="qE" role="lGtFl">
              <node concept="3u3nmq" id="qF" role="cd27D">
                <property role="3u3nmv" value="6276268823263870237" />
              </node>
            </node>
          </node>
          <node concept="cd27G" id="qD" role="lGtFl">
            <node concept="3u3nmq" id="qG" role="cd27D">
              <property role="3u3nmv" value="6276268823263870237" />
            </node>
          </node>
        </node>
        <node concept="cd27G" id="pK" role="lGtFl">
          <node concept="3u3nmq" id="qH" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="pt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        <node concept="cd27G" id="qI" role="lGtFl">
          <node concept="3u3nmq" id="qJ" role="cd27D">
            <property role="3u3nmv" value="6276268823263870237" />
          </node>
        </node>
      </node>
      <node concept="cd27G" id="pu" role="lGtFl">
        <node concept="3u3nmq" id="qK" role="cd27D">
          <property role="3u3nmv" value="6276268823263870237" />
        </node>
      </node>
    </node>
    <node concept="cd27G" id="mY" role="lGtFl">
      <node concept="3u3nmq" id="qL" role="cd27D">
        <property role="3u3nmv" value="6276268823263870237" />
      </node>
    </node>
  </node>
  <node concept="39dXUE" id="qM">
    <node concept="39e2AJ" id="qN" role="39e2AI">
      <property role="39e3Y2" value="EnumerationDescriptorCons" />
      <node concept="39e2AG" id="qR" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Oa" resolve="ConditionType" />
        <node concept="385nmt" id="qV" role="385vvn">
          <property role="385vuF" value="ConditionType" />
          <node concept="2$VJBW" id="qX" role="385v07">
            <property role="2$VJBR" value="6276268823263870218" />
            <node concept="2x4n5u" id="qY" role="3iCydw">
              <property role="2x4mPI" value="EnumerationDataTypeDeclaration" />
              <property role="2x4n5l" value="dtih8jjv" />
              <node concept="2V$Bhx" id="qZ" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="qW" role="39e2AY">
          <ref role="39e2AS" node="9i" resolve="EnumerationDescriptor_ConditionType" />
        </node>
      </node>
      <node concept="39e2AG" id="qS" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4r9vr$YxenR" resolve="MechanismType" />
        <node concept="385nmt" id="r0" role="385vvn">
          <property role="385vuF" value="MechanismType" />
          <node concept="2$VJBW" id="r2" role="385v07">
            <property role="2$VJBR" value="5100746287545116151" />
            <node concept="2x4n5u" id="r3" role="3iCydw">
              <property role="2x4mPI" value="EnumerationDataTypeDeclaration" />
              <property role="2x4n5l" value="dtih8jjv" />
              <node concept="2V$Bhx" id="r4" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="r1" role="39e2AY">
          <ref role="39e2AS" node="e1" resolve="EnumerationDescriptor_MechanismType" />
        </node>
      </node>
      <node concept="39e2AG" id="qT" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4qEMtjOhV39" resolve="MoleculeType" />
        <node concept="385nmt" id="r5" role="385vvn">
          <property role="385vuF" value="MoleculeType" />
          <node concept="2$VJBW" id="r7" role="385v07">
            <property role="2$VJBR" value="5092104245164355785" />
            <node concept="2x4n5u" id="r8" role="3iCydw">
              <property role="2x4mPI" value="EnumerationDataTypeDeclaration" />
              <property role="2x4n5l" value="dtih8jjv" />
              <node concept="2V$Bhx" id="r9" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="r6" role="39e2AY">
          <ref role="39e2AS" node="hm" resolve="EnumerationDescriptor_MoleculeType" />
        </node>
      </node>
      <node concept="39e2AG" id="qU" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Ot" resolve="ReduceType" />
        <node concept="385nmt" id="ra" role="385vvn">
          <property role="385vuF" value="ReduceType" />
          <node concept="2$VJBW" id="rc" role="385v07">
            <property role="2$VJBR" value="6276268823263870237" />
            <node concept="2x4n5u" id="rd" role="3iCydw">
              <property role="2x4mPI" value="EnumerationDataTypeDeclaration" />
              <property role="2x4n5l" value="dtih8jjv" />
              <node concept="2V$Bhx" id="re" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rb" role="39e2AY">
          <ref role="39e2AS" node="mM" resolve="EnumerationDescriptor_ReduceType" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="qO" role="39e2AI">
      <property role="39e3Y2" value="EnumerationMember" />
      <node concept="39e2AG" id="rf" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:28bk3yvdZY6" />
        <node concept="385nmt" id="rp" role="385vvn">
          <property role="385vuF" value="Distribution" />
          <node concept="2$VJBW" id="rr" role="385v07">
            <property role="2$VJBR" value="2453142626153004934" />
            <node concept="2x4n5u" id="rs" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rt" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rq" role="39e2AY">
          <ref role="39e2AS" node="9m" resolve="VALUE_distribution_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rg" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Ov" />
        <node concept="385nmt" id="ru" role="385vvn">
          <property role="385vuF" value="LogicalAnd" />
          <node concept="2$VJBW" id="rw" role="385v07">
            <property role="2$VJBR" value="6276268823263870239" />
            <node concept="2x4n5u" id="rx" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="ry" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rv" role="39e2AY">
          <ref role="39e2AS" node="mP" resolve="VALUE_2_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rh" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Ou" />
        <node concept="385nmt" id="rz" role="385vvn">
          <property role="385vuF" value="LogicalOr" />
          <node concept="2$VJBW" id="r_" role="385v07">
            <property role="2$VJBR" value="6276268823263870238" />
            <node concept="2x4n5u" id="rA" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rB" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="r$" role="39e2AY">
          <ref role="39e2AS" node="mO" resolve="VALUE_1_0" />
        </node>
      </node>
      <node concept="39e2AG" id="ri" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Oc" />
        <node concept="385nmt" id="rC" role="385vvn">
          <property role="385vuF" value="Probability" />
          <node concept="2$VJBW" id="rE" role="385v07">
            <property role="2$VJBR" value="6276268823263870220" />
            <node concept="2x4n5u" id="rF" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rG" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rD" role="39e2AY">
          <ref role="39e2AS" node="9l" resolve="VALUE_probability_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rj" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:5spMjRtw7Ob" />
        <node concept="385nmt" id="rH" role="385vvn">
          <property role="385vuF" value="Rule" />
          <node concept="2$VJBW" id="rJ" role="385v07">
            <property role="2$VJBR" value="6276268823263870219" />
            <node concept="2x4n5u" id="rK" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rL" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rI" role="39e2AY">
          <ref role="39e2AS" node="9k" resolve="VALUE_rule_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rk" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4r9vr$YxenS" />
        <node concept="385nmt" id="rM" role="385vvn">
          <property role="385vuF" value="cyclic" />
          <node concept="2$VJBW" id="rO" role="385v07">
            <property role="2$VJBR" value="5100746287545116152" />
            <node concept="2x4n5u" id="rP" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rQ" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rN" role="39e2AY">
          <ref role="39e2AS" node="e3" resolve="VALUE_cyclic_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rl" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4qEMtjOhV3a" />
        <node concept="385nmt" id="rR" role="385vvn">
          <property role="385vuF" value="cyclin" />
          <node concept="2$VJBW" id="rT" role="385v07">
            <property role="2$VJBR" value="5092104245164355786" />
            <node concept="2x4n5u" id="rU" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="rV" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rS" role="39e2AY">
          <ref role="39e2AS" node="ho" resolve="VALUE_cyclin_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rm" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4qEMtjOhV3e" />
        <node concept="385nmt" id="rW" role="385vvn">
          <property role="385vuF" value="kinase" />
          <node concept="2$VJBW" id="rY" role="385v07">
            <property role="2$VJBR" value="5092104245164355790" />
            <node concept="2x4n5u" id="rZ" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="s0" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="rX" role="39e2AY">
          <ref role="39e2AS" node="hq" resolve="VALUE_kinase_0" />
        </node>
      </node>
      <node concept="39e2AG" id="rn" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4qEMtjOhV3b" />
        <node concept="385nmt" id="s1" role="385vvn">
          <property role="385vuF" value="phosphatase" />
          <node concept="2$VJBW" id="s3" role="385v07">
            <property role="2$VJBR" value="5092104245164355787" />
            <node concept="2x4n5u" id="s4" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="s5" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="s2" role="39e2AY">
          <ref role="39e2AS" node="hp" resolve="VALUE_phosphatase_0" />
        </node>
      </node>
      <node concept="39e2AG" id="ro" role="39e3Y0">
        <ref role="39e2AK" to="1xcl:4qEMtjOhV3i" />
        <node concept="385nmt" id="s6" role="385vvn">
          <property role="385vuF" value="protease" />
          <node concept="2$VJBW" id="s8" role="385v07">
            <property role="2$VJBR" value="5092104245164355794" />
            <node concept="2x4n5u" id="s9" role="3iCydw">
              <property role="2x4mPI" value="EnumerationMemberDeclaration" />
              <property role="2x4n5l" value="dtlokhiq" />
              <node concept="2V$Bhx" id="sa" role="2x4n5j">
                <property role="2V$B1T" value="c72da2b9-7cce-4447-8389-f407dc1158b7" />
                <property role="2V$B1Q" value="jetbrains.mps.lang.structure" />
              </node>
            </node>
          </node>
        </node>
        <node concept="39e2AT" id="s7" role="39e2AY">
          <ref role="39e2AS" node="hr" resolve="VALUE_protease_0" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="qP" role="39e2AI">
      <property role="39e3Y2" value="ConceptPresentationAspectClass" />
      <node concept="39e2AG" id="sb" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="sc" role="39e2AY">
          <ref role="39e2AS" node="0" resolve="ConceptPresentationAspectImpl" />
        </node>
      </node>
    </node>
    <node concept="39e2AJ" id="qQ" role="39e2AI">
      <property role="39e3Y2" value="StructureAspectDescriptorCons" />
      <node concept="39e2AG" id="sd" role="39e3Y0">
        <property role="2mV_xN" value="true" />
        <node concept="39e2AT" id="se" role="39e2AY">
          <ref role="39e2AS" node="w1" resolve="StructureAspectDescriptor" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="sf">
    <property role="TrG5h" value="LanguageConceptSwitch" />
    <property role="1EXbeo" value="true" />
    <node concept="312cEg" id="sg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIndex" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="sD" role="1B3o_S" />
      <node concept="3uibUv" id="sE" role="1tU5fm">
        <ref role="3uigEE" to="ksn4:~LanguageConceptIndex" resolve="LanguageConceptIndex" />
      </node>
    </node>
    <node concept="Wx3nA" id="sh" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ApoptosisPathway" />
      <node concept="3Tm1VV" id="sF" role="1B3o_S" />
      <node concept="10Oyi0" id="sG" role="1tU5fm" />
      <node concept="3cmrfG" id="sH" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="Wx3nA" id="si" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Cell" />
      <node concept="3Tm1VV" id="sI" role="1B3o_S" />
      <node concept="10Oyi0" id="sJ" role="1tU5fm" />
      <node concept="3cmrfG" id="sK" role="33vP2m">
        <property role="3cmrfH" value="1" />
      </node>
    </node>
    <node concept="Wx3nA" id="sj" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Condition" />
      <node concept="3Tm1VV" id="sL" role="1B3o_S" />
      <node concept="10Oyi0" id="sM" role="1tU5fm" />
      <node concept="3cmrfG" id="sN" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="Wx3nA" id="sk" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ConditionWithFormula" />
      <node concept="3Tm1VV" id="sO" role="1B3o_S" />
      <node concept="10Oyi0" id="sP" role="1tU5fm" />
      <node concept="3cmrfG" id="sQ" role="33vP2m">
        <property role="3cmrfH" value="3" />
      </node>
    </node>
    <node concept="Wx3nA" id="sl" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="DynamicMechanism" />
      <node concept="3Tm1VV" id="sR" role="1B3o_S" />
      <node concept="10Oyi0" id="sS" role="1tU5fm" />
      <node concept="3cmrfG" id="sT" role="33vP2m">
        <property role="3cmrfH" value="4" />
      </node>
    </node>
    <node concept="Wx3nA" id="sm" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="GlobalParameters" />
      <node concept="3Tm1VV" id="sU" role="1B3o_S" />
      <node concept="10Oyi0" id="sV" role="1tU5fm" />
      <node concept="3cmrfG" id="sW" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="Wx3nA" id="sn" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ModelMechanism" />
      <node concept="3Tm1VV" id="sX" role="1B3o_S" />
      <node concept="10Oyi0" id="sY" role="1tU5fm" />
      <node concept="3cmrfG" id="sZ" role="33vP2m">
        <property role="3cmrfH" value="6" />
      </node>
    </node>
    <node concept="Wx3nA" id="so" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Molecule" />
      <node concept="3Tm1VV" id="t0" role="1B3o_S" />
      <node concept="10Oyi0" id="t1" role="1tU5fm" />
      <node concept="3cmrfG" id="t2" role="33vP2m">
        <property role="3cmrfH" value="7" />
      </node>
    </node>
    <node concept="Wx3nA" id="sp" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MoleculeDefinition" />
      <node concept="3Tm1VV" id="t3" role="1B3o_S" />
      <node concept="10Oyi0" id="t4" role="1tU5fm" />
      <node concept="3cmrfG" id="t5" role="33vP2m">
        <property role="3cmrfH" value="8" />
      </node>
    </node>
    <node concept="Wx3nA" id="sq" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MoleculeDefinitionReference" />
      <node concept="3Tm1VV" id="t6" role="1B3o_S" />
      <node concept="10Oyi0" id="t7" role="1tU5fm" />
      <node concept="3cmrfG" id="t8" role="33vP2m">
        <property role="3cmrfH" value="9" />
      </node>
    </node>
    <node concept="Wx3nA" id="sr" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MoleculeReference" />
      <node concept="3Tm1VV" id="t9" role="1B3o_S" />
      <node concept="10Oyi0" id="ta" role="1tU5fm" />
      <node concept="3cmrfG" id="tb" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="Wx3nA" id="ss" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NamedConstant" />
      <node concept="3Tm1VV" id="tc" role="1B3o_S" />
      <node concept="10Oyi0" id="td" role="1tU5fm" />
      <node concept="3cmrfG" id="te" role="33vP2m">
        <property role="3cmrfH" value="11" />
      </node>
    </node>
    <node concept="Wx3nA" id="st" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NamedConstantReference" />
      <node concept="3Tm1VV" id="tf" role="1B3o_S" />
      <node concept="10Oyi0" id="tg" role="1tU5fm" />
      <node concept="3cmrfG" id="th" role="33vP2m">
        <property role="3cmrfH" value="12" />
      </node>
    </node>
    <node concept="Wx3nA" id="su" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="SignalPathway" />
      <node concept="3Tm1VV" id="ti" role="1B3o_S" />
      <node concept="10Oyi0" id="tj" role="1tU5fm" />
      <node concept="3cmrfG" id="tk" role="33vP2m">
        <property role="3cmrfH" value="13" />
      </node>
    </node>
    <node concept="Wx3nA" id="sv" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Space" />
      <node concept="3Tm1VV" id="tl" role="1B3o_S" />
      <node concept="10Oyi0" id="tm" role="1tU5fm" />
      <node concept="3cmrfG" id="tn" role="33vP2m">
        <property role="3cmrfH" value="14" />
      </node>
    </node>
    <node concept="Wx3nA" id="sw" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="Stage" />
      <node concept="3Tm1VV" id="to" role="1B3o_S" />
      <node concept="10Oyi0" id="tp" role="1tU5fm" />
      <node concept="3cmrfG" id="tq" role="33vP2m">
        <property role="3cmrfH" value="15" />
      </node>
    </node>
    <node concept="Wx3nA" id="sx" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="StemCell" />
      <node concept="3Tm1VV" id="tr" role="1B3o_S" />
      <node concept="10Oyi0" id="ts" role="1tU5fm" />
      <node concept="3cmrfG" id="tt" role="33vP2m">
        <property role="3cmrfH" value="16" />
      </node>
    </node>
    <node concept="2tJIrI" id="sy" role="jymVt" />
    <node concept="3clFbW" id="sz" role="jymVt">
      <node concept="3cqZAl" id="tu" role="3clF45" />
      <node concept="3Tm1VV" id="tv" role="1B3o_S" />
      <node concept="3clFbS" id="tw" role="3clF47">
        <node concept="3cpWs8" id="tx" role="3cqZAp">
          <node concept="3cpWsn" id="tO" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="tP" role="1tU5fm">
              <ref role="3uigEE" to="ksn4:~LanguageConceptIndexBuilder" resolve="LanguageConceptIndexBuilder" />
            </node>
            <node concept="2ShNRf" id="tQ" role="33vP2m">
              <node concept="1pGfFk" id="tR" role="2ShVmc">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.&lt;init&gt;(long,long)" resolve="LanguageConceptIndexBuilder" />
                <node concept="1adDum" id="tS" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="tT" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="ty" role="3cqZAp">
          <node concept="2OqwBi" id="tU" role="3clFbG">
            <node concept="37vLTw" id="tV" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="tW" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="tX" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd8120caL" />
              </node>
              <node concept="37vLTw" id="tY" role="37wK5m">
                <ref role="3cqZAo" node="sh" resolve="ApoptosisPathway" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tz" role="3cqZAp">
          <node concept="2OqwBi" id="tZ" role="3clFbG">
            <node concept="37vLTw" id="u0" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="u1" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="u2" role="37wK5m">
                <property role="1adDun" value="0x3831396a57ca6a5dL" />
              </node>
              <node concept="37vLTw" id="u3" role="37wK5m">
                <ref role="3cqZAo" node="si" resolve="Cell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t$" role="3cqZAp">
          <node concept="2OqwBi" id="u4" role="3clFbG">
            <node concept="37vLTw" id="u5" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="u6" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="u7" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd807d10L" />
              </node>
              <node concept="37vLTw" id="u8" role="37wK5m">
                <ref role="3cqZAo" node="sj" resolve="Condition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="t_" role="3cqZAp">
          <node concept="2OqwBi" id="u9" role="3clFbG">
            <node concept="37vLTw" id="ua" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="ub" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uc" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd814255L" />
              </node>
              <node concept="37vLTw" id="ud" role="37wK5m">
                <ref role="3cqZAo" node="sk" resolve="ConditionWithFormula" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tA" role="3cqZAp">
          <node concept="2OqwBi" id="ue" role="3clFbG">
            <node concept="37vLTw" id="uf" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="ug" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uh" role="37wK5m">
                <property role="1adDun" value="0x46c97db93e84b707L" />
              </node>
              <node concept="37vLTw" id="ui" role="37wK5m">
                <ref role="3cqZAo" node="sl" resolve="DynamicMechanism" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tB" role="3cqZAp">
          <node concept="2OqwBi" id="uj" role="3clFbG">
            <node concept="37vLTw" id="uk" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="ul" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="um" role="37wK5m">
                <property role="1adDun" value="0x5d892dceb2156728L" />
              </node>
              <node concept="37vLTw" id="un" role="37wK5m">
                <ref role="3cqZAo" node="sm" resolve="GlobalParameters" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tC" role="3cqZAp">
          <node concept="2OqwBi" id="uo" role="3clFbG">
            <node concept="37vLTw" id="up" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uq" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="ur" role="37wK5m">
                <property role="1adDun" value="0x46c97db93e8314a0L" />
              </node>
              <node concept="37vLTw" id="us" role="37wK5m">
                <ref role="3cqZAo" node="sn" resolve="ModelMechanism" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tD" role="3cqZAp">
          <node concept="2OqwBi" id="ut" role="3clFbG">
            <node concept="37vLTw" id="uu" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uv" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uw" role="37wK5m">
                <property role="1adDun" value="0x46aac9d4f448aa46L" />
              </node>
              <node concept="37vLTw" id="ux" role="37wK5m">
                <ref role="3cqZAo" node="so" resolve="Molecule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tE" role="3cqZAp">
          <node concept="2OqwBi" id="uy" role="3clFbG">
            <node concept="37vLTw" id="uz" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="u$" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="u_" role="37wK5m">
                <property role="1adDun" value="0x46aac9d4f447b0c3L" />
              </node>
              <node concept="37vLTw" id="uA" role="37wK5m">
                <ref role="3cqZAo" node="sp" resolve="MoleculeDefinition" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tF" role="3cqZAp">
          <node concept="2OqwBi" id="uB" role="3clFbG">
            <node concept="37vLTw" id="uC" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uD" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uE" role="37wK5m">
                <property role="1adDun" value="0x6101bf7b1aa274b9L" />
              </node>
              <node concept="37vLTw" id="uF" role="37wK5m">
                <ref role="3cqZAo" node="sq" resolve="MoleculeDefinitionReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tG" role="3cqZAp">
          <node concept="2OqwBi" id="uG" role="3clFbG">
            <node concept="37vLTw" id="uH" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uI" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uJ" role="37wK5m">
                <property role="1adDun" value="0x46c97db93e84318eL" />
              </node>
              <node concept="37vLTw" id="uK" role="37wK5m">
                <ref role="3cqZAo" node="sr" resolve="MoleculeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tH" role="3cqZAp">
          <node concept="2OqwBi" id="uL" role="3clFbG">
            <node concept="37vLTw" id="uM" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uN" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uO" role="37wK5m">
                <property role="1adDun" value="0x46aac9d4f4483a03L" />
              </node>
              <node concept="37vLTw" id="uP" role="37wK5m">
                <ref role="3cqZAo" node="ss" resolve="NamedConstant" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tI" role="3cqZAp">
          <node concept="2OqwBi" id="uQ" role="3clFbG">
            <node concept="37vLTw" id="uR" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uS" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uT" role="37wK5m">
                <property role="1adDun" value="0x46c97db93e859c65L" />
              </node>
              <node concept="37vLTw" id="uU" role="37wK5m">
                <ref role="3cqZAo" node="st" resolve="NamedConstantReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tJ" role="3cqZAp">
          <node concept="2OqwBi" id="uV" role="3clFbG">
            <node concept="37vLTw" id="uW" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="uX" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="uY" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd807d0fL" />
              </node>
              <node concept="37vLTw" id="uZ" role="37wK5m">
                <ref role="3cqZAo" node="su" resolve="SignalPathway" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tK" role="3cqZAp">
          <node concept="2OqwBi" id="v0" role="3clFbG">
            <node concept="37vLTw" id="v1" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="v2" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="v3" role="37wK5m">
                <property role="1adDun" value="0x3831396a57cb195fL" />
              </node>
              <node concept="37vLTw" id="v4" role="37wK5m">
                <ref role="3cqZAo" node="sv" resolve="Space" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tL" role="3cqZAp">
          <node concept="2OqwBi" id="v5" role="3clFbG">
            <node concept="37vLTw" id="v6" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="v7" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="v8" role="37wK5m">
                <property role="1adDun" value="0x46aac9d4f447b0bdL" />
              </node>
              <node concept="37vLTw" id="v9" role="37wK5m">
                <ref role="3cqZAo" node="sw" resolve="Stage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tM" role="3cqZAp">
          <node concept="2OqwBi" id="va" role="3clFbG">
            <node concept="37vLTw" id="vb" role="2Oq$k0">
              <ref role="3cqZAo" node="tO" resolve="builder" />
            </node>
            <node concept="liA8E" id="vc" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.put(long,int)" resolve="put" />
              <node concept="1adDum" id="vd" role="37wK5m">
                <property role="1adDun" value="0x3831396a57cb18ebL" />
              </node>
              <node concept="37vLTw" id="ve" role="37wK5m">
                <ref role="3cqZAo" node="sx" resolve="StemCell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="tN" role="3cqZAp">
          <node concept="37vLTI" id="vf" role="3clFbG">
            <node concept="2OqwBi" id="vg" role="37vLTx">
              <node concept="37vLTw" id="vi" role="2Oq$k0">
                <ref role="3cqZAo" node="tO" resolve="builder" />
              </node>
              <node concept="liA8E" id="vj" role="2OqNvi">
                <ref role="37wK5l" to="ksn4:~LanguageConceptIndexBuilder.seal()" resolve="seal" />
              </node>
            </node>
            <node concept="37vLTw" id="vh" role="37vLTJ">
              <ref role="3cqZAo" node="sg" resolve="myIndex" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="s$" role="jymVt" />
    <node concept="3clFb_" id="s_" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="vk" role="3clF45" />
      <node concept="3clFbS" id="vl" role="3clF47">
        <node concept="3cpWs6" id="vn" role="3cqZAp">
          <node concept="2OqwBi" id="vo" role="3cqZAk">
            <node concept="37vLTw" id="vp" role="2Oq$k0">
              <ref role="3cqZAo" node="sg" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="vq" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~LanguageConceptIndex.index(jetbrains.mps.smodel.adapter.ids.SConceptId)" resolve="index" />
              <node concept="37vLTw" id="vr" role="37wK5m">
                <ref role="3cqZAo" node="vm" resolve="cid" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="vm" role="3clF46">
        <property role="TrG5h" value="cid" />
        <node concept="3uibUv" id="vs" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="sA" role="jymVt" />
    <node concept="3clFb_" id="sB" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="10Oyi0" id="vt" role="3clF45" />
      <node concept="3Tm1VV" id="vu" role="1B3o_S" />
      <node concept="3clFbS" id="vv" role="3clF47">
        <node concept="3cpWs6" id="vx" role="3cqZAp">
          <node concept="2OqwBi" id="vy" role="3cqZAk">
            <node concept="37vLTw" id="vz" role="2Oq$k0">
              <ref role="3cqZAo" node="sg" resolve="myIndex" />
            </node>
            <node concept="liA8E" id="v$" role="2OqNvi">
              <ref role="37wK5l" to="ksn4:~ConceptIndex.index(org.jetbrains.mps.openapi.language.SAbstractConcept)" resolve="index" />
              <node concept="37vLTw" id="v_" role="37wK5m">
                <ref role="3cqZAo" node="vw" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="vw" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3uibUv" id="vA" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="sC" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="vB">
    <property role="TrG5h" value="StructureAspectDescriptor" />
    <node concept="3uibUv" id="vC" role="1zkMxy">
      <ref role="3uigEE" to="ze1i:~BaseStructureAspectDescriptor" resolve="BaseStructureAspectDescriptor" />
    </node>
    <node concept="312cEg" id="vD" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptApoptosisPathway" />
      <node concept="3uibUv" id="wv" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="ww" role="33vP2m">
        <ref role="37wK5l" node="we" resolve="createDescriptorForApoptosisPathway" />
      </node>
    </node>
    <node concept="312cEg" id="vE" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCell" />
      <node concept="3uibUv" id="wx" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wy" role="33vP2m">
        <ref role="37wK5l" node="wf" resolve="createDescriptorForCell" />
      </node>
    </node>
    <node concept="312cEg" id="vF" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptCondition" />
      <node concept="3uibUv" id="wz" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="w$" role="33vP2m">
        <ref role="37wK5l" node="wg" resolve="createDescriptorForCondition" />
      </node>
    </node>
    <node concept="312cEg" id="vG" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptConditionWithFormula" />
      <node concept="3uibUv" id="w_" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wA" role="33vP2m">
        <ref role="37wK5l" node="wh" resolve="createDescriptorForConditionWithFormula" />
      </node>
    </node>
    <node concept="312cEg" id="vH" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptDynamicMechanism" />
      <node concept="3uibUv" id="wB" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wC" role="33vP2m">
        <ref role="37wK5l" node="wi" resolve="createDescriptorForDynamicMechanism" />
      </node>
    </node>
    <node concept="312cEg" id="vI" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptGlobalParameters" />
      <node concept="3uibUv" id="wD" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wE" role="33vP2m">
        <ref role="37wK5l" node="wj" resolve="createDescriptorForGlobalParameters" />
      </node>
    </node>
    <node concept="312cEg" id="vJ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptModelMechanism" />
      <node concept="3uibUv" id="wF" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wG" role="33vP2m">
        <ref role="37wK5l" node="wk" resolve="createDescriptorForModelMechanism" />
      </node>
    </node>
    <node concept="312cEg" id="vK" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMolecule" />
      <node concept="3uibUv" id="wH" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wI" role="33vP2m">
        <ref role="37wK5l" node="wl" resolve="createDescriptorForMolecule" />
      </node>
    </node>
    <node concept="312cEg" id="vL" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMoleculeDefinition" />
      <node concept="3uibUv" id="wJ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wK" role="33vP2m">
        <ref role="37wK5l" node="wm" resolve="createDescriptorForMoleculeDefinition" />
      </node>
    </node>
    <node concept="312cEg" id="vM" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMoleculeDefinitionReference" />
      <node concept="3uibUv" id="wL" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wM" role="33vP2m">
        <ref role="37wK5l" node="wn" resolve="createDescriptorForMoleculeDefinitionReference" />
      </node>
    </node>
    <node concept="312cEg" id="vN" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptMoleculeReference" />
      <node concept="3uibUv" id="wN" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wO" role="33vP2m">
        <ref role="37wK5l" node="wo" resolve="createDescriptorForMoleculeReference" />
      </node>
    </node>
    <node concept="312cEg" id="vO" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptNamedConstant" />
      <node concept="3uibUv" id="wP" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wQ" role="33vP2m">
        <ref role="37wK5l" node="wp" resolve="createDescriptorForNamedConstant" />
      </node>
    </node>
    <node concept="312cEg" id="vP" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptNamedConstantReference" />
      <node concept="3uibUv" id="wR" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wS" role="33vP2m">
        <ref role="37wK5l" node="wq" resolve="createDescriptorForNamedConstantReference" />
      </node>
    </node>
    <node concept="312cEg" id="vQ" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSignalPathway" />
      <node concept="3uibUv" id="wT" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wU" role="33vP2m">
        <ref role="37wK5l" node="wr" resolve="createDescriptorForSignalPathway" />
      </node>
    </node>
    <node concept="312cEg" id="vR" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptSpace" />
      <node concept="3uibUv" id="wV" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wW" role="33vP2m">
        <ref role="37wK5l" node="ws" resolve="createDescriptorForSpace" />
      </node>
    </node>
    <node concept="312cEg" id="vS" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStage" />
      <node concept="3uibUv" id="wX" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="wY" role="33vP2m">
        <ref role="37wK5l" node="wt" resolve="createDescriptorForStage" />
      </node>
    </node>
    <node concept="312cEg" id="vT" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myConceptStemCell" />
      <node concept="3uibUv" id="wZ" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="1rXfSq" id="x0" role="33vP2m">
        <ref role="37wK5l" node="wu" resolve="createDescriptorForStemCell" />
      </node>
    </node>
    <node concept="312cEg" id="vU" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationConditionType" />
      <node concept="3uibUv" id="x1" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="x2" role="33vP2m">
        <node concept="1pGfFk" id="x3" role="2ShVmc">
          <ref role="37wK5l" node="9i" resolve="EnumerationDescriptor_ConditionType" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="vV" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationMechanismType" />
      <node concept="3uibUv" id="x4" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="x5" role="33vP2m">
        <node concept="1pGfFk" id="x6" role="2ShVmc">
          <ref role="37wK5l" node="e1" resolve="EnumerationDescriptor_MechanismType" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="vW" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationMoleculeType" />
      <node concept="3uibUv" id="x7" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="x8" role="33vP2m">
        <node concept="1pGfFk" id="x9" role="2ShVmc">
          <ref role="37wK5l" node="hm" resolve="EnumerationDescriptor_MoleculeType" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="vX" role="jymVt">
      <property role="eg7rD" value="false" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="myEnumerationReduceType" />
      <node concept="3uibUv" id="xa" role="1tU5fm">
        <ref role="3uigEE" to="ze1i:~EnumerationDescriptor" resolve="EnumerationDescriptor" />
      </node>
      <node concept="2ShNRf" id="xb" role="33vP2m">
        <node concept="1pGfFk" id="xc" role="2ShVmc">
          <ref role="37wK5l" node="mM" resolve="EnumerationDescriptor_ReduceType" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="vY" role="jymVt">
      <property role="TrG5h" value="myIndexSwitch" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="xd" role="1B3o_S" />
      <node concept="3uibUv" id="xe" role="1tU5fm">
        <ref role="3uigEE" node="sf" resolve="LanguageConceptSwitch" />
      </node>
    </node>
    <node concept="3Tm1VV" id="vZ" role="1B3o_S" />
    <node concept="2tJIrI" id="w0" role="jymVt" />
    <node concept="3clFbW" id="w1" role="jymVt">
      <node concept="3cqZAl" id="xf" role="3clF45" />
      <node concept="3Tm1VV" id="xg" role="1B3o_S" />
      <node concept="3clFbS" id="xh" role="3clF47">
        <node concept="3clFbF" id="xi" role="3cqZAp">
          <node concept="37vLTI" id="xj" role="3clFbG">
            <node concept="2ShNRf" id="xk" role="37vLTx">
              <node concept="1pGfFk" id="xm" role="2ShVmc">
                <ref role="37wK5l" node="sz" resolve="LanguageConceptSwitch" />
              </node>
            </node>
            <node concept="37vLTw" id="xl" role="37vLTJ">
              <ref role="3cqZAo" node="vY" resolve="myIndexSwitch" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="w2" role="jymVt" />
    <node concept="2tJIrI" id="w3" role="jymVt" />
    <node concept="3clFb_" id="w4" role="jymVt">
      <property role="TrG5h" value="reportDependencies" />
      <node concept="3Tm1VV" id="xn" role="1B3o_S" />
      <node concept="3cqZAl" id="xo" role="3clF45" />
      <node concept="37vLTG" id="xp" role="3clF46">
        <property role="TrG5h" value="deps" />
        <node concept="3uibUv" id="xs" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~StructureAspectDescriptor$Dependencies" resolve="StructureAspectDescriptor.Dependencies" />
        </node>
      </node>
      <node concept="3clFbS" id="xq" role="3clF47">
        <node concept="3clFbF" id="xt" role="3cqZAp">
          <node concept="2OqwBi" id="xw" role="3clFbG">
            <node concept="37vLTw" id="xx" role="2Oq$k0">
              <ref role="3cqZAo" node="xp" resolve="deps" />
            </node>
            <node concept="liA8E" id="xy" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="1adDum" id="xz" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="x$" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="Xl_RD" id="x_" role="37wK5m">
                <property role="Xl_RC" value="jetbrains.mps.lang.core" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xu" role="3cqZAp">
          <node concept="2OqwBi" id="xA" role="3clFbG">
            <node concept="37vLTw" id="xB" role="2Oq$k0">
              <ref role="3cqZAo" node="xp" resolve="deps" />
            </node>
            <node concept="liA8E" id="xC" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.extendedLanguage(long,long,java.lang.String)" resolve="extendedLanguage" />
              <node concept="1adDum" id="xD" role="37wK5m">
                <property role="1adDun" value="0xa48297046b1b4b3fL" />
              </node>
              <node concept="1adDum" id="xE" role="37wK5m">
                <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
              </node>
              <node concept="Xl_RD" id="xF" role="37wK5m">
                <property role="Xl_RC" value="org.mar9000.mps.ecmascript" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="xv" role="3cqZAp">
          <node concept="2OqwBi" id="xG" role="3clFbG">
            <node concept="37vLTw" id="xH" role="2Oq$k0">
              <ref role="3cqZAo" node="xp" resolve="deps" />
            </node>
            <node concept="liA8E" id="xI" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~StructureAspectDescriptor$Dependencies.aggregatedLanguage(long,long,java.lang.String)" resolve="aggregatedLanguage" />
              <node concept="1adDum" id="xJ" role="37wK5m">
                <property role="1adDun" value="0xa48297046b1b4b3fL" />
              </node>
              <node concept="1adDum" id="xK" role="37wK5m">
                <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
              </node>
              <node concept="Xl_RD" id="xL" role="37wK5m">
                <property role="Xl_RC" value="org.mar9000.mps.ecmascript" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="xr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="w5" role="jymVt" />
    <node concept="3clFb_" id="w6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="od$2w" value="false" />
      <property role="TrG5h" value="getDescriptors" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="xM" role="3clF47">
        <node concept="3cpWs6" id="xQ" role="3cqZAp">
          <node concept="2YIFZM" id="xR" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <node concept="37vLTw" id="xS" role="37wK5m">
              <ref role="3cqZAo" node="vD" resolve="myConceptApoptosisPathway" />
            </node>
            <node concept="37vLTw" id="xT" role="37wK5m">
              <ref role="3cqZAo" node="vE" resolve="myConceptCell" />
            </node>
            <node concept="37vLTw" id="xU" role="37wK5m">
              <ref role="3cqZAo" node="vF" resolve="myConceptCondition" />
            </node>
            <node concept="37vLTw" id="xV" role="37wK5m">
              <ref role="3cqZAo" node="vG" resolve="myConceptConditionWithFormula" />
            </node>
            <node concept="37vLTw" id="xW" role="37wK5m">
              <ref role="3cqZAo" node="vH" resolve="myConceptDynamicMechanism" />
            </node>
            <node concept="37vLTw" id="xX" role="37wK5m">
              <ref role="3cqZAo" node="vI" resolve="myConceptGlobalParameters" />
            </node>
            <node concept="37vLTw" id="xY" role="37wK5m">
              <ref role="3cqZAo" node="vJ" resolve="myConceptModelMechanism" />
            </node>
            <node concept="37vLTw" id="xZ" role="37wK5m">
              <ref role="3cqZAo" node="vK" resolve="myConceptMolecule" />
            </node>
            <node concept="37vLTw" id="y0" role="37wK5m">
              <ref role="3cqZAo" node="vL" resolve="myConceptMoleculeDefinition" />
            </node>
            <node concept="37vLTw" id="y1" role="37wK5m">
              <ref role="3cqZAo" node="vM" resolve="myConceptMoleculeDefinitionReference" />
            </node>
            <node concept="37vLTw" id="y2" role="37wK5m">
              <ref role="3cqZAo" node="vN" resolve="myConceptMoleculeReference" />
            </node>
            <node concept="37vLTw" id="y3" role="37wK5m">
              <ref role="3cqZAo" node="vO" resolve="myConceptNamedConstant" />
            </node>
            <node concept="37vLTw" id="y4" role="37wK5m">
              <ref role="3cqZAo" node="vP" resolve="myConceptNamedConstantReference" />
            </node>
            <node concept="37vLTw" id="y5" role="37wK5m">
              <ref role="3cqZAo" node="vQ" resolve="myConceptSignalPathway" />
            </node>
            <node concept="37vLTw" id="y6" role="37wK5m">
              <ref role="3cqZAo" node="vR" resolve="myConceptSpace" />
            </node>
            <node concept="37vLTw" id="y7" role="37wK5m">
              <ref role="3cqZAo" node="vS" resolve="myConceptStage" />
            </node>
            <node concept="37vLTw" id="y8" role="37wK5m">
              <ref role="3cqZAo" node="vT" resolve="myConceptStemCell" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="xN" role="1B3o_S" />
      <node concept="3uibUv" id="xO" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="y9" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="xP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="w7" role="jymVt" />
    <node concept="3clFb_" id="w8" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescriptor" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="ya" role="1B3o_S" />
      <node concept="37vLTG" id="yb" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="yg" role="1tU5fm">
          <ref role="3uigEE" to="e8bb:~SConceptId" resolve="SConceptId" />
        </node>
      </node>
      <node concept="3clFbS" id="yc" role="3clF47">
        <node concept="3KaCP$" id="yh" role="3cqZAp">
          <node concept="3KbdKl" id="yi" role="3KbHQx">
            <node concept="3clFbS" id="y_" role="3Kbo56">
              <node concept="3cpWs6" id="yB" role="3cqZAp">
                <node concept="37vLTw" id="yC" role="3cqZAk">
                  <ref role="3cqZAo" node="vD" resolve="myConceptApoptosisPathway" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yA" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sh" resolve="ApoptosisPathway" />
            </node>
          </node>
          <node concept="3KbdKl" id="yj" role="3KbHQx">
            <node concept="3clFbS" id="yD" role="3Kbo56">
              <node concept="3cpWs6" id="yF" role="3cqZAp">
                <node concept="37vLTw" id="yG" role="3cqZAk">
                  <ref role="3cqZAo" node="vE" resolve="myConceptCell" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yE" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="si" resolve="Cell" />
            </node>
          </node>
          <node concept="3KbdKl" id="yk" role="3KbHQx">
            <node concept="3clFbS" id="yH" role="3Kbo56">
              <node concept="3cpWs6" id="yJ" role="3cqZAp">
                <node concept="37vLTw" id="yK" role="3cqZAk">
                  <ref role="3cqZAo" node="vF" resolve="myConceptCondition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yI" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sj" resolve="Condition" />
            </node>
          </node>
          <node concept="3KbdKl" id="yl" role="3KbHQx">
            <node concept="3clFbS" id="yL" role="3Kbo56">
              <node concept="3cpWs6" id="yN" role="3cqZAp">
                <node concept="37vLTw" id="yO" role="3cqZAk">
                  <ref role="3cqZAo" node="vG" resolve="myConceptConditionWithFormula" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yM" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sk" resolve="ConditionWithFormula" />
            </node>
          </node>
          <node concept="3KbdKl" id="ym" role="3KbHQx">
            <node concept="3clFbS" id="yP" role="3Kbo56">
              <node concept="3cpWs6" id="yR" role="3cqZAp">
                <node concept="37vLTw" id="yS" role="3cqZAk">
                  <ref role="3cqZAo" node="vH" resolve="myConceptDynamicMechanism" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yQ" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sl" resolve="DynamicMechanism" />
            </node>
          </node>
          <node concept="3KbdKl" id="yn" role="3KbHQx">
            <node concept="3clFbS" id="yT" role="3Kbo56">
              <node concept="3cpWs6" id="yV" role="3cqZAp">
                <node concept="37vLTw" id="yW" role="3cqZAk">
                  <ref role="3cqZAo" node="vI" resolve="myConceptGlobalParameters" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yU" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sm" resolve="GlobalParameters" />
            </node>
          </node>
          <node concept="3KbdKl" id="yo" role="3KbHQx">
            <node concept="3clFbS" id="yX" role="3Kbo56">
              <node concept="3cpWs6" id="yZ" role="3cqZAp">
                <node concept="37vLTw" id="z0" role="3cqZAk">
                  <ref role="3cqZAo" node="vJ" resolve="myConceptModelMechanism" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="yY" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sn" resolve="ModelMechanism" />
            </node>
          </node>
          <node concept="3KbdKl" id="yp" role="3KbHQx">
            <node concept="3clFbS" id="z1" role="3Kbo56">
              <node concept="3cpWs6" id="z3" role="3cqZAp">
                <node concept="37vLTw" id="z4" role="3cqZAk">
                  <ref role="3cqZAo" node="vK" resolve="myConceptMolecule" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="z2" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="so" resolve="Molecule" />
            </node>
          </node>
          <node concept="3KbdKl" id="yq" role="3KbHQx">
            <node concept="3clFbS" id="z5" role="3Kbo56">
              <node concept="3cpWs6" id="z7" role="3cqZAp">
                <node concept="37vLTw" id="z8" role="3cqZAk">
                  <ref role="3cqZAo" node="vL" resolve="myConceptMoleculeDefinition" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="z6" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sp" resolve="MoleculeDefinition" />
            </node>
          </node>
          <node concept="3KbdKl" id="yr" role="3KbHQx">
            <node concept="3clFbS" id="z9" role="3Kbo56">
              <node concept="3cpWs6" id="zb" role="3cqZAp">
                <node concept="37vLTw" id="zc" role="3cqZAk">
                  <ref role="3cqZAo" node="vM" resolve="myConceptMoleculeDefinitionReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="za" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sq" resolve="MoleculeDefinitionReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="ys" role="3KbHQx">
            <node concept="3clFbS" id="zd" role="3Kbo56">
              <node concept="3cpWs6" id="zf" role="3cqZAp">
                <node concept="37vLTw" id="zg" role="3cqZAk">
                  <ref role="3cqZAo" node="vN" resolve="myConceptMoleculeReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="ze" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sr" resolve="MoleculeReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="yt" role="3KbHQx">
            <node concept="3clFbS" id="zh" role="3Kbo56">
              <node concept="3cpWs6" id="zj" role="3cqZAp">
                <node concept="37vLTw" id="zk" role="3cqZAk">
                  <ref role="3cqZAo" node="vO" resolve="myConceptNamedConstant" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zi" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="ss" resolve="NamedConstant" />
            </node>
          </node>
          <node concept="3KbdKl" id="yu" role="3KbHQx">
            <node concept="3clFbS" id="zl" role="3Kbo56">
              <node concept="3cpWs6" id="zn" role="3cqZAp">
                <node concept="37vLTw" id="zo" role="3cqZAk">
                  <ref role="3cqZAo" node="vP" resolve="myConceptNamedConstantReference" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zm" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="st" resolve="NamedConstantReference" />
            </node>
          </node>
          <node concept="3KbdKl" id="yv" role="3KbHQx">
            <node concept="3clFbS" id="zp" role="3Kbo56">
              <node concept="3cpWs6" id="zr" role="3cqZAp">
                <node concept="37vLTw" id="zs" role="3cqZAk">
                  <ref role="3cqZAo" node="vQ" resolve="myConceptSignalPathway" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zq" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="su" resolve="SignalPathway" />
            </node>
          </node>
          <node concept="3KbdKl" id="yw" role="3KbHQx">
            <node concept="3clFbS" id="zt" role="3Kbo56">
              <node concept="3cpWs6" id="zv" role="3cqZAp">
                <node concept="37vLTw" id="zw" role="3cqZAk">
                  <ref role="3cqZAo" node="vR" resolve="myConceptSpace" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zu" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sv" resolve="Space" />
            </node>
          </node>
          <node concept="3KbdKl" id="yx" role="3KbHQx">
            <node concept="3clFbS" id="zx" role="3Kbo56">
              <node concept="3cpWs6" id="zz" role="3cqZAp">
                <node concept="37vLTw" id="z$" role="3cqZAk">
                  <ref role="3cqZAo" node="vS" resolve="myConceptStage" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zy" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sw" resolve="Stage" />
            </node>
          </node>
          <node concept="3KbdKl" id="yy" role="3KbHQx">
            <node concept="3clFbS" id="z_" role="3Kbo56">
              <node concept="3cpWs6" id="zB" role="3cqZAp">
                <node concept="37vLTw" id="zC" role="3cqZAk">
                  <ref role="3cqZAo" node="vT" resolve="myConceptStemCell" />
                </node>
              </node>
            </node>
            <node concept="10M0yZ" id="zA" role="3Kbmr1">
              <ref role="1PxDUh" node="sf" resolve="LanguageConceptSwitch" />
              <ref role="3cqZAo" node="sx" resolve="StemCell" />
            </node>
          </node>
          <node concept="2OqwBi" id="yz" role="3KbGdf">
            <node concept="37vLTw" id="zD" role="2Oq$k0">
              <ref role="3cqZAo" node="vY" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="zE" role="2OqNvi">
              <ref role="37wK5l" node="s_" resolve="index" />
              <node concept="37vLTw" id="zF" role="37wK5m">
                <ref role="3cqZAo" node="yb" resolve="id" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="y$" role="3Kb1Dw">
            <node concept="3cpWs6" id="zG" role="3cqZAp">
              <node concept="10Nm6u" id="zH" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="yd" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
      <node concept="2AHcQZ" id="ye" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="yf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="w9" role="jymVt" />
    <node concept="3clFb_" id="wa" role="jymVt">
      <property role="TrG5h" value="getDataTypeDescriptors" />
      <node concept="3Tm1VV" id="zI" role="1B3o_S" />
      <node concept="3uibUv" id="zJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="zM" role="11_B2D">
          <ref role="3uigEE" to="ze1i:~DataTypeDescriptor" resolve="DataTypeDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="zK" role="3clF47">
        <node concept="3cpWs6" id="zN" role="3cqZAp">
          <node concept="2YIFZM" id="zO" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="zP" role="37wK5m">
              <ref role="3cqZAo" node="vU" resolve="myEnumerationConditionType" />
            </node>
            <node concept="37vLTw" id="zQ" role="37wK5m">
              <ref role="3cqZAo" node="vV" resolve="myEnumerationMechanismType" />
            </node>
            <node concept="37vLTw" id="zR" role="37wK5m">
              <ref role="3cqZAo" node="vW" resolve="myEnumerationMoleculeType" />
            </node>
            <node concept="37vLTw" id="zS" role="37wK5m">
              <ref role="3cqZAo" node="vX" resolve="myEnumerationReduceType" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="zL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="wb" role="jymVt" />
    <node concept="3clFb_" id="wc" role="jymVt">
      <property role="TrG5h" value="internalIndex" />
      <node concept="10Oyi0" id="zT" role="3clF45" />
      <node concept="3clFbS" id="zU" role="3clF47">
        <node concept="3cpWs6" id="zW" role="3cqZAp">
          <node concept="2OqwBi" id="zX" role="3cqZAk">
            <node concept="37vLTw" id="zY" role="2Oq$k0">
              <ref role="3cqZAo" node="vY" resolve="myIndexSwitch" />
            </node>
            <node concept="liA8E" id="zZ" role="2OqNvi">
              <ref role="37wK5l" node="sB" resolve="index" />
              <node concept="37vLTw" id="$0" role="37wK5m">
                <ref role="3cqZAo" node="zV" resolve="c" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="zV" role="3clF46">
        <property role="TrG5h" value="c" />
        <node concept="3uibUv" id="$1" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SAbstractConcept" resolve="SAbstractConcept" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="wd" role="jymVt" />
    <node concept="2YIFZL" id="we" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForApoptosisPathway" />
      <node concept="3clFbS" id="$2" role="3clF47">
        <node concept="3cpWs8" id="$5" role="3cqZAp">
          <node concept="3cpWsn" id="$b" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="$c" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="$d" role="33vP2m">
              <node concept="1pGfFk" id="$e" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="$f" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="$g" role="37wK5m">
                  <property role="Xl_RC" value="ApoptosisPathway" />
                </node>
                <node concept="1adDum" id="$h" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="$i" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="$j" role="37wK5m">
                  <property role="1adDun" value="0x5719c93ddd8120caL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$6" role="3cqZAp">
          <node concept="2OqwBi" id="$k" role="3clFbG">
            <node concept="37vLTw" id="$l" role="2Oq$k0">
              <ref role="3cqZAo" node="$b" resolve="b" />
            </node>
            <node concept="liA8E" id="$m" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="$n" role="37wK5m" />
              <node concept="3clFbT" id="$o" role="37wK5m" />
              <node concept="3clFbT" id="$p" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$7" role="3cqZAp">
          <node concept="2OqwBi" id="$q" role="3clFbG">
            <node concept="37vLTw" id="$r" role="2Oq$k0">
              <ref role="3cqZAo" node="$b" resolve="b" />
            </node>
            <node concept="liA8E" id="$s" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(java.lang.String,long,long,long)" resolve="super_" />
              <node concept="Xl_RD" id="$t" role="37wK5m">
                <property role="Xl_RC" value="BCNNM_DSL.structure.SignalPathway" />
              </node>
              <node concept="1adDum" id="$u" role="37wK5m">
                <property role="1adDun" value="0x9edcd71856d444c5L" />
              </node>
              <node concept="1adDum" id="$v" role="37wK5m">
                <property role="1adDun" value="0xae868ea31c5d7fbbL" />
              </node>
              <node concept="1adDum" id="$w" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd807d0fL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$8" role="3cqZAp">
          <node concept="2OqwBi" id="$x" role="3clFbG">
            <node concept="37vLTw" id="$y" role="2Oq$k0">
              <ref role="3cqZAo" node="$b" resolve="b" />
            </node>
            <node concept="liA8E" id="$z" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="$$" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263912138" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$9" role="3cqZAp">
          <node concept="2OqwBi" id="$_" role="3clFbG">
            <node concept="37vLTw" id="$A" role="2Oq$k0">
              <ref role="3cqZAo" node="$b" resolve="b" />
            </node>
            <node concept="liA8E" id="$B" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="$C" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="$a" role="3cqZAp">
          <node concept="2OqwBi" id="$D" role="3cqZAk">
            <node concept="37vLTw" id="$E" role="2Oq$k0">
              <ref role="3cqZAo" node="$b" resolve="b" />
            </node>
            <node concept="liA8E" id="$F" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="$3" role="1B3o_S" />
      <node concept="3uibUv" id="$4" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wf" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCell" />
      <node concept="3clFbS" id="$G" role="3clF47">
        <node concept="3cpWs8" id="$J" role="3cqZAp">
          <node concept="3cpWsn" id="$U" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="$V" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="$W" role="33vP2m">
              <node concept="1pGfFk" id="$X" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="$Y" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="$Z" role="37wK5m">
                  <property role="Xl_RC" value="Cell" />
                </node>
                <node concept="1adDum" id="_0" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="_1" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="_2" role="37wK5m">
                  <property role="1adDun" value="0x3831396a57ca6a5dL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$K" role="3cqZAp">
          <node concept="2OqwBi" id="_3" role="3clFbG">
            <node concept="37vLTw" id="_4" role="2Oq$k0">
              <ref role="3cqZAo" node="$U" resolve="b" />
            </node>
            <node concept="liA8E" id="_5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="_6" role="37wK5m" />
              <node concept="3clFbT" id="_7" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="_8" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$L" role="3cqZAp">
          <node concept="2OqwBi" id="_9" role="3clFbG">
            <node concept="37vLTw" id="_a" role="2Oq$k0">
              <ref role="3cqZAo" node="$U" resolve="b" />
            </node>
            <node concept="liA8E" id="_b" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="_c" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="_d" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="_e" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$M" role="3cqZAp">
          <node concept="2OqwBi" id="_f" role="3clFbG">
            <node concept="37vLTw" id="_g" role="2Oq$k0">
              <ref role="3cqZAo" node="$U" resolve="b" />
            </node>
            <node concept="liA8E" id="_h" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="_i" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/4049080668884986461" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$N" role="3cqZAp">
          <node concept="2OqwBi" id="_j" role="3clFbG">
            <node concept="37vLTw" id="_k" role="2Oq$k0">
              <ref role="3cqZAo" node="$U" resolve="b" />
            </node>
            <node concept="liA8E" id="_l" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="_m" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$O" role="3cqZAp">
          <node concept="2OqwBi" id="_n" role="3clFbG">
            <node concept="2OqwBi" id="_o" role="2Oq$k0">
              <node concept="2OqwBi" id="_q" role="2Oq$k0">
                <node concept="2OqwBi" id="_s" role="2Oq$k0">
                  <node concept="2OqwBi" id="_u" role="2Oq$k0">
                    <node concept="2OqwBi" id="_w" role="2Oq$k0">
                      <node concept="2OqwBi" id="_y" role="2Oq$k0">
                        <node concept="37vLTw" id="_$" role="2Oq$k0">
                          <ref role="3cqZAo" node="$U" resolve="b" />
                        </node>
                        <node concept="liA8E" id="__" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="_A" role="37wK5m">
                            <property role="Xl_RC" value="constants" />
                          </node>
                          <node concept="1adDum" id="_B" role="37wK5m">
                            <property role="1adDun" value="0x46aac9d4f4486badL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="_z" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="_C" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="_D" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="_E" role="37wK5m">
                          <property role="1adDun" value="0x46aac9d4f4483a03L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="_x" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="_F" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="_v" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="_G" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="_t" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="_H" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="_r" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="_I" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164403629" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_p" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$P" role="3cqZAp">
          <node concept="2OqwBi" id="_J" role="3clFbG">
            <node concept="2OqwBi" id="_K" role="2Oq$k0">
              <node concept="2OqwBi" id="_M" role="2Oq$k0">
                <node concept="2OqwBi" id="_O" role="2Oq$k0">
                  <node concept="2OqwBi" id="_Q" role="2Oq$k0">
                    <node concept="2OqwBi" id="_S" role="2Oq$k0">
                      <node concept="2OqwBi" id="_U" role="2Oq$k0">
                        <node concept="37vLTw" id="_W" role="2Oq$k0">
                          <ref role="3cqZAo" node="$U" resolve="b" />
                        </node>
                        <node concept="liA8E" id="_X" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="_Y" role="37wK5m">
                            <property role="Xl_RC" value="moleculeTypes" />
                          </node>
                          <node concept="1adDum" id="_Z" role="37wK5m">
                            <property role="1adDun" value="0x46aac9d4f448c3a2L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="_V" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="A0" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="A1" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="A2" role="37wK5m">
                          <property role="1adDun" value="0x46aac9d4f447b0c3L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="_T" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="A3" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="_R" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="A4" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="_P" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="A5" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="_N" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="A6" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164426146" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_L" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$Q" role="3cqZAp">
          <node concept="2OqwBi" id="A7" role="3clFbG">
            <node concept="2OqwBi" id="A8" role="2Oq$k0">
              <node concept="2OqwBi" id="Aa" role="2Oq$k0">
                <node concept="2OqwBi" id="Ac" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ae" role="2Oq$k0">
                    <node concept="2OqwBi" id="Ag" role="2Oq$k0">
                      <node concept="2OqwBi" id="Ai" role="2Oq$k0">
                        <node concept="37vLTw" id="Ak" role="2Oq$k0">
                          <ref role="3cqZAo" node="$U" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Al" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Am" role="37wK5m">
                            <property role="Xl_RC" value="molecules" />
                          </node>
                          <node concept="1adDum" id="An" role="37wK5m">
                            <property role="1adDun" value="0x46aac9d4f4487836L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Aj" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Ao" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="Ap" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="Aq" role="37wK5m">
                          <property role="1adDun" value="0x46aac9d4f448aa46L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Ah" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Ar" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Af" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="As" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Ad" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="At" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Ab" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Au" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164406838" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="A9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$R" role="3cqZAp">
          <node concept="2OqwBi" id="Av" role="3clFbG">
            <node concept="2OqwBi" id="Aw" role="2Oq$k0">
              <node concept="2OqwBi" id="Ay" role="2Oq$k0">
                <node concept="2OqwBi" id="A$" role="2Oq$k0">
                  <node concept="2OqwBi" id="AA" role="2Oq$k0">
                    <node concept="2OqwBi" id="AC" role="2Oq$k0">
                      <node concept="2OqwBi" id="AE" role="2Oq$k0">
                        <node concept="37vLTw" id="AG" role="2Oq$k0">
                          <ref role="3cqZAo" node="$U" resolve="b" />
                        </node>
                        <node concept="liA8E" id="AH" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="AI" role="37wK5m">
                            <property role="Xl_RC" value="conditions" />
                          </node>
                          <node concept="1adDum" id="AJ" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e83bbaaL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="AF" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="AK" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="AL" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="AM" role="37wK5m">
                          <property role="1adDun" value="0x5719c93ddd814255L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="AD" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="AN" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="AB" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="AO" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="A_" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="AP" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Az" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="AQ" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545039786" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Ax" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="$S" role="3cqZAp">
          <node concept="2OqwBi" id="AR" role="3clFbG">
            <node concept="2OqwBi" id="AS" role="2Oq$k0">
              <node concept="2OqwBi" id="AU" role="2Oq$k0">
                <node concept="2OqwBi" id="AW" role="2Oq$k0">
                  <node concept="2OqwBi" id="AY" role="2Oq$k0">
                    <node concept="2OqwBi" id="B0" role="2Oq$k0">
                      <node concept="2OqwBi" id="B2" role="2Oq$k0">
                        <node concept="37vLTw" id="B4" role="2Oq$k0">
                          <ref role="3cqZAo" node="$U" resolve="b" />
                        </node>
                        <node concept="liA8E" id="B5" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="B6" role="37wK5m">
                            <property role="Xl_RC" value="mechanisms" />
                          </node>
                          <node concept="1adDum" id="B7" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e84d604L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="B3" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="B8" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="B9" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="Ba" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e84b707L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="B1" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Bb" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="AZ" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Bc" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="AX" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Bd" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="AV" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Be" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545112068" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="AT" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="$T" role="3cqZAp">
          <node concept="2OqwBi" id="Bf" role="3cqZAk">
            <node concept="37vLTw" id="Bg" role="2Oq$k0">
              <ref role="3cqZAo" node="$U" resolve="b" />
            </node>
            <node concept="liA8E" id="Bh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="$H" role="1B3o_S" />
      <node concept="3uibUv" id="$I" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wg" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForCondition" />
      <node concept="3clFbS" id="Bi" role="3clF47">
        <node concept="3cpWs8" id="Bl" role="3cqZAp">
          <node concept="3cpWsn" id="Bs" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Bt" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Bu" role="33vP2m">
              <node concept="1pGfFk" id="Bv" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Bw" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Bx" role="37wK5m">
                  <property role="Xl_RC" value="Condition" />
                </node>
                <node concept="1adDum" id="By" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Bz" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="B$" role="37wK5m">
                  <property role="1adDun" value="0x5719c93ddd807d10L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bm" role="3cqZAp">
          <node concept="2OqwBi" id="B_" role="3clFbG">
            <node concept="37vLTw" id="BA" role="2Oq$k0">
              <ref role="3cqZAo" node="Bs" resolve="b" />
            </node>
            <node concept="liA8E" id="BB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="BC" role="37wK5m" />
              <node concept="3clFbT" id="BD" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="BE" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bn" role="3cqZAp">
          <node concept="2OqwBi" id="BF" role="3clFbG">
            <node concept="37vLTw" id="BG" role="2Oq$k0">
              <ref role="3cqZAo" node="Bs" resolve="b" />
            </node>
            <node concept="liA8E" id="BH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="BI" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="BJ" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="BK" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bo" role="3cqZAp">
          <node concept="2OqwBi" id="BL" role="3clFbG">
            <node concept="37vLTw" id="BM" role="2Oq$k0">
              <ref role="3cqZAo" node="Bs" resolve="b" />
            </node>
            <node concept="liA8E" id="BN" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="BO" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870224" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bp" role="3cqZAp">
          <node concept="2OqwBi" id="BP" role="3clFbG">
            <node concept="37vLTw" id="BQ" role="2Oq$k0">
              <ref role="3cqZAo" node="Bs" resolve="b" />
            </node>
            <node concept="liA8E" id="BR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="BS" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Bq" role="3cqZAp">
          <node concept="2OqwBi" id="BT" role="3clFbG">
            <node concept="2OqwBi" id="BU" role="2Oq$k0">
              <node concept="2OqwBi" id="BW" role="2Oq$k0">
                <node concept="2OqwBi" id="BY" role="2Oq$k0">
                  <node concept="37vLTw" id="C0" role="2Oq$k0">
                    <ref role="3cqZAo" node="Bs" resolve="b" />
                  </node>
                  <node concept="liA8E" id="C1" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="C2" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="C3" role="37wK5m">
                      <property role="1adDun" value="0x220b50389f37e25aL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="BZ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="C4" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <node concept="1adDum" id="C5" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                      <node concept="cd27G" id="C9" role="lGtFl">
                        <node concept="3u3nmq" id="Ca" role="cd27D">
                          <property role="3u3nmv" value="6276268823263870218" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="C6" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                      <node concept="cd27G" id="Cb" role="lGtFl">
                        <node concept="3u3nmq" id="Cc" role="cd27D">
                          <property role="3u3nmv" value="6276268823263870218" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="C7" role="37wK5m">
                      <property role="1adDun" value="0x5719c93ddd807d0aL" />
                      <node concept="cd27G" id="Cd" role="lGtFl">
                        <node concept="3u3nmq" id="Ce" role="cd27D">
                          <property role="3u3nmv" value="6276268823263870218" />
                        </node>
                      </node>
                    </node>
                    <node concept="cd27G" id="C8" role="lGtFl">
                      <node concept="3u3nmq" id="Cf" role="cd27D">
                        <property role="3u3nmv" value="6276268823263870218" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="BX" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Cg" role="37wK5m">
                  <property role="Xl_RC" value="2453142626152997466" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="BV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Br" role="3cqZAp">
          <node concept="2OqwBi" id="Ch" role="3cqZAk">
            <node concept="37vLTw" id="Ci" role="2Oq$k0">
              <ref role="3cqZAo" node="Bs" resolve="b" />
            </node>
            <node concept="liA8E" id="Cj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Bj" role="1B3o_S" />
      <node concept="3uibUv" id="Bk" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wh" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForConditionWithFormula" />
      <node concept="3clFbS" id="Ck" role="3clF47">
        <node concept="3cpWs8" id="Cn" role="3cqZAp">
          <node concept="3cpWsn" id="Cu" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Cv" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Cw" role="33vP2m">
              <node concept="1pGfFk" id="Cx" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Cy" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Cz" role="37wK5m">
                  <property role="Xl_RC" value="ConditionWithFormula" />
                </node>
                <node concept="1adDum" id="C$" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="C_" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="CA" role="37wK5m">
                  <property role="1adDun" value="0x5719c93ddd814255L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Co" role="3cqZAp">
          <node concept="2OqwBi" id="CB" role="3clFbG">
            <node concept="37vLTw" id="CC" role="2Oq$k0">
              <ref role="3cqZAo" node="Cu" resolve="b" />
            </node>
            <node concept="liA8E" id="CD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="CE" role="37wK5m" />
              <node concept="3clFbT" id="CF" role="37wK5m" />
              <node concept="3clFbT" id="CG" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cp" role="3cqZAp">
          <node concept="2OqwBi" id="CH" role="3clFbG">
            <node concept="37vLTw" id="CI" role="2Oq$k0">
              <ref role="3cqZAo" node="Cu" resolve="b" />
            </node>
            <node concept="liA8E" id="CJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(java.lang.String,long,long,long)" resolve="super_" />
              <node concept="Xl_RD" id="CK" role="37wK5m">
                <property role="Xl_RC" value="BCNNM_DSL.structure.Condition" />
              </node>
              <node concept="1adDum" id="CL" role="37wK5m">
                <property role="1adDun" value="0x9edcd71856d444c5L" />
              </node>
              <node concept="1adDum" id="CM" role="37wK5m">
                <property role="1adDun" value="0xae868ea31c5d7fbbL" />
              </node>
              <node concept="1adDum" id="CN" role="37wK5m">
                <property role="1adDun" value="0x5719c93ddd807d10L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cq" role="3cqZAp">
          <node concept="2OqwBi" id="CO" role="3clFbG">
            <node concept="37vLTw" id="CP" role="2Oq$k0">
              <ref role="3cqZAo" node="Cu" resolve="b" />
            </node>
            <node concept="liA8E" id="CQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="CR" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263920725" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cr" role="3cqZAp">
          <node concept="2OqwBi" id="CS" role="3clFbG">
            <node concept="37vLTw" id="CT" role="2Oq$k0">
              <ref role="3cqZAo" node="Cu" resolve="b" />
            </node>
            <node concept="liA8E" id="CU" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="CV" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Cs" role="3cqZAp">
          <node concept="2OqwBi" id="CW" role="3clFbG">
            <node concept="2OqwBi" id="CX" role="2Oq$k0">
              <node concept="2OqwBi" id="CZ" role="2Oq$k0">
                <node concept="2OqwBi" id="D1" role="2Oq$k0">
                  <node concept="2OqwBi" id="D3" role="2Oq$k0">
                    <node concept="2OqwBi" id="D5" role="2Oq$k0">
                      <node concept="2OqwBi" id="D7" role="2Oq$k0">
                        <node concept="37vLTw" id="D9" role="2Oq$k0">
                          <ref role="3cqZAo" node="Cu" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Da" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Db" role="37wK5m">
                            <property role="Xl_RC" value="formula" />
                          </node>
                          <node concept="1adDum" id="Dc" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e834056L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="D8" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Dd" role="37wK5m">
                          <property role="1adDun" value="0xa48297046b1b4b3fL" />
                        </node>
                        <node concept="1adDum" id="De" role="37wK5m">
                          <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
                        </node>
                        <node concept="1adDum" id="Df" role="37wK5m">
                          <property role="1adDun" value="0x76eb757dfbac2099L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="D6" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Dg" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="D4" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Dh" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="D2" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Di" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="D0" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Dj" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545008214" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="CY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ct" role="3cqZAp">
          <node concept="2OqwBi" id="Dk" role="3cqZAk">
            <node concept="37vLTw" id="Dl" role="2Oq$k0">
              <ref role="3cqZAo" node="Cu" resolve="b" />
            </node>
            <node concept="liA8E" id="Dm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Cl" role="1B3o_S" />
      <node concept="3uibUv" id="Cm" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wi" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForDynamicMechanism" />
      <node concept="3clFbS" id="Dn" role="3clF47">
        <node concept="3cpWs8" id="Dq" role="3cqZAp">
          <node concept="3cpWsn" id="D_" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="DA" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="DB" role="33vP2m">
              <node concept="1pGfFk" id="DC" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="DD" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="DE" role="37wK5m">
                  <property role="Xl_RC" value="DynamicMechanism" />
                </node>
                <node concept="1adDum" id="DF" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="DG" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="DH" role="37wK5m">
                  <property role="1adDun" value="0x46c97db93e84b707L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dr" role="3cqZAp">
          <node concept="2OqwBi" id="DI" role="3clFbG">
            <node concept="37vLTw" id="DJ" role="2Oq$k0">
              <ref role="3cqZAo" node="D_" resolve="b" />
            </node>
            <node concept="liA8E" id="DK" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="DL" role="37wK5m" />
              <node concept="3clFbT" id="DM" role="37wK5m" />
              <node concept="3clFbT" id="DN" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ds" role="3cqZAp">
          <node concept="2OqwBi" id="DO" role="3clFbG">
            <node concept="37vLTw" id="DP" role="2Oq$k0">
              <ref role="3cqZAo" node="D_" resolve="b" />
            </node>
            <node concept="liA8E" id="DQ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="DR" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="DS" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="DT" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dt" role="3cqZAp">
          <node concept="2OqwBi" id="DU" role="3clFbG">
            <node concept="37vLTw" id="DV" role="2Oq$k0">
              <ref role="3cqZAo" node="D_" resolve="b" />
            </node>
            <node concept="liA8E" id="DW" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="DX" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287545104135" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Du" role="3cqZAp">
          <node concept="2OqwBi" id="DY" role="3clFbG">
            <node concept="37vLTw" id="DZ" role="2Oq$k0">
              <ref role="3cqZAo" node="D_" resolve="b" />
            </node>
            <node concept="liA8E" id="E0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="E1" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dv" role="3cqZAp">
          <node concept="2OqwBi" id="E2" role="3clFbG">
            <node concept="2OqwBi" id="E3" role="2Oq$k0">
              <node concept="2OqwBi" id="E5" role="2Oq$k0">
                <node concept="2OqwBi" id="E7" role="2Oq$k0">
                  <node concept="37vLTw" id="E9" role="2Oq$k0">
                    <ref role="3cqZAo" node="D_" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Ea" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Eb" role="37wK5m">
                      <property role="Xl_RC" value="duration" />
                    </node>
                    <node concept="1adDum" id="Ec" role="37wK5m">
                      <property role="1adDun" value="0x46c97db93e84b70cL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="E8" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="Ed" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.INTEGER" resolve="INTEGER" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="E6" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Ee" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545104140" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="E4" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dw" role="3cqZAp">
          <node concept="2OqwBi" id="Ef" role="3clFbG">
            <node concept="2OqwBi" id="Eg" role="2Oq$k0">
              <node concept="2OqwBi" id="Ei" role="2Oq$k0">
                <node concept="2OqwBi" id="Ek" role="2Oq$k0">
                  <node concept="37vLTw" id="Em" role="2Oq$k0">
                    <ref role="3cqZAo" node="D_" resolve="b" />
                  </node>
                  <node concept="liA8E" id="En" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Eo" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="Ep" role="37wK5m">
                      <property role="1adDun" value="0x46c97db93e84e5f2L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="El" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="Eq" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <node concept="1adDum" id="Er" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                      <node concept="cd27G" id="Ev" role="lGtFl">
                        <node concept="3u3nmq" id="Ew" role="cd27D">
                          <property role="3u3nmv" value="5100746287545116151" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="Es" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                      <node concept="cd27G" id="Ex" role="lGtFl">
                        <node concept="3u3nmq" id="Ey" role="cd27D">
                          <property role="3u3nmv" value="5100746287545116151" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="Et" role="37wK5m">
                      <property role="1adDun" value="0x46c97db93e84e5f7L" />
                      <node concept="cd27G" id="Ez" role="lGtFl">
                        <node concept="3u3nmq" id="E$" role="cd27D">
                          <property role="3u3nmv" value="5100746287545116151" />
                        </node>
                      </node>
                    </node>
                    <node concept="cd27G" id="Eu" role="lGtFl">
                      <node concept="3u3nmq" id="E_" role="cd27D">
                        <property role="3u3nmv" value="5100746287545116151" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Ej" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="EA" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545116146" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Eh" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dx" role="3cqZAp">
          <node concept="2OqwBi" id="EB" role="3clFbG">
            <node concept="2OqwBi" id="EC" role="2Oq$k0">
              <node concept="2OqwBi" id="EE" role="2Oq$k0">
                <node concept="2OqwBi" id="EG" role="2Oq$k0">
                  <node concept="2OqwBi" id="EI" role="2Oq$k0">
                    <node concept="37vLTw" id="EK" role="2Oq$k0">
                      <ref role="3cqZAo" node="D_" resolve="b" />
                    </node>
                    <node concept="liA8E" id="EL" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="EM" role="37wK5m">
                        <property role="Xl_RC" value="baseMechanism" />
                      </node>
                      <node concept="1adDum" id="EN" role="37wK5m">
                        <property role="1adDun" value="0x46c97db93e84e665L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="EJ" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="EO" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="EP" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="EQ" role="37wK5m">
                      <property role="1adDun" value="0x46c97db93e8314a0L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="EH" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="ER" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="EF" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="ES" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545116261" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="ED" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dy" role="3cqZAp">
          <node concept="2OqwBi" id="ET" role="3clFbG">
            <node concept="2OqwBi" id="EU" role="2Oq$k0">
              <node concept="2OqwBi" id="EW" role="2Oq$k0">
                <node concept="2OqwBi" id="EY" role="2Oq$k0">
                  <node concept="2OqwBi" id="F0" role="2Oq$k0">
                    <node concept="37vLTw" id="F2" role="2Oq$k0">
                      <ref role="3cqZAo" node="D_" resolve="b" />
                    </node>
                    <node concept="liA8E" id="F3" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="F4" role="37wK5m">
                        <property role="Xl_RC" value="parameters" />
                      </node>
                      <node concept="1adDum" id="F5" role="37wK5m">
                        <property role="1adDun" value="0x46c97db93e84b70aL" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="F1" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="F6" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="F7" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="F8" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f448aa46L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="EZ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="F9" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="EX" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Fa" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545104138" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="EV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Dz" role="3cqZAp">
          <node concept="2OqwBi" id="Fb" role="3clFbG">
            <node concept="2OqwBi" id="Fc" role="2Oq$k0">
              <node concept="2OqwBi" id="Fe" role="2Oq$k0">
                <node concept="2OqwBi" id="Fg" role="2Oq$k0">
                  <node concept="2OqwBi" id="Fi" role="2Oq$k0">
                    <node concept="2OqwBi" id="Fk" role="2Oq$k0">
                      <node concept="2OqwBi" id="Fm" role="2Oq$k0">
                        <node concept="37vLTw" id="Fo" role="2Oq$k0">
                          <ref role="3cqZAo" node="D_" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Fp" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Fq" role="37wK5m">
                            <property role="Xl_RC" value="formula" />
                          </node>
                          <node concept="1adDum" id="Fr" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e84b70eL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Fn" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Fs" role="37wK5m">
                          <property role="1adDun" value="0xa48297046b1b4b3fL" />
                        </node>
                        <node concept="1adDum" id="Ft" role="37wK5m">
                          <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
                        </node>
                        <node concept="1adDum" id="Fu" role="37wK5m">
                          <property role="1adDun" value="0x76eb757dfbac2099L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Fl" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Fv" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="Fj" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Fw" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Fh" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Fx" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Ff" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Fy" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545104142" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Fd" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="D$" role="3cqZAp">
          <node concept="2OqwBi" id="Fz" role="3cqZAk">
            <node concept="37vLTw" id="F$" role="2Oq$k0">
              <ref role="3cqZAo" node="D_" resolve="b" />
            </node>
            <node concept="liA8E" id="F_" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Do" role="1B3o_S" />
      <node concept="3uibUv" id="Dp" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wj" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForGlobalParameters" />
      <node concept="3clFbS" id="FA" role="3clF47">
        <node concept="3cpWs8" id="FD" role="3cqZAp">
          <node concept="3cpWsn" id="FK" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="FL" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="FM" role="33vP2m">
              <node concept="1pGfFk" id="FN" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="FO" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="FP" role="37wK5m">
                  <property role="Xl_RC" value="GlobalParameters" />
                </node>
                <node concept="1adDum" id="FQ" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="FR" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="FS" role="37wK5m">
                  <property role="1adDun" value="0x5d892dceb2156728L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FE" role="3cqZAp">
          <node concept="2OqwBi" id="FT" role="3clFbG">
            <node concept="37vLTw" id="FU" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="FV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="FW" role="37wK5m" />
              <node concept="3clFbT" id="FX" role="37wK5m" />
              <node concept="3clFbT" id="FY" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FF" role="3cqZAp">
          <node concept="2OqwBi" id="FZ" role="3clFbG">
            <node concept="37vLTw" id="G0" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="G1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="G2" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6739968683110917928" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FG" role="3cqZAp">
          <node concept="2OqwBi" id="G3" role="3clFbG">
            <node concept="37vLTw" id="G4" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="G5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="G6" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FH" role="3cqZAp">
          <node concept="2OqwBi" id="G7" role="3clFbG">
            <node concept="2OqwBi" id="G8" role="2Oq$k0">
              <node concept="2OqwBi" id="Ga" role="2Oq$k0">
                <node concept="2OqwBi" id="Gc" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ge" role="2Oq$k0">
                    <node concept="2OqwBi" id="Gg" role="2Oq$k0">
                      <node concept="2OqwBi" id="Gi" role="2Oq$k0">
                        <node concept="37vLTw" id="Gk" role="2Oq$k0">
                          <ref role="3cqZAo" node="FK" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Gl" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Gm" role="37wK5m">
                            <property role="Xl_RC" value="constants" />
                          </node>
                          <node concept="1adDum" id="Gn" role="37wK5m">
                            <property role="1adDun" value="0x5d892dceb2156729L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Gj" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Go" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="Gp" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="Gq" role="37wK5m">
                          <property role="1adDun" value="0x46aac9d4f4483a03L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Gh" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Gr" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Gf" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Gs" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Gd" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Gt" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Gb" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Gu" role="37wK5m">
                  <property role="Xl_RC" value="6739968683110917929" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="G9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FI" role="3cqZAp">
          <node concept="2OqwBi" id="Gv" role="3clFbG">
            <node concept="2OqwBi" id="Gw" role="2Oq$k0">
              <node concept="2OqwBi" id="Gy" role="2Oq$k0">
                <node concept="2OqwBi" id="G$" role="2Oq$k0">
                  <node concept="2OqwBi" id="GA" role="2Oq$k0">
                    <node concept="2OqwBi" id="GC" role="2Oq$k0">
                      <node concept="2OqwBi" id="GE" role="2Oq$k0">
                        <node concept="37vLTw" id="GG" role="2Oq$k0">
                          <ref role="3cqZAo" node="FK" resolve="b" />
                        </node>
                        <node concept="liA8E" id="GH" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="GI" role="37wK5m">
                            <property role="Xl_RC" value="molecules" />
                          </node>
                          <node concept="1adDum" id="GJ" role="37wK5m">
                            <property role="1adDun" value="0x5d892dceb2165c53L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="GF" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="GK" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="GL" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="GM" role="37wK5m">
                          <property role="1adDun" value="0x46aac9d4f447b0c3L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="GD" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="GN" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="GB" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="GO" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="G_" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="GP" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Gz" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="GQ" role="37wK5m">
                  <property role="Xl_RC" value="6739968683110980691" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Gx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="FJ" role="3cqZAp">
          <node concept="2OqwBi" id="GR" role="3cqZAk">
            <node concept="37vLTw" id="GS" role="2Oq$k0">
              <ref role="3cqZAo" node="FK" resolve="b" />
            </node>
            <node concept="liA8E" id="GT" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="FB" role="1B3o_S" />
      <node concept="3uibUv" id="FC" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wk" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForModelMechanism" />
      <node concept="3clFbS" id="GU" role="3clF47">
        <node concept="3cpWs8" id="GX" role="3cqZAp">
          <node concept="3cpWsn" id="H3" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="H4" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="H5" role="33vP2m">
              <node concept="1pGfFk" id="H6" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="H7" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="H8" role="37wK5m">
                  <property role="Xl_RC" value="ModelMechanism" />
                </node>
                <node concept="1adDum" id="H9" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Ha" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Hb" role="37wK5m">
                  <property role="1adDun" value="0x46c97db93e8314a0L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GY" role="3cqZAp">
          <node concept="2OqwBi" id="Hc" role="3clFbG">
            <node concept="37vLTw" id="Hd" role="2Oq$k0">
              <ref role="3cqZAo" node="H3" resolve="b" />
            </node>
            <node concept="liA8E" id="He" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Hf" role="37wK5m" />
              <node concept="3clFbT" id="Hg" role="37wK5m" />
              <node concept="3clFbT" id="Hh" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="GZ" role="3cqZAp">
          <node concept="2OqwBi" id="Hi" role="3clFbG">
            <node concept="37vLTw" id="Hj" role="2Oq$k0">
              <ref role="3cqZAo" node="H3" resolve="b" />
            </node>
            <node concept="liA8E" id="Hk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Hl" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Hm" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="Hn" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H0" role="3cqZAp">
          <node concept="2OqwBi" id="Ho" role="3clFbG">
            <node concept="37vLTw" id="Hp" role="2Oq$k0">
              <ref role="3cqZAo" node="H3" resolve="b" />
            </node>
            <node concept="liA8E" id="Hq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Hr" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287544997024" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="H1" role="3cqZAp">
          <node concept="2OqwBi" id="Hs" role="3clFbG">
            <node concept="37vLTw" id="Ht" role="2Oq$k0">
              <ref role="3cqZAo" node="H3" resolve="b" />
            </node>
            <node concept="liA8E" id="Hu" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Hv" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="H2" role="3cqZAp">
          <node concept="2OqwBi" id="Hw" role="3cqZAk">
            <node concept="37vLTw" id="Hx" role="2Oq$k0">
              <ref role="3cqZAo" node="H3" resolve="b" />
            </node>
            <node concept="liA8E" id="Hy" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="GV" role="1B3o_S" />
      <node concept="3uibUv" id="GW" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wl" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMolecule" />
      <node concept="3clFbS" id="Hz" role="3clF47">
        <node concept="3cpWs8" id="HA" role="3cqZAp">
          <node concept="3cpWsn" id="HI" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="HJ" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="HK" role="33vP2m">
              <node concept="1pGfFk" id="HL" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="HM" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="HN" role="37wK5m">
                  <property role="Xl_RC" value="Molecule" />
                </node>
                <node concept="1adDum" id="HO" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="HP" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="HQ" role="37wK5m">
                  <property role="1adDun" value="0x46aac9d4f448aa46L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HB" role="3cqZAp">
          <node concept="2OqwBi" id="HR" role="3clFbG">
            <node concept="37vLTw" id="HS" role="2Oq$k0">
              <ref role="3cqZAo" node="HI" resolve="b" />
            </node>
            <node concept="liA8E" id="HT" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="HU" role="37wK5m" />
              <node concept="3clFbT" id="HV" role="37wK5m" />
              <node concept="3clFbT" id="HW" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HC" role="3cqZAp">
          <node concept="2OqwBi" id="HX" role="3clFbG">
            <node concept="37vLTw" id="HY" role="2Oq$k0">
              <ref role="3cqZAo" node="HI" resolve="b" />
            </node>
            <node concept="liA8E" id="HZ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="I0" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="I1" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="I2" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HD" role="3cqZAp">
          <node concept="2OqwBi" id="I3" role="3clFbG">
            <node concept="37vLTw" id="I4" role="2Oq$k0">
              <ref role="3cqZAo" node="HI" resolve="b" />
            </node>
            <node concept="liA8E" id="I5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="I6" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164419654" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HE" role="3cqZAp">
          <node concept="2OqwBi" id="I7" role="3clFbG">
            <node concept="37vLTw" id="I8" role="2Oq$k0">
              <ref role="3cqZAo" node="HI" resolve="b" />
            </node>
            <node concept="liA8E" id="I9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Ia" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HF" role="3cqZAp">
          <node concept="2OqwBi" id="Ib" role="3clFbG">
            <node concept="2OqwBi" id="Ic" role="2Oq$k0">
              <node concept="2OqwBi" id="Ie" role="2Oq$k0">
                <node concept="2OqwBi" id="Ig" role="2Oq$k0">
                  <node concept="2OqwBi" id="Ii" role="2Oq$k0">
                    <node concept="37vLTw" id="Ik" role="2Oq$k0">
                      <ref role="3cqZAo" node="HI" resolve="b" />
                    </node>
                    <node concept="liA8E" id="Il" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="Im" role="37wK5m">
                        <property role="Xl_RC" value="defintion" />
                      </node>
                      <node concept="1adDum" id="In" role="37wK5m">
                        <property role="1adDun" value="0x6101bf7b1aa43bb8L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Ij" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="Io" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="Ip" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="Iq" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c3L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Ih" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="Ir" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="If" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Is" role="37wK5m">
                  <property role="Xl_RC" value="6990078632104573880" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Id" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="HG" role="3cqZAp">
          <node concept="2OqwBi" id="It" role="3clFbG">
            <node concept="2OqwBi" id="Iu" role="2Oq$k0">
              <node concept="2OqwBi" id="Iw" role="2Oq$k0">
                <node concept="2OqwBi" id="Iy" role="2Oq$k0">
                  <node concept="2OqwBi" id="I$" role="2Oq$k0">
                    <node concept="2OqwBi" id="IA" role="2Oq$k0">
                      <node concept="2OqwBi" id="IC" role="2Oq$k0">
                        <node concept="37vLTw" id="IE" role="2Oq$k0">
                          <ref role="3cqZAo" node="HI" resolve="b" />
                        </node>
                        <node concept="liA8E" id="IF" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="IG" role="37wK5m">
                            <property role="Xl_RC" value="concentration" />
                          </node>
                          <node concept="1adDum" id="IH" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e83ca25L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="ID" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="II" role="37wK5m">
                          <property role="1adDun" value="0xa48297046b1b4b3fL" />
                        </node>
                        <node concept="1adDum" id="IJ" role="37wK5m">
                          <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
                        </node>
                        <node concept="1adDum" id="IK" role="37wK5m">
                          <property role="1adDun" value="0x76eb757dfbac2099L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="IB" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="IL" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="I_" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="IM" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Iz" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="IN" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="Ix" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="IO" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545043493" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Iv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="HH" role="3cqZAp">
          <node concept="2OqwBi" id="IP" role="3cqZAk">
            <node concept="37vLTw" id="IQ" role="2Oq$k0">
              <ref role="3cqZAo" node="HI" resolve="b" />
            </node>
            <node concept="liA8E" id="IR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="H$" role="1B3o_S" />
      <node concept="3uibUv" id="H_" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wm" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMoleculeDefinition" />
      <node concept="3clFbS" id="IS" role="3clF47">
        <node concept="3cpWs8" id="IV" role="3cqZAp">
          <node concept="3cpWsn" id="J4" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="J5" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="J6" role="33vP2m">
              <node concept="1pGfFk" id="J7" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="J8" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="J9" role="37wK5m">
                  <property role="Xl_RC" value="MoleculeDefinition" />
                </node>
                <node concept="1adDum" id="Ja" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Jb" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Jc" role="37wK5m">
                  <property role="1adDun" value="0x46aac9d4f447b0c3L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IW" role="3cqZAp">
          <node concept="2OqwBi" id="Jd" role="3clFbG">
            <node concept="37vLTw" id="Je" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="Jf" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Jg" role="37wK5m" />
              <node concept="3clFbT" id="Jh" role="37wK5m" />
              <node concept="3clFbT" id="Ji" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IX" role="3cqZAp">
          <node concept="2OqwBi" id="Jj" role="3clFbG">
            <node concept="37vLTw" id="Jk" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="Jl" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Jm" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Jn" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="Jo" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IY" role="3cqZAp">
          <node concept="2OqwBi" id="Jp" role="3clFbG">
            <node concept="37vLTw" id="Jq" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="Jr" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Js" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355779" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IZ" role="3cqZAp">
          <node concept="2OqwBi" id="Jt" role="3clFbG">
            <node concept="37vLTw" id="Ju" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="Jv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Jw" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J0" role="3cqZAp">
          <node concept="2OqwBi" id="Jx" role="3clFbG">
            <node concept="2OqwBi" id="Jy" role="2Oq$k0">
              <node concept="2OqwBi" id="J$" role="2Oq$k0">
                <node concept="2OqwBi" id="JA" role="2Oq$k0">
                  <node concept="37vLTw" id="JC" role="2Oq$k0">
                    <ref role="3cqZAo" node="J4" resolve="b" />
                  </node>
                  <node concept="liA8E" id="JD" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="JE" role="37wK5m">
                      <property role="Xl_RC" value="type" />
                    </node>
                    <node concept="1adDum" id="JF" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c4L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="JB" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="2YIFZM" id="JG" role="37wK5m">
                    <ref role="37wK5l" to="e8bb:~MetaIdFactory.dataTypeId(long,long,long)" resolve="dataTypeId" />
                    <ref role="1Pybhc" to="e8bb:~MetaIdFactory" resolve="MetaIdFactory" />
                    <node concept="1adDum" id="JH" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                      <node concept="cd27G" id="JL" role="lGtFl">
                        <node concept="3u3nmq" id="JM" role="cd27D">
                          <property role="3u3nmv" value="5092104245164355785" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="JI" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                      <node concept="cd27G" id="JN" role="lGtFl">
                        <node concept="3u3nmq" id="JO" role="cd27D">
                          <property role="3u3nmv" value="5092104245164355785" />
                        </node>
                      </node>
                    </node>
                    <node concept="1adDum" id="JJ" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c9L" />
                      <node concept="cd27G" id="JP" role="lGtFl">
                        <node concept="3u3nmq" id="JQ" role="cd27D">
                          <property role="3u3nmv" value="5092104245164355785" />
                        </node>
                      </node>
                    </node>
                    <node concept="cd27G" id="JK" role="lGtFl">
                      <node concept="3u3nmq" id="JR" role="cd27D">
                        <property role="3u3nmv" value="5092104245164355785" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="J_" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="JS" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164355780" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Jz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J1" role="3cqZAp">
          <node concept="2OqwBi" id="JT" role="3clFbG">
            <node concept="2OqwBi" id="JU" role="2Oq$k0">
              <node concept="2OqwBi" id="JW" role="2Oq$k0">
                <node concept="2OqwBi" id="JY" role="2Oq$k0">
                  <node concept="37vLTw" id="K0" role="2Oq$k0">
                    <ref role="3cqZAo" node="J4" resolve="b" />
                  </node>
                  <node concept="liA8E" id="K1" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="K2" role="37wK5m">
                      <property role="Xl_RC" value="radius" />
                    </node>
                    <node concept="1adDum" id="K3" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c6L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="JZ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="K4" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.INTEGER" resolve="INTEGER" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="JX" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="K5" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164355782" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="JV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="J2" role="3cqZAp">
          <node concept="2OqwBi" id="K6" role="3clFbG">
            <node concept="37vLTw" id="K7" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="K8" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="K9" role="37wK5m">
                <property role="Xl_RC" value="molecule reference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="J3" role="3cqZAp">
          <node concept="2OqwBi" id="Ka" role="3cqZAk">
            <node concept="37vLTw" id="Kb" role="2Oq$k0">
              <ref role="3cqZAo" node="J4" resolve="b" />
            </node>
            <node concept="liA8E" id="Kc" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="IT" role="1B3o_S" />
      <node concept="3uibUv" id="IU" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wn" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMoleculeDefinitionReference" />
      <node concept="3clFbS" id="Kd" role="3clF47">
        <node concept="3cpWs8" id="Kg" role="3cqZAp">
          <node concept="3cpWsn" id="Km" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Kn" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Ko" role="33vP2m">
              <node concept="1pGfFk" id="Kp" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Kq" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Kr" role="37wK5m">
                  <property role="Xl_RC" value="MoleculeDefinitionReference" />
                </node>
                <node concept="1adDum" id="Ks" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Kt" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Ku" role="37wK5m">
                  <property role="1adDun" value="0x6101bf7b1aa274b9L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Kh" role="3cqZAp">
          <node concept="2OqwBi" id="Kv" role="3clFbG">
            <node concept="37vLTw" id="Kw" role="2Oq$k0">
              <ref role="3cqZAo" node="Km" resolve="b" />
            </node>
            <node concept="liA8E" id="Kx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ky" role="37wK5m" />
              <node concept="3clFbT" id="Kz" role="37wK5m" />
              <node concept="3clFbT" id="K$" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ki" role="3cqZAp">
          <node concept="2OqwBi" id="K_" role="3clFbG">
            <node concept="37vLTw" id="KA" role="2Oq$k0">
              <ref role="3cqZAo" node="Km" resolve="b" />
            </node>
            <node concept="liA8E" id="KB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="KC" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6990078632104457401" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Kj" role="3cqZAp">
          <node concept="2OqwBi" id="KD" role="3clFbG">
            <node concept="37vLTw" id="KE" role="2Oq$k0">
              <ref role="3cqZAo" node="Km" resolve="b" />
            </node>
            <node concept="liA8E" id="KF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="KG" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Kk" role="3cqZAp">
          <node concept="2OqwBi" id="KH" role="3clFbG">
            <node concept="2OqwBi" id="KI" role="2Oq$k0">
              <node concept="2OqwBi" id="KK" role="2Oq$k0">
                <node concept="2OqwBi" id="KM" role="2Oq$k0">
                  <node concept="2OqwBi" id="KO" role="2Oq$k0">
                    <node concept="37vLTw" id="KQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="Km" resolve="b" />
                    </node>
                    <node concept="liA8E" id="KR" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="KS" role="37wK5m">
                        <property role="Xl_RC" value="definition" />
                      </node>
                      <node concept="1adDum" id="KT" role="37wK5m">
                        <property role="1adDun" value="0x6101bf7b1aa274c1L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="KP" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="KU" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="KV" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="KW" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c3L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="KN" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="KX" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="KL" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="KY" role="37wK5m">
                  <property role="Xl_RC" value="6990078632104457409" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="KJ" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Kl" role="3cqZAp">
          <node concept="2OqwBi" id="KZ" role="3cqZAk">
            <node concept="37vLTw" id="L0" role="2Oq$k0">
              <ref role="3cqZAo" node="Km" resolve="b" />
            </node>
            <node concept="liA8E" id="L1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Ke" role="1B3o_S" />
      <node concept="3uibUv" id="Kf" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wo" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForMoleculeReference" />
      <node concept="3clFbS" id="L2" role="3clF47">
        <node concept="3cpWs8" id="L5" role="3cqZAp">
          <node concept="3cpWsn" id="Lc" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ld" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Le" role="33vP2m">
              <node concept="1pGfFk" id="Lf" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Lg" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Lh" role="37wK5m">
                  <property role="Xl_RC" value="MoleculeReference" />
                </node>
                <node concept="1adDum" id="Li" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Lj" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Lk" role="37wK5m">
                  <property role="1adDun" value="0x46c97db93e84318eL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L6" role="3cqZAp">
          <node concept="2OqwBi" id="Ll" role="3clFbG">
            <node concept="37vLTw" id="Lm" role="2Oq$k0">
              <ref role="3cqZAo" node="Lc" resolve="b" />
            </node>
            <node concept="liA8E" id="Ln" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Lo" role="37wK5m" />
              <node concept="3clFbT" id="Lp" role="37wK5m" />
              <node concept="3clFbT" id="Lq" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L7" role="3cqZAp">
          <node concept="2OqwBi" id="Lr" role="3clFbG">
            <node concept="37vLTw" id="Ls" role="2Oq$k0">
              <ref role="3cqZAo" node="Lc" resolve="b" />
            </node>
            <node concept="liA8E" id="Lt" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(java.lang.String,long,long,long)" resolve="super_" />
              <node concept="Xl_RD" id="Lu" role="37wK5m">
                <property role="Xl_RC" value="org.mar9000.mps.ecmascript.structure.JSExpression" />
              </node>
              <node concept="1adDum" id="Lv" role="37wK5m">
                <property role="1adDun" value="0xa48297046b1b4b3fL" />
              </node>
              <node concept="1adDum" id="Lw" role="37wK5m">
                <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
              </node>
              <node concept="1adDum" id="Lx" role="37wK5m">
                <property role="1adDun" value="0x76eb757dfbac2099L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L8" role="3cqZAp">
          <node concept="2OqwBi" id="Ly" role="3clFbG">
            <node concept="37vLTw" id="Lz" role="2Oq$k0">
              <ref role="3cqZAo" node="Lc" resolve="b" />
            </node>
            <node concept="liA8E" id="L$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="L_" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287545069966" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="L9" role="3cqZAp">
          <node concept="2OqwBi" id="LA" role="3clFbG">
            <node concept="37vLTw" id="LB" role="2Oq$k0">
              <ref role="3cqZAo" node="Lc" resolve="b" />
            </node>
            <node concept="liA8E" id="LC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="LD" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="La" role="3cqZAp">
          <node concept="2OqwBi" id="LE" role="3clFbG">
            <node concept="2OqwBi" id="LF" role="2Oq$k0">
              <node concept="2OqwBi" id="LH" role="2Oq$k0">
                <node concept="2OqwBi" id="LJ" role="2Oq$k0">
                  <node concept="2OqwBi" id="LL" role="2Oq$k0">
                    <node concept="37vLTw" id="LN" role="2Oq$k0">
                      <ref role="3cqZAo" node="Lc" resolve="b" />
                    </node>
                    <node concept="liA8E" id="LO" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="LP" role="37wK5m">
                        <property role="Xl_RC" value="molecule" />
                      </node>
                      <node concept="1adDum" id="LQ" role="37wK5m">
                        <property role="1adDun" value="0x46c97db93e843192L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="LM" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="LR" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="LS" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="LT" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f448aa46L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="LK" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="LU" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="LI" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="LV" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545069970" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="LG" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Lb" role="3cqZAp">
          <node concept="2OqwBi" id="LW" role="3cqZAk">
            <node concept="37vLTw" id="LX" role="2Oq$k0">
              <ref role="3cqZAo" node="Lc" resolve="b" />
            </node>
            <node concept="liA8E" id="LY" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="L3" role="1B3o_S" />
      <node concept="3uibUv" id="L4" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wp" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForNamedConstant" />
      <node concept="3clFbS" id="LZ" role="3clF47">
        <node concept="3cpWs8" id="M2" role="3cqZAp">
          <node concept="3cpWsn" id="M9" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Ma" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Mb" role="33vP2m">
              <node concept="1pGfFk" id="Mc" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Md" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Me" role="37wK5m">
                  <property role="Xl_RC" value="NamedConstant" />
                </node>
                <node concept="1adDum" id="Mf" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Mg" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Mh" role="37wK5m">
                  <property role="1adDun" value="0x46aac9d4f4483a03L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M3" role="3cqZAp">
          <node concept="2OqwBi" id="Mi" role="3clFbG">
            <node concept="37vLTw" id="Mj" role="2Oq$k0">
              <ref role="3cqZAo" node="M9" resolve="b" />
            </node>
            <node concept="liA8E" id="Mk" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ml" role="37wK5m" />
              <node concept="3clFbT" id="Mm" role="37wK5m" />
              <node concept="3clFbT" id="Mn" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M4" role="3cqZAp">
          <node concept="2OqwBi" id="Mo" role="3clFbG">
            <node concept="37vLTw" id="Mp" role="2Oq$k0">
              <ref role="3cqZAo" node="M9" resolve="b" />
            </node>
            <node concept="liA8E" id="Mq" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="Mr" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="Ms" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="Mt" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M5" role="3cqZAp">
          <node concept="2OqwBi" id="Mu" role="3clFbG">
            <node concept="37vLTw" id="Mv" role="2Oq$k0">
              <ref role="3cqZAo" node="M9" resolve="b" />
            </node>
            <node concept="liA8E" id="Mw" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Mx" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164390915" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M6" role="3cqZAp">
          <node concept="2OqwBi" id="My" role="3clFbG">
            <node concept="37vLTw" id="Mz" role="2Oq$k0">
              <ref role="3cqZAo" node="M9" resolve="b" />
            </node>
            <node concept="liA8E" id="M$" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="M_" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="M7" role="3cqZAp">
          <node concept="2OqwBi" id="MA" role="3clFbG">
            <node concept="2OqwBi" id="MB" role="2Oq$k0">
              <node concept="2OqwBi" id="MD" role="2Oq$k0">
                <node concept="2OqwBi" id="MF" role="2Oq$k0">
                  <node concept="2OqwBi" id="MH" role="2Oq$k0">
                    <node concept="2OqwBi" id="MJ" role="2Oq$k0">
                      <node concept="2OqwBi" id="ML" role="2Oq$k0">
                        <node concept="37vLTw" id="MN" role="2Oq$k0">
                          <ref role="3cqZAo" node="M9" resolve="b" />
                        </node>
                        <node concept="liA8E" id="MO" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="MP" role="37wK5m">
                            <property role="Xl_RC" value="value" />
                          </node>
                          <node concept="1adDum" id="MQ" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e814c1cL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="MM" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="MR" role="37wK5m">
                          <property role="1adDun" value="0xa48297046b1b4b3fL" />
                        </node>
                        <node concept="1adDum" id="MS" role="37wK5m">
                          <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
                        </node>
                        <node concept="1adDum" id="MT" role="37wK5m">
                          <property role="1adDun" value="0x76eb757dfbac2099L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="MK" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="MU" role="37wK5m" />
                    </node>
                  </node>
                  <node concept="liA8E" id="MI" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="MV" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="MG" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="MW" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="ME" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="MX" role="37wK5m">
                  <property role="Xl_RC" value="5100746287544880156" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="MC" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="M8" role="3cqZAp">
          <node concept="2OqwBi" id="MY" role="3cqZAk">
            <node concept="37vLTw" id="MZ" role="2Oq$k0">
              <ref role="3cqZAo" node="M9" resolve="b" />
            </node>
            <node concept="liA8E" id="N0" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="M0" role="1B3o_S" />
      <node concept="3uibUv" id="M1" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wq" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForNamedConstantReference" />
      <node concept="3clFbS" id="N1" role="3clF47">
        <node concept="3cpWs8" id="N4" role="3cqZAp">
          <node concept="3cpWsn" id="Nb" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Nc" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Nd" role="33vP2m">
              <node concept="1pGfFk" id="Ne" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Nf" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Ng" role="37wK5m">
                  <property role="Xl_RC" value="NamedConstantReference" />
                </node>
                <node concept="1adDum" id="Nh" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Ni" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Nj" role="37wK5m">
                  <property role="1adDun" value="0x46c97db93e859c65L" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N5" role="3cqZAp">
          <node concept="2OqwBi" id="Nk" role="3clFbG">
            <node concept="37vLTw" id="Nl" role="2Oq$k0">
              <ref role="3cqZAo" node="Nb" resolve="b" />
            </node>
            <node concept="liA8E" id="Nm" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Nn" role="37wK5m" />
              <node concept="3clFbT" id="No" role="37wK5m" />
              <node concept="3clFbT" id="Np" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N6" role="3cqZAp">
          <node concept="2OqwBi" id="Nq" role="3clFbG">
            <node concept="37vLTw" id="Nr" role="2Oq$k0">
              <ref role="3cqZAo" node="Nb" resolve="b" />
            </node>
            <node concept="liA8E" id="Ns" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(java.lang.String,long,long,long)" resolve="super_" />
              <node concept="Xl_RD" id="Nt" role="37wK5m">
                <property role="Xl_RC" value="org.mar9000.mps.ecmascript.structure.JSExpression" />
              </node>
              <node concept="1adDum" id="Nu" role="37wK5m">
                <property role="1adDun" value="0xa48297046b1b4b3fL" />
              </node>
              <node concept="1adDum" id="Nv" role="37wK5m">
                <property role="1adDun" value="0x8122a4a2e6ac90ffL" />
              </node>
              <node concept="1adDum" id="Nw" role="37wK5m">
                <property role="1adDun" value="0x76eb757dfbac2099L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N7" role="3cqZAp">
          <node concept="2OqwBi" id="Nx" role="3clFbG">
            <node concept="37vLTw" id="Ny" role="2Oq$k0">
              <ref role="3cqZAo" node="Nb" resolve="b" />
            </node>
            <node concept="liA8E" id="Nz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="N$" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5100746287545162853" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N8" role="3cqZAp">
          <node concept="2OqwBi" id="N_" role="3clFbG">
            <node concept="37vLTw" id="NA" role="2Oq$k0">
              <ref role="3cqZAo" node="Nb" resolve="b" />
            </node>
            <node concept="liA8E" id="NB" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="NC" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="N9" role="3cqZAp">
          <node concept="2OqwBi" id="ND" role="3clFbG">
            <node concept="2OqwBi" id="NE" role="2Oq$k0">
              <node concept="2OqwBi" id="NG" role="2Oq$k0">
                <node concept="2OqwBi" id="NI" role="2Oq$k0">
                  <node concept="2OqwBi" id="NK" role="2Oq$k0">
                    <node concept="37vLTw" id="NM" role="2Oq$k0">
                      <ref role="3cqZAo" node="Nb" resolve="b" />
                    </node>
                    <node concept="liA8E" id="NN" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.associate(java.lang.String,long)" resolve="associate" />
                      <node concept="Xl_RD" id="NO" role="37wK5m">
                        <property role="Xl_RC" value="ref" />
                      </node>
                      <node concept="1adDum" id="NP" role="37wK5m">
                        <property role="1adDun" value="0x46c97db93e859c66L" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="NL" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.target(long,long,long)" resolve="target" />
                    <node concept="1adDum" id="NQ" role="37wK5m">
                      <property role="1adDun" value="0x9edcd71856d444c5L" />
                    </node>
                    <node concept="1adDum" id="NR" role="37wK5m">
                      <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                    </node>
                    <node concept="1adDum" id="NS" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f4483a03L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="NJ" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.optional(boolean)" resolve="optional" />
                  <node concept="3clFbT" id="NT" role="37wK5m" />
                </node>
              </node>
              <node concept="liA8E" id="NH" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="NU" role="37wK5m">
                  <property role="Xl_RC" value="5100746287545162854" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="NF" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AssociationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Na" role="3cqZAp">
          <node concept="2OqwBi" id="NV" role="3cqZAk">
            <node concept="37vLTw" id="NW" role="2Oq$k0">
              <ref role="3cqZAo" node="Nb" resolve="b" />
            </node>
            <node concept="liA8E" id="NX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="N2" role="1B3o_S" />
      <node concept="3uibUv" id="N3" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wr" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSignalPathway" />
      <node concept="3clFbS" id="NY" role="3clF47">
        <node concept="3cpWs8" id="O1" role="3cqZAp">
          <node concept="3cpWsn" id="O8" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="O9" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Oa" role="33vP2m">
              <node concept="1pGfFk" id="Ob" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Oc" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Od" role="37wK5m">
                  <property role="Xl_RC" value="SignalPathway" />
                </node>
                <node concept="1adDum" id="Oe" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Of" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Og" role="37wK5m">
                  <property role="1adDun" value="0x5719c93ddd807d0fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O2" role="3cqZAp">
          <node concept="2OqwBi" id="Oh" role="3clFbG">
            <node concept="37vLTw" id="Oi" role="2Oq$k0">
              <ref role="3cqZAo" node="O8" resolve="b" />
            </node>
            <node concept="liA8E" id="Oj" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Ok" role="37wK5m" />
              <node concept="3clFbT" id="Ol" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="3clFbT" id="Om" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O3" role="3cqZAp">
          <node concept="2OqwBi" id="On" role="3clFbG">
            <node concept="37vLTw" id="Oo" role="2Oq$k0">
              <ref role="3cqZAo" node="O8" resolve="b" />
            </node>
            <node concept="liA8E" id="Op" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="Oq" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/6276268823263870223" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O4" role="3cqZAp">
          <node concept="2OqwBi" id="Or" role="3clFbG">
            <node concept="37vLTw" id="Os" role="2Oq$k0">
              <ref role="3cqZAo" node="O8" resolve="b" />
            </node>
            <node concept="liA8E" id="Ot" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="Ou" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O5" role="3cqZAp">
          <node concept="2OqwBi" id="Ov" role="3clFbG">
            <node concept="2OqwBi" id="Ow" role="2Oq$k0">
              <node concept="2OqwBi" id="Oy" role="2Oq$k0">
                <node concept="2OqwBi" id="O$" role="2Oq$k0">
                  <node concept="37vLTw" id="OA" role="2Oq$k0">
                    <ref role="3cqZAo" node="O8" resolve="b" />
                  </node>
                  <node concept="liA8E" id="OB" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="OC" role="37wK5m">
                      <property role="Xl_RC" value="frequency" />
                    </node>
                    <node concept="1adDum" id="OD" role="37wK5m">
                      <property role="1adDun" value="0x5719c93ddd8120cbL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="O_" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="OE" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.INTEGER" resolve="INTEGER" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Oz" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="OF" role="37wK5m">
                  <property role="Xl_RC" value="6276268823263912139" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Ox" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="O6" role="3cqZAp">
          <node concept="2OqwBi" id="OG" role="3clFbG">
            <node concept="2OqwBi" id="OH" role="2Oq$k0">
              <node concept="2OqwBi" id="OJ" role="2Oq$k0">
                <node concept="2OqwBi" id="OL" role="2Oq$k0">
                  <node concept="2OqwBi" id="ON" role="2Oq$k0">
                    <node concept="2OqwBi" id="OP" role="2Oq$k0">
                      <node concept="2OqwBi" id="OR" role="2Oq$k0">
                        <node concept="37vLTw" id="OT" role="2Oq$k0">
                          <ref role="3cqZAo" node="O8" resolve="b" />
                        </node>
                        <node concept="liA8E" id="OU" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="OV" role="37wK5m">
                            <property role="Xl_RC" value="conditions" />
                          </node>
                          <node concept="1adDum" id="OW" role="37wK5m">
                            <property role="1adDun" value="0x5719c93ddd807d18L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="OS" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="OX" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="OY" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="OZ" role="37wK5m">
                          <property role="1adDun" value="0x5719c93ddd807d10L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="OQ" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="P0" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="OO" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="P1" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="OM" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="P2" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="OK" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="P3" role="37wK5m">
                  <property role="Xl_RC" value="6276268823263870232" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="OI" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="O7" role="3cqZAp">
          <node concept="2OqwBi" id="P4" role="3cqZAk">
            <node concept="37vLTw" id="P5" role="2Oq$k0">
              <ref role="3cqZAo" node="O8" resolve="b" />
            </node>
            <node concept="liA8E" id="P6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="NZ" role="1B3o_S" />
      <node concept="3uibUv" id="O0" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="ws" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForSpace" />
      <node concept="3clFbS" id="P7" role="3clF47">
        <node concept="3cpWs8" id="Pa" role="3cqZAp">
          <node concept="3cpWsn" id="Pi" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="Pj" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="Pk" role="33vP2m">
              <node concept="1pGfFk" id="Pl" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="Pm" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="Pn" role="37wK5m">
                  <property role="Xl_RC" value="Space" />
                </node>
                <node concept="1adDum" id="Po" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="Pp" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="Pq" role="37wK5m">
                  <property role="1adDun" value="0x3831396a57cb195fL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pb" role="3cqZAp">
          <node concept="2OqwBi" id="Pr" role="3clFbG">
            <node concept="37vLTw" id="Ps" role="2Oq$k0">
              <ref role="3cqZAo" node="Pi" resolve="b" />
            </node>
            <node concept="liA8E" id="Pt" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="Pu" role="37wK5m" />
              <node concept="3clFbT" id="Pv" role="37wK5m" />
              <node concept="3clFbT" id="Pw" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pc" role="3cqZAp">
          <node concept="2OqwBi" id="Px" role="3clFbG">
            <node concept="37vLTw" id="Py" role="2Oq$k0">
              <ref role="3cqZAo" node="Pi" resolve="b" />
            </node>
            <node concept="liA8E" id="Pz" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.parent(long,long,long)" resolve="parent" />
              <node concept="1adDum" id="P$" role="37wK5m">
                <property role="1adDun" value="0xceab519525ea4f22L" />
              </node>
              <node concept="1adDum" id="P_" role="37wK5m">
                <property role="1adDun" value="0x9b92103b95ca8c0cL" />
              </node>
              <node concept="1adDum" id="PA" role="37wK5m">
                <property role="1adDun" value="0x110396eaaa4L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pd" role="3cqZAp">
          <node concept="2OqwBi" id="PB" role="3clFbG">
            <node concept="37vLTw" id="PC" role="2Oq$k0">
              <ref role="3cqZAo" node="Pi" resolve="b" />
            </node>
            <node concept="liA8E" id="PD" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="PE" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/4049080668885031263" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pe" role="3cqZAp">
          <node concept="2OqwBi" id="PF" role="3clFbG">
            <node concept="37vLTw" id="PG" role="2Oq$k0">
              <ref role="3cqZAo" node="Pi" resolve="b" />
            </node>
            <node concept="liA8E" id="PH" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="PI" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pf" role="3cqZAp">
          <node concept="2OqwBi" id="PJ" role="3clFbG">
            <node concept="2OqwBi" id="PK" role="2Oq$k0">
              <node concept="2OqwBi" id="PM" role="2Oq$k0">
                <node concept="2OqwBi" id="PO" role="2Oq$k0">
                  <node concept="2OqwBi" id="PQ" role="2Oq$k0">
                    <node concept="2OqwBi" id="PS" role="2Oq$k0">
                      <node concept="2OqwBi" id="PU" role="2Oq$k0">
                        <node concept="37vLTw" id="PW" role="2Oq$k0">
                          <ref role="3cqZAo" node="Pi" resolve="b" />
                        </node>
                        <node concept="liA8E" id="PX" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="PY" role="37wK5m">
                            <property role="Xl_RC" value="cells" />
                          </node>
                          <node concept="1adDum" id="PZ" role="37wK5m">
                            <property role="1adDun" value="0x3831396a57cb1964L" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="PV" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Q0" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="Q1" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="Q2" role="37wK5m">
                          <property role="1adDun" value="0x3831396a57ca6a5dL" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="PT" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Q3" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="PR" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Q4" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="PP" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Q5" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="PN" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Q6" role="37wK5m">
                  <property role="Xl_RC" value="4049080668885031268" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="PL" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Pg" role="3cqZAp">
          <node concept="2OqwBi" id="Q7" role="3clFbG">
            <node concept="2OqwBi" id="Q8" role="2Oq$k0">
              <node concept="2OqwBi" id="Qa" role="2Oq$k0">
                <node concept="2OqwBi" id="Qc" role="2Oq$k0">
                  <node concept="2OqwBi" id="Qe" role="2Oq$k0">
                    <node concept="2OqwBi" id="Qg" role="2Oq$k0">
                      <node concept="2OqwBi" id="Qi" role="2Oq$k0">
                        <node concept="37vLTw" id="Qk" role="2Oq$k0">
                          <ref role="3cqZAo" node="Pi" resolve="b" />
                        </node>
                        <node concept="liA8E" id="Ql" role="2OqNvi">
                          <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.aggregate(java.lang.String,long)" resolve="aggregate" />
                          <node concept="Xl_RD" id="Qm" role="37wK5m">
                            <property role="Xl_RC" value="modelMechanisms" />
                          </node>
                          <node concept="1adDum" id="Qn" role="37wK5m">
                            <property role="1adDun" value="0x46c97db93e8314adL" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="Qj" role="2OqNvi">
                        <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.target(long,long,long)" resolve="target" />
                        <node concept="1adDum" id="Qo" role="37wK5m">
                          <property role="1adDun" value="0x9edcd71856d444c5L" />
                        </node>
                        <node concept="1adDum" id="Qp" role="37wK5m">
                          <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                        </node>
                        <node concept="1adDum" id="Qq" role="37wK5m">
                          <property role="1adDun" value="0x46c97db93e8314a0L" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="Qh" role="2OqNvi">
                      <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.optional(boolean)" resolve="optional" />
                      <node concept="3clFbT" id="Qr" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="Qf" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.ordered(boolean)" resolve="ordered" />
                    <node concept="3clFbT" id="Qs" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Qd" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.multiple(boolean)" resolve="multiple" />
                  <node concept="3clFbT" id="Qt" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Qb" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Qu" role="37wK5m">
                  <property role="Xl_RC" value="5100746287544997037" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Q9" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$AggregationLinkBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Ph" role="3cqZAp">
          <node concept="2OqwBi" id="Qv" role="3cqZAk">
            <node concept="37vLTw" id="Qw" role="2Oq$k0">
              <ref role="3cqZAo" node="Pi" resolve="b" />
            </node>
            <node concept="liA8E" id="Qx" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="P8" role="1B3o_S" />
      <node concept="3uibUv" id="P9" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wt" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStage" />
      <node concept="3clFbS" id="Qy" role="3clF47">
        <node concept="3cpWs8" id="Q_" role="3cqZAp">
          <node concept="3cpWsn" id="QG" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="QH" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="QI" role="33vP2m">
              <node concept="1pGfFk" id="QJ" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="QK" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="QL" role="37wK5m">
                  <property role="Xl_RC" value="Stage" />
                </node>
                <node concept="1adDum" id="QM" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="QN" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="QO" role="37wK5m">
                  <property role="1adDun" value="0x46aac9d4f447b0bdL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QA" role="3cqZAp">
          <node concept="2OqwBi" id="QP" role="3clFbG">
            <node concept="37vLTw" id="QQ" role="2Oq$k0">
              <ref role="3cqZAo" node="QG" resolve="b" />
            </node>
            <node concept="liA8E" id="QR" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="QS" role="37wK5m" />
              <node concept="3clFbT" id="QT" role="37wK5m" />
              <node concept="3clFbT" id="QU" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QB" role="3cqZAp">
          <node concept="2OqwBi" id="QV" role="3clFbG">
            <node concept="37vLTw" id="QW" role="2Oq$k0">
              <ref role="3cqZAo" node="QG" resolve="b" />
            </node>
            <node concept="liA8E" id="QX" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="QY" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/5092104245164355773" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QC" role="3cqZAp">
          <node concept="2OqwBi" id="QZ" role="3clFbG">
            <node concept="37vLTw" id="R0" role="2Oq$k0">
              <ref role="3cqZAo" node="QG" resolve="b" />
            </node>
            <node concept="liA8E" id="R1" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="R2" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QD" role="3cqZAp">
          <node concept="2OqwBi" id="R3" role="3clFbG">
            <node concept="2OqwBi" id="R4" role="2Oq$k0">
              <node concept="2OqwBi" id="R6" role="2Oq$k0">
                <node concept="2OqwBi" id="R8" role="2Oq$k0">
                  <node concept="37vLTw" id="Ra" role="2Oq$k0">
                    <ref role="3cqZAo" node="QG" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Rb" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Rc" role="37wK5m">
                      <property role="Xl_RC" value="name" />
                    </node>
                    <node concept="1adDum" id="Rd" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0beL" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="R9" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="Re" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.STRING" resolve="STRING" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="R7" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Rf" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164355774" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="R5" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="QE" role="3cqZAp">
          <node concept="2OqwBi" id="Rg" role="3clFbG">
            <node concept="2OqwBi" id="Rh" role="2Oq$k0">
              <node concept="2OqwBi" id="Rj" role="2Oq$k0">
                <node concept="2OqwBi" id="Rl" role="2Oq$k0">
                  <node concept="37vLTw" id="Rn" role="2Oq$k0">
                    <ref role="3cqZAo" node="QG" resolve="b" />
                  </node>
                  <node concept="liA8E" id="Ro" role="2OqNvi">
                    <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.property(java.lang.String,long)" resolve="property" />
                    <node concept="Xl_RD" id="Rp" role="37wK5m">
                      <property role="Xl_RC" value="duration" />
                    </node>
                    <node concept="1adDum" id="Rq" role="37wK5m">
                      <property role="1adDun" value="0x46aac9d4f447b0c0L" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Rm" role="2OqNvi">
                  <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.type(jetbrains.mps.smodel.adapter.ids.STypeId)" resolve="type" />
                  <node concept="Rm8GO" id="Rr" role="37wK5m">
                    <ref role="Rm8GQ" to="e8bb:~PrimitiveTypeId.INTEGER" resolve="INTEGER" />
                    <ref role="1Px2BO" to="e8bb:~PrimitiveTypeId" resolve="PrimitiveTypeId" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="Rk" role="2OqNvi">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.origin(java.lang.String)" resolve="origin" />
                <node concept="Xl_RD" id="Rs" role="37wK5m">
                  <property role="Xl_RC" value="5092104245164355776" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="Ri" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2$PropertyBuilder.done()" resolve="done" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="QF" role="3cqZAp">
          <node concept="2OqwBi" id="Rt" role="3cqZAk">
            <node concept="37vLTw" id="Ru" role="2Oq$k0">
              <ref role="3cqZAo" node="QG" resolve="b" />
            </node>
            <node concept="liA8E" id="Rv" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Qz" role="1B3o_S" />
      <node concept="3uibUv" id="Q$" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
    <node concept="2YIFZL" id="wu" role="jymVt">
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="createDescriptorForStemCell" />
      <node concept="3clFbS" id="Rw" role="3clF47">
        <node concept="3cpWs8" id="Rz" role="3cqZAp">
          <node concept="3cpWsn" id="RE" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="RF" role="1tU5fm">
              <ref role="3uigEE" to="bzg8:~ConceptDescriptorBuilder2" resolve="ConceptDescriptorBuilder2" />
            </node>
            <node concept="2ShNRf" id="RG" role="33vP2m">
              <node concept="1pGfFk" id="RH" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.&lt;init&gt;(java.lang.String,java.lang.String,long,long,long)" resolve="ConceptDescriptorBuilder2" />
                <node concept="Xl_RD" id="RI" role="37wK5m">
                  <property role="Xl_RC" value="BCNNM_DSL" />
                </node>
                <node concept="Xl_RD" id="RJ" role="37wK5m">
                  <property role="Xl_RC" value="StemCell" />
                </node>
                <node concept="1adDum" id="RK" role="37wK5m">
                  <property role="1adDun" value="0x9edcd71856d444c5L" />
                </node>
                <node concept="1adDum" id="RL" role="37wK5m">
                  <property role="1adDun" value="0xae868ea31c5d7fbbL" />
                </node>
                <node concept="1adDum" id="RM" role="37wK5m">
                  <property role="1adDun" value="0x3831396a57cb18ebL" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R$" role="3cqZAp">
          <node concept="2OqwBi" id="RN" role="3clFbG">
            <node concept="37vLTw" id="RO" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="RP" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.class_(boolean,boolean,boolean)" resolve="class_" />
              <node concept="3clFbT" id="RQ" role="37wK5m" />
              <node concept="3clFbT" id="RR" role="37wK5m" />
              <node concept="3clFbT" id="RS" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="R_" role="3cqZAp">
          <node concept="2OqwBi" id="RT" role="3clFbG">
            <node concept="37vLTw" id="RU" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="RV" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.super_(java.lang.String,long,long,long)" resolve="super_" />
              <node concept="Xl_RD" id="RW" role="37wK5m">
                <property role="Xl_RC" value="BCNNM_DSL.structure.Cell" />
              </node>
              <node concept="1adDum" id="RX" role="37wK5m">
                <property role="1adDun" value="0x9edcd71856d444c5L" />
              </node>
              <node concept="1adDum" id="RY" role="37wK5m">
                <property role="1adDun" value="0xae868ea31c5d7fbbL" />
              </node>
              <node concept="1adDum" id="RZ" role="37wK5m">
                <property role="1adDun" value="0x3831396a57ca6a5dL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RA" role="3cqZAp">
          <node concept="2OqwBi" id="S0" role="3clFbG">
            <node concept="37vLTw" id="S1" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="S2" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.origin(java.lang.String)" resolve="origin" />
              <node concept="Xl_RD" id="S3" role="37wK5m">
                <property role="Xl_RC" value="r:05aa5abd-b9a0-4735-80a0-d81e014acc83(BCNNM_DSL.structure)/4049080668885031147" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RB" role="3cqZAp">
          <node concept="2OqwBi" id="S4" role="3clFbG">
            <node concept="37vLTw" id="S5" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="S6" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.version(int)" resolve="version" />
              <node concept="3cmrfG" id="S7" role="37wK5m">
                <property role="3cmrfH" value="2" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RC" role="3cqZAp">
          <node concept="2OqwBi" id="S8" role="3clFbG">
            <node concept="37vLTw" id="S9" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="Sa" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.alias(java.lang.String)" resolve="alias" />
              <node concept="Xl_RD" id="Sb" role="37wK5m">
                <property role="Xl_RC" value="stemcell" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="RD" role="3cqZAp">
          <node concept="2OqwBi" id="Sc" role="3cqZAk">
            <node concept="37vLTw" id="Sd" role="2Oq$k0">
              <ref role="3cqZAo" node="RE" resolve="b" />
            </node>
            <node concept="liA8E" id="Se" role="2OqNvi">
              <ref role="37wK5l" to="bzg8:~ConceptDescriptorBuilder2.create()" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="Rx" role="1B3o_S" />
      <node concept="3uibUv" id="Ry" role="3clF45">
        <ref role="3uigEE" to="ze1i:~ConceptDescriptor" resolve="ConceptDescriptor" />
      </node>
    </node>
  </node>
</model>

