<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9ca8777-ec35-47db-8f6a-bf88cb516799(V.E.A.F.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F">
      <concept id="1801671670338844289" name="V.E.A.F.structure.Action" flags="ng" index="2LrEhn">
        <property id="6556221099989285834" name="signal" index="3Zd5Ig" />
        <reference id="1801671670338845852" name="target" index="2LrETa" />
      </concept>
      <concept id="3594359543121878566" name="V.E.A.F.structure.MultipleCondition" flags="ng" index="33cijj">
        <property id="3594359543121879824" name="operator" index="33chB_" />
        <child id="3594359543121967278" name="right" index="33c49r" />
        <child id="3594359543121966182" name="left" index="33c4Uj" />
      </concept>
      <concept id="5788183896622058902" name="V.E.A.F.structure.VariableIntegerCondition" flags="ng" index="1GA8W0">
        <property id="5788183896622060082" name="expected" index="1GA92$" />
        <reference id="5788183896622071634" name="variable" index="1GAbR4" />
      </concept>
      <concept id="5788183896622061124" name="V.E.A.F.structure.VariableBooleanCondition" flags="ng" index="1GA9ji">
        <property id="5788183896622062876" name="expected" index="1GA9Ya" />
        <reference id="5788183896622070462" name="variable" index="1GAbwC" />
      </concept>
      <concept id="5788183896622063867" name="V.E.A.F.structure.VariableStringCondition" flags="ng" index="1GAa9H">
        <property id="5788183896622065671" name="expected" index="1GAaEh" />
        <reference id="5788183896622073534" name="variable" index="1GA4gC" />
      </concept>
      <concept id="5788183896621957135" name="V.E.A.F.structure.VariableInteger" flags="ng" index="1GAwap">
        <property id="5788183896621958445" name="value" index="1GAwuV" />
      </concept>
      <concept id="5788183896621959019" name="V.E.A.F.structure.VariableString" flags="ng" index="1GAwnX">
        <property id="5788183896621959783" name="value" index="1GAwzL" />
      </concept>
      <concept id="5788183896621954627" name="V.E.A.F.structure.VariableBoolean" flags="ng" index="1GABjl" />
      <concept id="2869153363540736456" name="V.E.A.F.structure.VEAF" flags="ng" index="1S9NS0">
        <child id="2869153363540747337" name="components" index="1S9Ye1" />
        <child id="2869153363540748665" name="states" index="1S9YUL" />
        <child id="6556221099989278694" name="variables" index="3Zd7YW" />
      </concept>
      <concept id="2869153363540755666" name="V.E.A.F.structure.Component" flags="ng" index="1S9Scq">
        <property id="3594359543121001538" name="isInput" index="338CqR" />
        <property id="2869153363540761809" name="pin" index="1S9TGp" />
      </concept>
      <concept id="2869153363540757721" name="V.E.A.F.structure.State" flags="ng" index="1S9SGh">
        <property id="1801671670338843269" name="isInitial" index="2LrE1j" />
        <child id="1801671670338843843" name="event" index="2LrEol" />
        <child id="2869153363540764964" name="actions" index="1S9UVG" />
      </concept>
      <concept id="6556221099989286543" name="V.E.A.F.structure.Event" flags="ng" index="3Zd5Vl">
        <reference id="6556221099989287038" name="nextState" index="3Zd20$" />
        <child id="3594359543121890820" name="condition" index="33cnjL" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1S9NS0" id="5FWo5E_Mh5Y">
    <property role="TrG5h" value="test" />
    <node concept="1S9Scq" id="51jKDoWLMTE" role="1S9Ye1">
      <property role="TrG5h" value="BUZZER" />
      <property role="1S9TGp" value="12" />
      <property role="338CqR" value="true" />
    </node>
    <node concept="1S9SGh" id="51jKDoWLNs8" role="1S9YUL">
      <property role="TrG5h" value="state2" />
      <node concept="2LrEhn" id="51jKDoWLNv2" role="1S9UVG">
        <property role="3Zd5Ig" value="5FWo5E_M3KQ/LOW" />
        <ref role="2LrETa" node="51jKDoWLMTE" resolve="BUZZER" />
      </node>
      <node concept="3Zd5Vl" id="51jKDoWMO5O" role="2LrEol">
        <ref role="3Zd20$" node="51jKDoWLN6O" resolve="state1" />
        <node concept="33cijj" id="51jKDoWNflI" role="33cnjL">
          <property role="33chB_" value="37xIJnMOamR/AND" />
          <node concept="1GA8W0" id="51jKDoWNfnv" role="33c4Uj">
            <property role="1GA92$" value="5" />
            <ref role="1GAbR4" node="51jKDoWMyIi" resolve="x" />
          </node>
          <node concept="1GAa9H" id="51jKDoWNfs0" role="33c49r">
            <property role="1GAaEh" value="trest" />
            <ref role="1GA4gC" node="51jKDoWMNTX" resolve="test" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1S9SGh" id="51jKDoWLN6O" role="1S9YUL">
      <property role="TrG5h" value="state1" />
      <property role="2LrE1j" value="true" />
      <node concept="2LrEhn" id="51jKDoWLNL$" role="1S9UVG">
        <property role="3Zd5Ig" value="5FWo5E_M3KP/HIGH" />
        <ref role="2LrETa" node="51jKDoWLMTE" resolve="BUZZER" />
      </node>
      <node concept="3Zd5Vl" id="51jKDoWLNEz" role="2LrEol">
        <ref role="3Zd20$" node="51jKDoWLNs8" resolve="state2" />
        <node concept="1GA9ji" id="51jKDoWNfgp" role="33cnjL">
          <property role="1GA9Ya" value="true" />
          <ref role="1GAbwC" node="51jKDoWMNQb" resolve="bool" />
        </node>
      </node>
    </node>
    <node concept="1GAwap" id="51jKDoWMyIi" role="3Zd7YW">
      <property role="TrG5h" value="x" />
      <property role="1GAwuV" value="1" />
    </node>
    <node concept="1GABjl" id="51jKDoWMNQb" role="3Zd7YW">
      <property role="TrG5h" value="bool" />
    </node>
    <node concept="1GAwnX" id="51jKDoWMNTX" role="3Zd7YW">
      <property role="TrG5h" value="test" />
      <property role="1GAwzL" value="test" />
    </node>
  </node>
</model>

