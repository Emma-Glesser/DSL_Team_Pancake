<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3b001b1d-656d-4f7a-83e3-82d4df716957(V.E.A.F.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="4tdy" ref="r:79efd526-4965-4b82-846b-97823ace55e0(V.E.A.F.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1153422305557" name="jetbrains.mps.baseLanguage.structure.LessThanOrEqualsExpression" flags="nn" index="2dkUwp" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
        <child id="1212097481299" name="propertyValidator" index="QCWH9" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1147468365020" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_node" flags="nn" index="EsrRn" />
      <concept id="1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" flags="in" index="QB0g5" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
      <concept id="1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" flags="nn" index="1Wqviy" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1M2fIO" id="3AihLw0nJF2">
    <ref role="1M2myG" to="4tdy:2vhhWxvXGji" resolve="Component" />
    <node concept="EnEH3" id="3AihLw0nJIj" role="1MhHOB">
      <ref role="EomxK" to="4tdy:2vhhWxvXHNh" resolve="pin" />
      <node concept="QB0g5" id="3AihLw0nJNA" role="QCWH9">
        <node concept="3clFbS" id="3AihLw0nJNB" role="2VODD2">
          <node concept="3clFbF" id="3AihLw0rWgK" role="3cqZAp">
            <node concept="2dkUwp" id="3AihLw0saOd" role="3clFbG">
              <node concept="3cmrfG" id="3AihLw0sb4g" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3AihLw0s8tN" role="3uHU7B">
                <node concept="2OqwBi" id="3AihLw0s0mV" role="2Oq$k0">
                  <node concept="2OqwBi" id="3AihLw0rXzE" role="2Oq$k0">
                    <node concept="1PxgMI" id="3AihLw0rXcC" role="2Oq$k0">
                      <node concept="chp4Y" id="3AihLw0rXmE" role="3oSUPX">
                        <ref role="cht4Q" to="4tdy:2vhhWxvXBB8" resolve="VEAF" />
                      </node>
                      <node concept="2OqwBi" id="3AihLw0rWx3" role="1m5AlR">
                        <node concept="EsrRn" id="3AihLw0rWgJ" role="2Oq$k0" />
                        <node concept="1mfA1w" id="3AihLw0rWQD" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3AihLw0rXLY" role="2OqNvi">
                      <ref role="3TtcxE" to="4tdy:2vhhWxvXEh9" resolve="components" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="3AihLw0s4ub" role="2OqNvi">
                    <node concept="1bVj0M" id="3AihLw0s4ud" role="23t8la">
                      <node concept="3clFbS" id="3AihLw0s4ue" role="1bW5cS">
                        <node concept="3clFbF" id="3AihLw0s4HV" role="3cqZAp">
                          <node concept="17R0WA" id="3AihLw0s6FW" role="3clFbG">
                            <node concept="2OqwBi" id="3AihLw0s52Y" role="3uHU7B">
                              <node concept="37vLTw" id="3AihLw0s4HU" role="2Oq$k0">
                                <ref role="3cqZAo" node="3AihLw0s4uf" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="3AihLw0s5t6" role="2OqNvi">
                                <ref role="3TsBF5" to="4tdy:2vhhWxvXHNh" resolve="pin" />
                              </node>
                            </node>
                            <node concept="1Wqviy" id="3AihLw0s7Zd" role="3uHU7w" />
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3AihLw0s4uf" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3AihLw0s4ug" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="3AihLw0s9r9" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="Eqf_E" id="3AihLw0nPXD" role="EtsB7">
        <node concept="3clFbS" id="3AihLw0nPXE" role="2VODD2">
          <node concept="3cpWs6" id="3AihLw0nQfG" role="3cqZAp">
            <node concept="2OqwBi" id="3AihLw0nQvz" role="3cqZAk">
              <node concept="EsrRn" id="3AihLw0nQkK" role="2Oq$k0" />
              <node concept="3TrcHB" id="3AihLw0nQEU" role="2OqNvi">
                <ref role="3TsBF5" to="4tdy:2vhhWxvXHNh" resolve="pin" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="EnEH3" id="3AihLw0sbk7" role="1MhHOB">
      <ref role="EomxK" to="tpck:h0TrG11" resolve="name" />
      <node concept="QB0g5" id="3AihLw0sbBT" role="QCWH9">
        <node concept="3clFbS" id="3AihLw0sbBU" role="2VODD2">
          <node concept="3clFbF" id="3AihLw0sbFU" role="3cqZAp">
            <node concept="2dkUwp" id="3AihLw0so9K" role="3clFbG">
              <node concept="3cmrfG" id="3AihLw0soq9" role="3uHU7w">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="2OqwBi" id="3AihLw0smbH" role="3uHU7B">
                <node concept="2OqwBi" id="3AihLw0sfUv" role="2Oq$k0">
                  <node concept="2OqwBi" id="3AihLw0scTO" role="2Oq$k0">
                    <node concept="1PxgMI" id="3AihLw0sc_P" role="2Oq$k0">
                      <node concept="chp4Y" id="3AihLw0scGw" role="3oSUPX">
                        <ref role="cht4Q" to="4tdy:2vhhWxvXBB8" resolve="VEAF" />
                      </node>
                      <node concept="2OqwBi" id="3AihLw0sbRP" role="1m5AlR">
                        <node concept="EsrRn" id="3AihLw0sbFT" role="2Oq$k0" />
                        <node concept="1mfA1w" id="3AihLw0scgq" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3Tsc0h" id="3AihLw0sdly" role="2OqNvi">
                      <ref role="3TtcxE" to="4tdy:2vhhWxvXEh9" resolve="components" />
                    </node>
                  </node>
                  <node concept="3zZkjj" id="3AihLw0sjbv" role="2OqNvi">
                    <node concept="1bVj0M" id="3AihLw0sjbx" role="23t8la">
                      <node concept="3clFbS" id="3AihLw0sjby" role="1bW5cS">
                        <node concept="3clFbF" id="3AihLw0sjw$" role="3cqZAp">
                          <node concept="17R0WA" id="3AihLw0slwe" role="3clFbG">
                            <node concept="1Wqviy" id="3AihLw0slHx" role="3uHU7w" />
                            <node concept="2OqwBi" id="3AihLw0sjPB" role="3uHU7B">
                              <node concept="37vLTw" id="3AihLw0sjwz" role="2Oq$k0">
                                <ref role="3cqZAo" node="3AihLw0sjbz" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="3AihLw0skiT" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="3AihLw0sjbz" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="3AihLw0sjb$" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="34oBXx" id="3AihLw0smL3" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="3AihLw0rKuJ">
    <ref role="1M2myG" to="4tdy:2vhhWxvXBB8" resolve="VEAF" />
  </node>
</model>

