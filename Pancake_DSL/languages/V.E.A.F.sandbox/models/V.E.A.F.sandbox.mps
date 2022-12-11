<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b9ca8777-ec35-47db-8f6a-bf88cb516799(V.E.A.F.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F">
      <concept id="8855653570245177532" name="V.E.A.F.structure.VariableBooleanAction" flags="ng" index="36xUEW">
        <reference id="8855653570245178939" name="variable" index="36xUKV" />
      </concept>
      <concept id="8855653570245173364" name="V.E.A.F.structure.Actuator" flags="ng" index="36xVDO" />
      <concept id="8855653570245174483" name="V.E.A.F.structure.Sensor" flags="ng" index="36xVVj" />
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
        <property id="2869153363540761809" name="pin" index="1S9TGp" />
      </concept>
      <concept id="2869153363540757721" name="V.E.A.F.structure.State" flags="ng" index="1S9SGh">
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
    <node concept="1GAwap" id="51jKDoWMyIi" role="3Zd7YW">
      <property role="TrG5h" value="x" />
      <property role="1GAwuV" value="1" />
    </node>
    <node concept="1GABjl" id="51jKDoWMNQb" role="3Zd7YW">
      <property role="TrG5h" value="bool" />
    </node>
    <node concept="1S9SGh" id="5S$RV48OBn2" role="1S9YUL">
      <property role="TrG5h" value="AZEZERZER" />
    </node>
    <node concept="1S9SGh" id="5S$RV48OBn4" role="1S9YUL">
      <property role="TrG5h" value="tet" />
      <node concept="36xUEW" id="5S$RV48V3cq" role="1S9UVG">
        <ref role="36xUKV" node="51jKDoWMNQb" resolve="bool" />
      </node>
    </node>
    <node concept="36xVVj" id="5S$RV48UViu" role="1S9Ye1">
      <property role="TrG5h" value="button" />
    </node>
    <node concept="36xVDO" id="5S$RV48V5LX" role="1S9Ye1">
      <property role="TrG5h" value="on" />
      <property role="1S9TGp" value="1" />
    </node>
  </node>
</model>

