<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:94e32e8e-52a2-4d5c-8fd5-88d7b02ee3ed(V.E.A.F.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4tdy" ref="r:79efd526-4965-4b82-846b-97823ace55e0(V.E.A.F.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="37xIJnMKKJT">
    <ref role="WuzLi" to="4tdy:2vhhWxvXBB8" resolve="VEAF" />
    <node concept="29tfMY" id="37xIJnMKL3d" role="29tGrW">
      <node concept="3clFbS" id="37xIJnMKL3e" role="2VODD2">
        <node concept="3clFbF" id="37xIJnMKLir" role="3cqZAp">
          <node concept="Xl_RD" id="37xIJnMKLiq" role="3clFbG">
            <property role="Xl_RC" value="main" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="37xIJnMKLnZ" role="33IsuW">
      <node concept="3clFbS" id="37xIJnMKLo0" role="2VODD2">
        <node concept="3clFbF" id="37xIJnMKLpp" role="3cqZAp">
          <node concept="Xl_RD" id="37xIJnMKLTU" role="3clFbG">
            <property role="Xl_RC" value="ino" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="37xIJnMKZYr" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMKZYs" role="2VODD2">
        <node concept="lc7rE" id="37xIJnMN$45" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMN$i5" role="lcghm">
            <property role="lacIc" value="/* Declare composants*/" />
          </node>
          <node concept="l8MVK" id="37xIJnMN$MD" role="lcghm" />
        </node>
        <node concept="lc7rE" id="37xIJnML_A7" role="3cqZAp">
          <node concept="l9S2W" id="37xIJnML_FY" role="lcghm">
            <node concept="2OqwBi" id="37xIJnML_Th" role="lbANJ">
              <node concept="117lpO" id="37xIJnML_K6" role="2Oq$k0" />
              <node concept="3Tsc0h" id="51jKDoWKuhE" role="2OqNvi">
                <ref role="3TtcxE" to="4tdy:2vhhWxvXEh9" resolve="components" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMLGEd" role="3cqZAp">
          <node concept="l8MVK" id="37xIJnMLGLB" role="lcghm" />
        </node>
        <node concept="3clFbH" id="37xIJnMM2Ti" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnMN_fG" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMN_wb" role="lcghm">
            <property role="lacIc" value="/* Declare variables */" />
          </node>
          <node concept="l8MVK" id="37xIJnMNA16" role="lcghm" />
        </node>
        <node concept="lc7rE" id="37xIJnMM387" role="3cqZAp">
          <node concept="l9S2W" id="37xIJnMM3fD" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMM3qZ" role="lbANJ">
              <node concept="117lpO" id="37xIJnMM3iX" role="2Oq$k0" />
              <node concept="3Tsc0h" id="51jKDoWKuo7" role="2OqNvi">
                <ref role="3TtcxE" to="4tdy:5FWo5E_M1ZA" resolve="variables" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMMg3K" role="3cqZAp">
          <node concept="l8MVK" id="37xIJnMMgcq" role="lcghm" />
        </node>
        <node concept="3clFbH" id="37xIJnMMgg5" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnMNAiL" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMNAw3" role="lcghm">
            <property role="lacIc" value="/* Declare functions/states prototype*/" />
          </node>
          <node concept="l8MVK" id="37xIJnMNBx0" role="lcghm" />
        </node>
        <node concept="3clFbF" id="37xIJnMNCx2" role="3cqZAp">
          <node concept="2OqwBi" id="37xIJnMNGfz" role="3clFbG">
            <node concept="2OqwBi" id="37xIJnMNCJo" role="2Oq$k0">
              <node concept="117lpO" id="37xIJnMNCx1" role="2Oq$k0" />
              <node concept="3Tsc0h" id="51jKDoWKuje" role="2OqNvi">
                <ref role="3TtcxE" to="4tdy:2vhhWxvXE_T" resolve="states" />
              </node>
            </node>
            <node concept="2es0OD" id="37xIJnMNJy_" role="2OqNvi">
              <node concept="1bVj0M" id="37xIJnMNJyB" role="23t8la">
                <node concept="3clFbS" id="37xIJnMNJyC" role="1bW5cS">
                  <node concept="lc7rE" id="37xIJnMNJRb" role="3cqZAp">
                    <node concept="la8eA" id="37xIJnMNJYM" role="lcghm">
                      <property role="lacIc" value="void " />
                    </node>
                    <node concept="l9hG8" id="37xIJnMNKeG" role="lcghm">
                      <node concept="2OqwBi" id="37xIJnMNKxW" role="lb14g">
                        <node concept="37vLTw" id="37xIJnMNKiJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="37xIJnMNJyD" resolve="it" />
                        </node>
                        <node concept="3TrcHB" id="37xIJnMNKWU" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                    <node concept="la8eA" id="37xIJnMNLck" role="lcghm">
                      <property role="lacIc" value="();" />
                    </node>
                    <node concept="l8MVK" id="37xIJnMNLEe" role="lcghm" />
                  </node>
                </node>
                <node concept="Rh6nW" id="37xIJnMNJyD" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="37xIJnMNJyE" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMNM8x" role="3cqZAp">
          <node concept="l8MVK" id="37xIJnMNMop" role="lcghm" />
        </node>
        <node concept="3clFbH" id="37xIJnMNMs4" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnMMHjf" role="3cqZAp">
          <node concept="l9S2W" id="37xIJnMMHre" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMMH_K" role="lbANJ">
              <node concept="117lpO" id="37xIJnMMHtI" role="2Oq$k0" />
              <node concept="3Tsc0h" id="51jKDoWKuis" role="2OqNvi">
                <ref role="3TtcxE" to="4tdy:2vhhWxvXE_T" resolve="states" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="37xIJnMMH0g" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnML06M" role="3cqZAp">
          <node concept="la8eA" id="37xIJnML0cw" role="lcghm">
            <property role="lacIc" value="void setup() {" />
          </node>
          <node concept="l8MVK" id="37xIJnMLeQV" role="lcghm" />
        </node>
        <node concept="3izx1p" id="37xIJnML0Jx" role="3cqZAp">
          <node concept="3clFbS" id="37xIJnML0Jz" role="3izTki">
            <node concept="3clFbH" id="37xIJnMLVXb" role="3cqZAp" />
            <node concept="3clFbF" id="37xIJnML0Ot" role="3cqZAp">
              <node concept="2OqwBi" id="37xIJnML4C9" role="3clFbG">
                <node concept="2OqwBi" id="37xIJnML0Yn" role="2Oq$k0">
                  <node concept="117lpO" id="37xIJnML0Os" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="51jKDoWKHKS" role="2OqNvi">
                    <ref role="3TtcxE" to="4tdy:2vhhWxvXEh9" resolve="components" />
                  </node>
                </node>
                <node concept="2es0OD" id="37xIJnML6gQ" role="2OqNvi">
                  <node concept="1bVj0M" id="37xIJnML6gS" role="23t8la">
                    <node concept="3clFbS" id="37xIJnML6gT" role="1bW5cS">
                      <node concept="1bpajm" id="37xIJnMLWvc" role="3cqZAp" />
                      <node concept="lc7rE" id="37xIJnMLG1K" role="3cqZAp">
                        <node concept="la8eA" id="37xIJnMLGX1" role="lcghm">
                          <property role="lacIc" value="pinMode(" />
                        </node>
                        <node concept="l9hG8" id="37xIJnMLHxH" role="lcghm">
                          <node concept="2OqwBi" id="37xIJnMLHPL" role="lb14g">
                            <node concept="37vLTw" id="37xIJnMLHA$" role="2Oq$k0">
                              <ref role="3cqZAo" node="37xIJnML6gU" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="37xIJnMLIgJ" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="la8eA" id="37xIJnMLIwz" role="lcghm">
                          <property role="lacIc" value="," />
                        </node>
                      </node>
                      <node concept="3clFbJ" id="37xIJnMLLD1" role="3cqZAp">
                        <node concept="3clFbS" id="37xIJnMLLD3" role="3clFbx">
                          <node concept="lc7rE" id="37xIJnMLMxw" role="3cqZAp">
                            <node concept="la8eA" id="37xIJnMLMNP" role="lcghm">
                              <property role="lacIc" value="INPUT" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="37xIJnMLLWF" role="3clFbw">
                          <node concept="37vLTw" id="37xIJnMLLHY" role="2Oq$k0">
                            <ref role="3cqZAo" node="37xIJnML6gU" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="37xIJnMLMqA" role="2OqNvi">
                            <ref role="3TsBF5" to="4tdy:37xIJnMKNL2" resolve="isInput" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="37xIJnMLNqn" role="3cqZAp">
                        <node concept="3clFbS" id="37xIJnMLNqp" role="3clFbx">
                          <node concept="lc7rE" id="37xIJnMLOzs" role="3cqZAp">
                            <node concept="la8eA" id="37xIJnMLOIl" role="lcghm">
                              <property role="lacIc" value="OUTPUT" />
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="37xIJnMLNzF" role="3clFbw">
                          <node concept="2OqwBi" id="37xIJnMLNQs" role="3fr31v">
                            <node concept="37vLTw" id="37xIJnMLNCH" role="2Oq$k0">
                              <ref role="3cqZAo" node="37xIJnML6gU" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="37xIJnMLOr2" role="2OqNvi">
                              <ref role="3TsBF5" to="4tdy:37xIJnMKNL2" resolve="isInput" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="lc7rE" id="37xIJnMLPya" role="3cqZAp">
                        <node concept="la8eA" id="37xIJnMLPEz" role="lcghm">
                          <property role="lacIc" value=");" />
                        </node>
                        <node concept="l8MVK" id="37xIJnMLPY1" role="lcghm" />
                      </node>
                    </node>
                    <node concept="Rh6nW" id="37xIJnML6gU" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="37xIJnML6gV" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMNaDi" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMNb1t" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="37xIJnMNb9a" role="lcghm" />
        </node>
        <node concept="3clFbH" id="37xIJnMMguM" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnMMgOT" role="3cqZAp">
          <node concept="l8MVK" id="37xIJnMMgXB" role="lcghm" />
        </node>
        <node concept="3clFbH" id="37xIJnMMh1i" role="3cqZAp" />
        <node concept="lc7rE" id="37xIJnMMPmw" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMMPEl" role="lcghm">
            <property role="lacIc" value="void loop() {" />
          </node>
          <node concept="l8MVK" id="37xIJnMMPSp" role="lcghm" />
        </node>
        <node concept="3izx1p" id="37xIJnMMQ5x" role="3cqZAp">
          <node concept="3clFbS" id="37xIJnMMQ5z" role="3izTki">
            <node concept="1bpajm" id="37xIJnMMQfr" role="3cqZAp" />
            <node concept="lc7rE" id="37xIJnMMQn7" role="3cqZAp">
              <node concept="l9hG8" id="37xIJnMMQ_p" role="lcghm">
                <node concept="2OqwBi" id="37xIJnMMZS_" role="lb14g">
                  <node concept="2OqwBi" id="37xIJnMMUdD" role="2Oq$k0">
                    <node concept="2OqwBi" id="37xIJnMMQKl" role="2Oq$k0">
                      <node concept="117lpO" id="37xIJnMMQBX" role="2Oq$k0" />
                      <node concept="3Tsc0h" id="51jKDoWKulA" role="2OqNvi">
                        <ref role="3TtcxE" to="4tdy:2vhhWxvXE_T" resolve="states" />
                      </node>
                    </node>
                    <node concept="1z4cxt" id="37xIJnMMYRC" role="2OqNvi">
                      <node concept="1bVj0M" id="37xIJnMMYRE" role="23t8la">
                        <node concept="3clFbS" id="37xIJnMMYRF" role="1bW5cS">
                          <node concept="3clFbF" id="37xIJnMMZ3q" role="3cqZAp">
                            <node concept="2OqwBi" id="37xIJnMMZh0" role="3clFbG">
                              <node concept="37vLTw" id="37xIJnMMZ3p" role="2Oq$k0">
                                <ref role="3cqZAo" node="37xIJnMMYRG" resolve="it" />
                              </node>
                              <node concept="3TrcHB" id="37xIJnMMZIU" role="2OqNvi">
                                <ref role="3TsBF5" to="4tdy:1$0OHqCrBa5" resolve="isInitial" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="37xIJnMMYRG" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="37xIJnMMYRH" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3TrcHB" id="37xIJnMN0e6" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="37xIJnMN0p4" role="lcghm">
                <property role="lacIc" value="();" />
              </node>
              <node concept="l8MVK" id="37xIJnMN0Ca" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMN1fM" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMN1sW" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="37xIJnMN1B5" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="37xIJnMLv_v">
    <ref role="WuzLi" to="4tdy:2vhhWxvXGji" resolve="Component" />
    <node concept="11bSqf" id="37xIJnMLv_w" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMLv_x" role="2VODD2">
        <node concept="lc7rE" id="37xIJnMLwVb" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMLwZF" role="lcghm">
            <property role="lacIc" value="const byte " />
          </node>
          <node concept="l9hG8" id="37xIJnMLxeG" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMLxqT" role="lb14g">
              <node concept="117lpO" id="37xIJnMLxix" role="2Oq$k0" />
              <node concept="3TrcHB" id="37xIJnMLxK6" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnMLxU$" role="lcghm">
            <property role="lacIc" value=" = " />
          </node>
          <node concept="l9hG8" id="37xIJnMLy5a" role="lcghm">
            <node concept="2YIFZM" id="37xIJnMLyrp" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(int)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="37xIJnMLyPv" role="37wK5m">
                <node concept="117lpO" id="37xIJnMLyFO" role="2Oq$k0" />
                <node concept="3TrcHB" id="37xIJnMLzgL" role="2OqNvi">
                  <ref role="3TsBF5" to="4tdy:2vhhWxvXHNh" resolve="pin" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnML_6u" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="37xIJnML$QU" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="37xIJnMM4l7">
    <ref role="WuzLi" to="4tdy:5FWo5E_M291" resolve="Variable" />
    <node concept="11bSqf" id="37xIJnMM4l8" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMM4l9" role="2VODD2">
        <node concept="lc7rE" id="37xIJnMM4pc" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMM4vk" role="lcghm">
            <property role="lacIc" value="boolean " />
          </node>
          <node concept="l9hG8" id="37xIJnMM4GB" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMM4Sq" role="lb14g">
              <node concept="117lpO" id="37xIJnMM4K2" role="2Oq$k0" />
              <node concept="3TrcHB" id="37xIJnMM5eX" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnMM5tX" role="lcghm">
            <property role="lacIc" value="=" />
          </node>
          <node concept="l9hG8" id="37xIJnMM8hs" role="lcghm">
            <node concept="2YIFZM" id="37xIJnMM8GS" role="lb14g">
              <ref role="37wK5l" to="wyt6:~String.valueOf(boolean)" resolve="valueOf" />
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <node concept="2OqwBi" id="37xIJnMM9cI" role="37wK5m">
                <node concept="117lpO" id="37xIJnMM8Vh" role="2Oq$k0" />
                <node concept="3TrcHB" id="37xIJnMM9JJ" role="2OqNvi">
                  <ref role="3TsBF5" to="4tdy:5FWo5E_M2Ug" resolve="valeur" />
                </node>
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnMMaX6" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="37xIJnMMb7P" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="37xIJnMMhjN">
    <ref role="WuzLi" to="4tdy:2vhhWxvXGNp" resolve="State" />
    <node concept="11bSqf" id="37xIJnMMhjO" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMMhjP" role="2VODD2">
        <node concept="lc7rE" id="37xIJnMMhp6" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMMhu0" role="lcghm">
            <property role="lacIc" value="void " />
          </node>
          <node concept="l9hG8" id="37xIJnMMhBi" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMMhMF" role="lb14g">
              <node concept="117lpO" id="37xIJnMMhEj" role="2Oq$k0" />
              <node concept="3TrcHB" id="37xIJnMMi7S" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnMMiim" role="lcghm">
            <property role="lacIc" value="() {" />
          </node>
          <node concept="l8MVK" id="37xIJnMMiCX" role="lcghm" />
        </node>
        <node concept="3izx1p" id="37xIJnMMiPF" role="3cqZAp">
          <node concept="3clFbS" id="37xIJnMMiPH" role="3izTki">
            <node concept="1bpajm" id="37xIJnMMiUE" role="3cqZAp" />
            <node concept="lc7rE" id="37xIJnMMj0I" role="3cqZAp">
              <node concept="l9S2W" id="37xIJnMMj9X" role="lcghm">
                <node concept="2OqwBi" id="37xIJnMMjmV" role="lbANJ">
                  <node concept="117lpO" id="37xIJnMMjeT" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="37xIJnMMjGV" role="2OqNvi">
                    <ref role="3TtcxE" to="4tdy:2vhhWxvXI$$" resolve="actions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="37xIJnMNl9j" role="3cqZAp">
              <node concept="3clFbS" id="37xIJnMNl9l" role="3clFbx">
                <node concept="1bpajm" id="37xIJnMNpng" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="37xIJnMNpic" role="3clFbw">
                <node concept="2OqwBi" id="37xIJnMNpie" role="3fr31v">
                  <node concept="2OqwBi" id="37xIJnMNpif" role="2Oq$k0">
                    <node concept="117lpO" id="37xIJnMNpig" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="37xIJnMNpih" role="2OqNvi">
                      <ref role="3TtcxE" to="4tdy:1$0OHqCrBj3" resolve="event" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="37xIJnMNpii" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="37xIJnMMol6" role="3cqZAp">
              <node concept="l9S2W" id="37xIJnMMot6" role="lcghm">
                <node concept="2OqwBi" id="37xIJnMMoCs" role="lbANJ">
                  <node concept="117lpO" id="37xIJnMMowq" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="37xIJnMMoPm" role="2OqNvi">
                    <ref role="3TtcxE" to="4tdy:1$0OHqCrBj3" resolve="event" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="37xIJnMMqpo" role="3cqZAp">
          <node concept="la8eA" id="37xIJnMMqG_" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="37xIJnMMqOG" role="lcghm" />
        </node>
        <node concept="lc7rE" id="37xIJnMMP4l" role="3cqZAp">
          <node concept="l8MVK" id="37xIJnMMPai" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="37xIJnMMqW3">
    <ref role="WuzLi" to="4tdy:1$0OHqCrBq1" resolve="Action" />
    <node concept="11bSqf" id="37xIJnMMqW4" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMMqW5" role="2VODD2">
        <node concept="3clFbJ" id="37xIJnMMraH" role="3cqZAp">
          <node concept="3fqX7Q" id="37xIJnMMw55" role="3clFbw">
            <node concept="2OqwBi" id="37xIJnMMw57" role="3fr31v">
              <node concept="2OqwBi" id="37xIJnMMw58" role="2Oq$k0">
                <node concept="117lpO" id="37xIJnMMw59" role="2Oq$k0" />
                <node concept="3TrEf2" id="37xIJnMMw5a" role="2OqNvi">
                  <ref role="3Tt5mk" to="4tdy:1$0OHqCrBMs" resolve="target" />
                </node>
              </node>
              <node concept="3TrcHB" id="37xIJnMMw5b" role="2OqNvi">
                <ref role="3TsBF5" to="4tdy:37xIJnMKNL2" resolve="isInput" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="37xIJnMMraJ" role="3clFbx">
            <node concept="lc7rE" id="37xIJnMMuWW" role="3cqZAp">
              <node concept="la8eA" id="37xIJnMMv3u" role="lcghm">
                <property role="lacIc" value="digitalWrite(" />
              </node>
              <node concept="l9hG8" id="37xIJnMMvpV" role="lcghm">
                <node concept="2OqwBi" id="37xIJnMMvZu" role="lb14g">
                  <node concept="2OqwBi" id="37xIJnMMvAh" role="2Oq$k0">
                    <node concept="117lpO" id="37xIJnMMvu$" role="2Oq$k0" />
                    <node concept="3TrEf2" id="37xIJnMMvMD" role="2OqNvi">
                      <ref role="3Tt5mk" to="4tdy:1$0OHqCrBMs" resolve="target" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="37xIJnMMwl3" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="37xIJnMMwuB" role="lcghm">
                <property role="lacIc" value="," />
              </node>
              <node concept="l9hG8" id="37xIJnMMymU" role="lcghm">
                <node concept="2YIFZM" id="37xIJnMMyGQ" role="lb14g">
                  <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <node concept="2OqwBi" id="37xIJnMMz4A" role="37wK5m">
                    <node concept="117lpO" id="37xIJnMMyVb" role="2Oq$k0" />
                    <node concept="3TrcHB" id="37xIJnMMzpq" role="2OqNvi">
                      <ref role="3TsBF5" to="4tdy:5FWo5E_M3Ja" resolve="signal" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="la8eA" id="37xIJnMMzQ3" role="lcghm">
                <property role="lacIc" value=");" />
              </node>
              <node concept="l8MVK" id="37xIJnMM$jq" role="lcghm" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="37xIJnMMr0W">
    <ref role="WuzLi" to="4tdy:5FWo5E_M3Uf" resolve="Event" />
    <node concept="11bSqf" id="37xIJnMMr0X" role="11c4hB">
      <node concept="3clFbS" id="37xIJnMMr0Y" role="2VODD2">
        <node concept="lc7rE" id="37xIJnMM$Uo" role="3cqZAp">
          <node concept="l9hG8" id="37xIJnMM_2X" role="lcghm">
            <node concept="2OqwBi" id="37xIJnMM_KP" role="lb14g">
              <node concept="2OqwBi" id="37xIJnMM_eu" role="2Oq$k0">
                <node concept="117lpO" id="37xIJnMM_6L" role="2Oq$k0" />
                <node concept="3TrEf2" id="37xIJnMM_yU" role="2OqNvi">
                  <ref role="3Tt5mk" to="4tdy:5FWo5E_M41Y" resolve="nextState" />
                </node>
              </node>
              <node concept="3TrcHB" id="37xIJnMMAb7" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="37xIJnMMAno" role="lcghm">
            <property role="lacIc" value="();" />
          </node>
          <node concept="l8MVK" id="37xIJnMMAzo" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>

