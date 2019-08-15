<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6bcb3b44-32e3-46af-b334-30fc5dbf021b(BCNNM_DSL.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="a4829704-6b1b-4b3f-8122-a4a2e6ac90ff" name="org.mar9000.mps.ecmascript">
      <concept id="8569071899956284315" name="org.mar9000.mps.ecmascript.structure.JSNumericLiteral" flags="ng" index="2dhBVA">
        <property id="8569071899956284476" name="value" index="2dhB_1" />
      </concept>
      <concept id="8569071899956272644" name="org.mar9000.mps.ecmascript.structure.JSBinaryExpression" flags="ng" index="2dhUHT">
        <property id="8569071899956272903" name="operator" index="2dhUDU" />
        <child id="8569071899956273023" name="left" index="2dhUC2" />
        <child id="8569071899956273025" name="right" index="2dhUFW" />
      </concept>
      <concept id="4772229902327261793" name="org.mar9000.mps.ecmascript.structure.JSParenthesizedExpression" flags="ng" index="2gzfuI">
        <child id="4772229902327261845" name="expression" index="2gzftq" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="9edcd718-56d4-44c5-ae86-8ea31c5d7fbb" name="BCNNM_DSL">
      <concept id="6276268823263920725" name="BCNNM_DSL.structure.ConditionWithFormula" flags="ng" index="2aA8HC">
        <child id="5100746287545008214" name="formula" index="1SizRJ" />
      </concept>
      <concept id="5092104245164419654" name="BCNNM_DSL.structure.Molecule" flags="ng" index="2MSAei">
        <reference id="6990078632104573880" name="defintion" index="1VDoj3" />
        <child id="5100746287545043493" name="concentration" index="1SiFus" />
      </concept>
      <concept id="5092104245164390915" name="BCNNM_DSL.structure.NamedConstant" flags="ng" index="2MSJfn">
        <child id="5100746287544880156" name="value" index="1Si36_" />
      </concept>
      <concept id="5092104245164355779" name="BCNNM_DSL.structure.MoleculeDefinition" flags="ng" index="2MVn$n">
        <property id="5092104245164355780" name="type" index="2MVn$g" />
        <property id="5092104245164355782" name="radius" index="2MVn$i" />
      </concept>
      <concept id="4049080668885031263" name="BCNNM_DSL.structure.Space" flags="ng" index="1JYy0P">
        <child id="4049080668885031268" name="cells" index="1JYy0e" />
        <child id="5100746287544997037" name="modelMechanisms" index="1SiA$k" />
      </concept>
      <concept id="4049080668885031147" name="BCNNM_DSL.structure.StemCell" flags="ng" index="1JYy61">
        <property id="5376677673907679485" name="divisionTime" index="33_VGA" />
      </concept>
      <concept id="4049080668884986461" name="BCNNM_DSL.structure.Cell" flags="ng" index="1JYPcR">
        <child id="5092104245164426146" name="moleculeTypes" index="2MSwDQ" />
        <child id="5092104245164403629" name="constants" index="2MSE9T" />
        <child id="5092104245164406838" name="molecules" index="2MSF7y" />
        <child id="5100746287545039786" name="conditions" index="1SiGoj" />
        <child id="5100746287545112068" name="mechanisms" index="1SjqIX" />
      </concept>
      <concept id="5100746287544997024" name="BCNNM_DSL.structure.ModelMechanism" flags="ng" index="1SiA$p" />
      <concept id="5100746287545162853" name="BCNNM_DSL.structure.NamedConstantReference" flags="ng" index="1Sje7s">
        <reference id="5100746287545162854" name="ref" index="1Sje7v" />
      </concept>
      <concept id="5100746287545069966" name="BCNNM_DSL.structure.MoleculeReference" flags="ng" index="1SjkKR">
        <reference id="5100746287545069970" name="molecule" index="1SjkKF" />
      </concept>
      <concept id="5100746287545104135" name="BCNNM_DSL.structure.DynamicMechanism" flags="ng" index="1SjsEY">
        <property id="5100746287545116146" name="type" index="1Sjpxb" />
        <property id="5100746287545104140" name="duration" index="1SjsEP" />
        <reference id="5100746287545116261" name="baseMechanism" index="1SjpJs" />
        <reference id="5100746287545104138" name="parameters" index="1SjsEN" />
        <child id="5100746287545104142" name="formula" index="1SjsER" />
      </concept>
    </language>
  </registry>
  <node concept="1JYy0P" id="4qEMtjOi7wL">
    <property role="TrG5h" value="SofiaModel" />
    <node concept="1SiA$p" id="4r9vr$YwMgn" role="1SiA$k">
      <property role="TrG5h" value="Division" />
    </node>
    <node concept="1SiA$p" id="4r9vr$YxpLo" role="1SiA$k">
      <property role="TrG5h" value="Dynamic" />
    </node>
    <node concept="1JYy61" id="4qEMtjOi7wO" role="1JYy0e">
      <property role="33_VGA" value="10" />
      <property role="TrG5h" value="Zygote" />
      <node concept="1SjsEY" id="4r9vr$YxpLk" role="1SjqIX">
        <property role="1Sjpxb" value="cyclic" />
        <property role="TrG5h" value="CyclicDynamic" />
        <property role="1SjsEP" value="1" />
        <ref role="1SjpJs" node="4r9vr$YxpLo" resolve="Dynamic" />
        <ref role="1SjsEN" node="4r9vr$Yx34N" resolve="C" />
        <node concept="2dhUHT" id="4r9vr$YxAiQ" role="1SjsER">
          <property role="2dhUDU" value="-" />
          <node concept="1Sje7s" id="4r9vr$YxAiL" role="2dhUC2">
            <ref role="1Sje7v" node="641JRGqDgwU" resolve="vi" />
          </node>
          <node concept="2dhUHT" id="4r9vr$YxAiX" role="2dhUFW">
            <property role="2dhUDU" value="*" />
            <node concept="1Sje7s" id="4r9vr$YxAiU" role="2dhUC2">
              <ref role="1Sje7v" node="4r9vr$YwJnX" resolve="vd" />
            </node>
            <node concept="2dhUHT" id="4r9vr$YxAj5" role="2dhUFW">
              <property role="2dhUDU" value="*" />
              <node concept="1SjkKR" id="4r9vr$YxAj1" role="2dhUC2">
                <ref role="1SjkKF" node="4r9vr$Yx356" resolve="X_a" />
              </node>
              <node concept="2dhUHT" id="4r9vr$YxAjd" role="2dhUFW">
                <property role="2dhUDU" value="/" />
                <node concept="1SjkKR" id="4r9vr$YxAj9" role="2dhUC2">
                  <ref role="1SjkKF" node="4r9vr$Yx34N" resolve="C" />
                </node>
                <node concept="2dhUHT" id="4r9vr$YxAjt" role="2dhUFW">
                  <property role="2dhUDU" value="-" />
                  <node concept="2gzfuI" id="4r9vr$YxAjS" role="2dhUC2">
                    <node concept="2dhUHT" id="4r9vr$YxAkg" role="2gzftq">
                      <property role="2dhUDU" value="+" />
                      <node concept="1Sje7s" id="4r9vr$YxAjY" role="2dhUC2">
                        <ref role="1Sje7v" node="4r9vr$YwJop" resolve="Kd" />
                      </node>
                      <node concept="1SjkKR" id="4r9vr$YxAkk" role="2dhUFW">
                        <ref role="1SjkKF" node="4r9vr$Yx34N" resolve="C" />
                      </node>
                    </node>
                  </node>
                  <node concept="2dhUHT" id="4r9vr$YxAkF" role="2dhUFW">
                    <property role="2dhUDU" value="*" />
                    <node concept="1Sje7s" id="4r9vr$YxAkC" role="2dhUC2">
                      <ref role="1Sje7v" node="4r9vr$YwJop" resolve="Kd" />
                    </node>
                    <node concept="1SjkKR" id="4r9vr$YxAkJ" role="2dhUFW">
                      <ref role="1SjkKF" node="4r9vr$Yx34N" resolve="C" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SjsEY" id="4r9vr$YxAkL" role="1SjqIX">
        <property role="1Sjpxb" value="cyclic" />
        <property role="TrG5h" value="CdK2Dynamic" />
        <property role="1SjsEP" value="1" />
        <ref role="1SjpJs" node="4r9vr$YxpLo" resolve="Dynamic" />
        <ref role="1SjsEN" node="4r9vr$Yx34W" resolve="M_a" />
        <node concept="2dhUHT" id="4r9vr$YxAla" role="1SjsER">
          <property role="2dhUDU" value="/" />
          <node concept="1SjkKR" id="4r9vr$YxAl6" role="2dhUC2">
            <ref role="1SjkKF" node="4r9vr$Yx34N" resolve="C" />
          </node>
          <node concept="2dhUHT" id="4r9vr$YxAls" role="2dhUFW">
            <property role="2dhUDU" value="*" />
            <node concept="2gzfuI" id="4r9vr$YxAle" role="2dhUC2">
              <node concept="2dhUHT" id="4r9vr$YxAln" role="2gzftq">
                <property role="2dhUDU" value="+" />
                <node concept="1Sje7s" id="4r9vr$YxAli" role="2dhUC2">
                  <ref role="1Sje7v" node="4r9vr$YwJxW" resolve="Kc" />
                </node>
                <node concept="1SjkKR" id="4r9vr$YxAl$" role="2dhUFW">
                  <ref role="1SjkKF" node="4r9vr$Yx34N" resolve="C" />
                </node>
              </node>
            </node>
            <node concept="2dhUHT" id="4r9vr$YxAlD" role="2dhUFW">
              <property role="2dhUDU" value="*" />
              <node concept="1Sje7s" id="4r9vr$YxAlA" role="2dhUC2">
                <ref role="1Sje7v" node="4r9vr$YwJpq" resolve="VM1" />
              </node>
              <node concept="2dhUHT" id="4r9vr$YxAlV" role="2dhUFW">
                <property role="2dhUDU" value="/" />
                <node concept="2gzfuI" id="4r9vr$YxAlH" role="2dhUC2">
                  <node concept="2dhUHT" id="4r9vr$YxAlP" role="2gzftq">
                    <property role="2dhUDU" value="-" />
                    <node concept="2dhBVA" id="4r9vr$YxAlL" role="2dhUC2">
                      <property role="2dhB_1" value="1" />
                    </node>
                    <node concept="1SjkKR" id="4r9vr$YxAm3" role="2dhUFW">
                      <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
                    </node>
                  </node>
                </node>
                <node concept="2dhUHT" id="4r9vr$YxAmw" role="2dhUFW">
                  <property role="2dhUDU" value="-" />
                  <node concept="2gzfuI" id="4r9vr$YxAm5" role="2dhUC2">
                    <node concept="2dhUHT" id="4r9vr$YxAme" role="2gzftq">
                      <property role="2dhUDU" value="+" />
                      <node concept="1Sje7s" id="4r9vr$YxAm9" role="2dhUC2">
                        <ref role="1Sje7v" node="4r9vr$YwJts" resolve="K1" />
                      </node>
                      <node concept="2dhUHT" id="4r9vr$YxAmm" role="2dhUFW">
                        <property role="2dhUDU" value="-" />
                        <node concept="2dhBVA" id="4r9vr$YxAmi" role="2dhUC2">
                          <property role="2dhB_1" value="1" />
                        </node>
                        <node concept="1SjkKR" id="4r9vr$YxAmq" role="2dhUFW">
                          <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2dhUHT" id="4r9vr$YxAmL" role="2dhUFW">
                    <property role="2dhUDU" value="*" />
                    <node concept="1Sje7s" id="4r9vr$YxAmI" role="2dhUC2">
                      <ref role="1Sje7v" node="4r9vr$YwJrk" resolve="V2" />
                    </node>
                    <node concept="2dhUHT" id="4r9vr$YxAmS" role="2dhUFW">
                      <property role="2dhUDU" value="/" />
                      <node concept="1SjkKR" id="4r9vr$YxAmP" role="2dhUC2">
                        <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
                      </node>
                      <node concept="2gzfuI" id="4r9vr$YxAmW" role="2dhUFW">
                        <node concept="2dhUHT" id="4r9vr$YxAn5" role="2gzftq">
                          <property role="2dhUDU" value="+" />
                          <node concept="1Sje7s" id="4r9vr$YxAn0" role="2dhUC2">
                            <ref role="1Sje7v" node="4r9vr$YwJuu" resolve="K2" />
                          </node>
                          <node concept="1SjkKR" id="4r9vr$YxAn9" role="2dhUFW">
                            <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
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
      <node concept="1SjsEY" id="4r9vr$YxAnb" role="1SjqIX">
        <property role="1Sjpxb" value="cyclic" />
        <property role="TrG5h" value="ProteaseDynamic" />
        <property role="1SjsEP" value="1" />
        <ref role="1SjpJs" node="4r9vr$YxpLo" resolve="Dynamic" />
        <ref role="1SjsEN" node="4r9vr$Yx356" resolve="X_a" />
        <node concept="2dhUHT" id="4r9vr$YxAo1" role="1SjsER">
          <property role="2dhUDU" value="*" />
          <node concept="1SjkKR" id="4r9vr$YxAnY" role="2dhUC2">
            <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
          </node>
          <node concept="2dhUHT" id="4r9vr$YxAo9" role="2dhUFW">
            <property role="2dhUDU" value="*" />
            <node concept="1Sje7s" id="4r9vr$YxAo5" role="2dhUC2">
              <ref role="1Sje7v" node="4r9vr$YwJqs" resolve="VM3" />
            </node>
            <node concept="2dhUHT" id="4r9vr$YxAor" role="2dhUFW">
              <property role="2dhUDU" value="/" />
              <node concept="2gzfuI" id="4r9vr$YxAod" role="2dhUC2">
                <node concept="2dhUHT" id="4r9vr$YxAol" role="2gzftq">
                  <property role="2dhUDU" value="-" />
                  <node concept="2dhBVA" id="4r9vr$YxAoh" role="2dhUC2">
                    <property role="2dhB_1" value="1" />
                  </node>
                  <node concept="1SjkKR" id="4r9vr$YxAoz" role="2dhUFW">
                    <ref role="1SjkKF" node="4r9vr$Yx356" resolve="X_a" />
                  </node>
                </node>
              </node>
              <node concept="2dhUHT" id="4r9vr$YxAp5" role="2dhUFW">
                <property role="2dhUDU" value="-" />
                <node concept="2gzfuI" id="4r9vr$YxAo_" role="2dhUC2">
                  <node concept="2dhUHT" id="4r9vr$YxAoR" role="2gzftq">
                    <property role="2dhUDU" value="+" />
                    <node concept="1Sje7s" id="4r9vr$YxAoD" role="2dhUC2">
                      <ref role="1Sje7v" node="4r9vr$YwJv$" resolve="K3" />
                    </node>
                    <node concept="2dhUHT" id="4r9vr$YxAoZ" role="2dhUFW">
                      <property role="2dhUDU" value="-" />
                      <node concept="2dhBVA" id="4r9vr$YxAoV" role="2dhUC2">
                        <property role="2dhB_1" value="1" />
                      </node>
                      <node concept="1SjkKR" id="4r9vr$YxAph" role="2dhUFW">
                        <ref role="1SjkKF" node="4r9vr$Yx356" resolve="X_a" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2dhUHT" id="4r9vr$YxApl" role="2dhUFW">
                  <property role="2dhUDU" value="*" />
                  <node concept="1Sje7s" id="4r9vr$YxApj" role="2dhUC2">
                    <ref role="1Sje7v" node="4r9vr$YwJsk" resolve="V4" />
                  </node>
                  <node concept="2dhUHT" id="4r9vr$YxAps" role="2dhUFW">
                    <property role="2dhUDU" value="/" />
                    <node concept="1SjkKR" id="4r9vr$YxApp" role="2dhUC2">
                      <ref role="1SjkKF" node="4r9vr$Yx356" resolve="X_a" />
                    </node>
                    <node concept="2gzfuI" id="4r9vr$YxApw" role="2dhUFW">
                      <node concept="2dhUHT" id="4r9vr$YxApD" role="2gzftq">
                        <property role="2dhUDU" value="+" />
                        <node concept="1Sje7s" id="4r9vr$YxAp$" role="2dhUC2">
                          <ref role="1Sje7v" node="4r9vr$YwJwI" resolve="K4" />
                        </node>
                        <node concept="1SjkKR" id="4r9vr$YxApH" role="2dhUFW">
                          <ref role="1SjkKF" node="4r9vr$Yx356" resolve="X_a" />
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
      <node concept="2aA8HC" id="4r9vr$YxemV" role="1SiGoj">
        <property role="TrG5h" value="CleavageCondition" />
        <node concept="2dhUHT" id="4r9vr$Yxen4" role="1SizRJ">
          <property role="2dhUDU" value="==" />
          <node concept="1SjkKR" id="4r9vr$YxemZ" role="2dhUC2">
            <ref role="1SjkKF" node="4r9vr$Yx34W" resolve="M_a" />
          </node>
          <node concept="2dhBVA" id="4r9vr$Yxen8" role="2dhUFW">
            <property role="2dhB_1" value="0.5" />
          </node>
        </node>
      </node>
      <node concept="2MSAei" id="4r9vr$Yx34N" role="2MSF7y">
        <property role="TrG5h" value="C" />
        <ref role="1VDoj3" node="641JRGqCR9Q" resolve="C" />
        <node concept="2dhBVA" id="4r9vr$Yx34T" role="1SiFus">
          <property role="2dhB_1" value="0.01" />
        </node>
      </node>
      <node concept="2MSAei" id="4r9vr$Yx34W" role="2MSF7y">
        <property role="TrG5h" value="M_a" />
        <ref role="1VDoj3" node="641JRGqD7Zj" resolve="M_a" />
        <node concept="2dhBVA" id="4r9vr$Yx35W" role="1SiFus">
          <property role="2dhB_1" value="0.01" />
        </node>
      </node>
      <node concept="2MSAei" id="4r9vr$Yx356" role="2MSF7y">
        <property role="TrG5h" value="X_a" />
        <ref role="1VDoj3" node="641JRGqD7ZU" resolve="X_a" />
        <node concept="2dhBVA" id="4r9vr$Yx362" role="1SiFus">
          <property role="2dhB_1" value="4.0" />
        </node>
      </node>
      <node concept="2MSAei" id="4r9vr$Yx35k" role="2MSF7y">
        <property role="TrG5h" value="MT" />
        <ref role="1VDoj3" node="641JRGqD7Zj" resolve="M_a" />
        <node concept="2dhBVA" id="4r9vr$Yx35Z" role="1SiFus">
          <property role="2dhB_1" value="4.0" />
        </node>
      </node>
      <node concept="2MSAei" id="4r9vr$Yx35A" role="2MSF7y">
        <property role="TrG5h" value="XT" />
        <ref role="1VDoj3" node="641JRGqD7ZU" resolve="X_a" />
        <node concept="2dhBVA" id="4r9vr$Yx365" role="1SiFus">
          <property role="2dhB_1" value="4.0" />
        </node>
      </node>
      <node concept="2MSJfn" id="641JRGqDgwU" role="2MSE9T">
        <property role="TrG5h" value="vi" />
        <node concept="2dhUHT" id="4r9vr$YwJnN" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJnJ" role="2dhUC2">
            <property role="2dhB_1" value="4.17" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJnU" role="2dhUFW">
            <property role="2dhB_1" value="10e-13" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJnX" role="2MSE9T">
        <property role="TrG5h" value="vd" />
        <node concept="2dhUHT" id="4r9vr$YwJof" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJob" role="2dhUC2">
            <property role="2dhB_1" value="4.17" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJom" role="2dhUFW">
            <property role="2dhB_1" value="10e-12" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJop" role="2MSE9T">
        <property role="TrG5h" value="Kd" />
        <node concept="2dhBVA" id="4r9vr$YwJoJ" role="1Si36_">
          <property role="2dhB_1" value="0.02" />
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJoM" role="2MSE9T">
        <property role="TrG5h" value="kd" />
        <node concept="2dhUHT" id="4r9vr$YwJpg" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJpc" role="2dhUC2">
            <property role="2dhB_1" value="6" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJpn" role="2dhUFW">
            <property role="2dhB_1" value="10e8" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJpq" role="2MSE9T">
        <property role="TrG5h" value="VM1" />
        <node concept="2dhUHT" id="4r9vr$YwJqi" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJqe" role="2dhUC2">
            <property role="2dhB_1" value="1.8" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJqp" role="2dhUFW">
            <property role="2dhB_1" value="10e11" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJqs" role="2MSE9T">
        <property role="TrG5h" value="VM3" />
        <node concept="2dhUHT" id="4r9vr$YwJra" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJr6" role="2dhUC2">
            <property role="2dhB_1" value="6" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJrh" role="2dhUFW">
            <property role="2dhB_1" value="10e10" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJrk" role="2MSE9T">
        <property role="TrG5h" value="V2" />
        <node concept="2dhUHT" id="4r9vr$YwJsa" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJs6" role="2dhUC2">
            <property role="2dhB_1" value="9" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJsh" role="2dhUFW">
            <property role="2dhB_1" value="10e10" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJsk" role="2MSE9T">
        <property role="TrG5h" value="V4" />
        <node concept="2dhUHT" id="4r9vr$YwJti" role="1Si36_">
          <property role="2dhUDU" value="*" />
          <node concept="2dhBVA" id="4r9vr$YwJte" role="2dhUC2">
            <property role="2dhB_1" value="3" />
          </node>
          <node concept="2dhBVA" id="4r9vr$YwJtp" role="2dhUFW">
            <property role="2dhB_1" value="10e10" />
          </node>
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJts" role="2MSE9T">
        <property role="TrG5h" value="K1" />
        <node concept="2dhBVA" id="4r9vr$YwJze" role="1Si36_">
          <property role="2dhB_1" value="0.1" />
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJuu" role="2MSE9T">
        <property role="TrG5h" value="K2" />
        <node concept="2dhBVA" id="4r9vr$YwJzh" role="1Si36_">
          <property role="2dhB_1" value="0.1" />
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJv$" role="2MSE9T">
        <property role="TrG5h" value="K3" />
        <node concept="2dhBVA" id="4r9vr$YwJzk" role="1Si36_">
          <property role="2dhB_1" value="0.1" />
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJwI" role="2MSE9T">
        <property role="TrG5h" value="K4" />
        <node concept="2dhBVA" id="4r9vr$YwJzn" role="1Si36_">
          <property role="2dhB_1" value="0.1" />
        </node>
      </node>
      <node concept="2MSJfn" id="4r9vr$YwJxW" role="2MSE9T">
        <property role="TrG5h" value="Kc" />
        <node concept="2dhBVA" id="4r9vr$YwJzA" role="1Si36_">
          <property role="2dhB_1" value="0.5" />
        </node>
      </node>
      <node concept="2MVn$n" id="641JRGqCR9Q" role="2MSwDQ">
        <property role="TrG5h" value="C" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7YY" role="2MSwDQ">
        <property role="TrG5h" value="E1" />
        <property role="2MVn$g" value="kinase" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7Z3" role="2MSwDQ">
        <property role="TrG5h" value="E2" />
        <property role="2MVn$g" value="kinase" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7Za" role="2MSwDQ">
        <property role="TrG5h" value="M_in" />
        <property role="2MVn$g" value="kinase" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7Zj" role="2MSwDQ">
        <property role="TrG5h" value="M_a" />
        <property role="2MVn$g" value="kinase" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7Zu" role="2MSwDQ">
        <property role="TrG5h" value="E_4" />
        <property role="2MVn$g" value="phosphatase" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7ZF" role="2MSwDQ">
        <property role="TrG5h" value="X_in" />
        <property role="2MVn$g" value="protease" />
        <property role="2MVn$i" value="0" />
      </node>
      <node concept="2MVn$n" id="641JRGqD7ZU" role="2MSwDQ">
        <property role="TrG5h" value="X_a" />
        <property role="2MVn$g" value="protease" />
        <property role="2MVn$i" value="0" />
      </node>
    </node>
  </node>
</model>

