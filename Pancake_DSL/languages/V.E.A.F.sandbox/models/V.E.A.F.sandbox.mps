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
      <concept id="5788183896621957135" name="V.E.A.F.structure.VariableInteger" flags="ng" index="1GAwap">
        <property id="5788183896621958445" name="value" index="1GAwuV" />
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
        <child id="2869153363540764964" name="actions" index="1S9UVG" />
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
      <property role="TrG5h" value="LED" />
      <property role="1S9TGp" value="12" />
      <property role="338CqR" value="true" />
    </node>
    <node concept="1S9Scq" id="3AihLw0pRHR" role="1S9Ye1">
      <property role="TrG5h" value="BUZZER" />
      <property role="1S9TGp" value="12" />
    </node>
    <node concept="1S9Scq" id="3AihLw0suaJ" role="1S9Ye1">
      <property role="TrG5h" value="LED" />
      <property role="1S9TGp" value="11" />
    </node>
    <node concept="1S9Scq" id="3AihLw0sug5" role="1S9Ye1">
      <property role="TrG5h" value="TEST" />
      <property role="1S9TGp" value="5" />
    </node>
    <node concept="1S9SGh" id="51jKDoWLNs8" role="1S9YUL">
      <property role="TrG5h" value="state2" />
      <node concept="2LrEhn" id="51jKDoWLNv2" role="1S9UVG">
        <property role="3Zd5Ig" value="5FWo5E_M3KQ/LOW" />
        <ref role="2LrETa" node="51jKDoWLMTE" resolve="BUZZER" />
      </node>
    </node>
    <node concept="1S9SGh" id="51jKDoWLN6O" role="1S9YUL">
      <property role="TrG5h" value="state1" />
      <property role="2LrE1j" value="true" />
      <node concept="2LrEhn" id="51jKDoWLNL$" role="1S9UVG">
        <property role="3Zd5Ig" value="5FWo5E_M3KP/HIGH" />
        <ref role="2LrETa" node="51jKDoWLMTE" resolve="BUZZER" />
      </node>
    </node>
    <node concept="1GAwap" id="51jKDoWMyIi" role="3Zd7YW">
      <property role="TrG5h" value="x" />
      <property role="1GAwuV" value="1" />
    </node>
    <node concept="1GABjl" id="51jKDoWMNQb" role="3Zd7YW">
      <property role="TrG5h" value="bool" />
    </node>
  </node>
</model>

