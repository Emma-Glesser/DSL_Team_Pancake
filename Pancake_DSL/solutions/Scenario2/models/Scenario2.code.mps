<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f219fb6d-d393-4077-a6fb-e785bfec3bbf(Scenario2.code)">
  <persistence version="9" />
  <languages>
    <use id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="f152af7d-92d2-462f-acb4-a6902db66b9d" name="V.E.A.F">
      <concept id="3594359543121878566" name="V.E.A.F.structure.MultipleCondition" flags="ng" index="33cijj">
        <property id="3594359543121879824" name="operator" index="33chB_" />
        <child id="3594359543121967278" name="rightCondition" index="33c49r" />
        <child id="3594359543121966182" name="leftCondition" index="33c4Uj" />
      </concept>
      <concept id="3594359543121868902" name="V.E.A.F.structure.SensorCondition" flags="ng" index="33csaj">
        <property id="3594359543121871541" name="expectedValue" index="33cjx0" />
        <reference id="3594359543121869874" name="sensor" index="33csr7" />
      </concept>
      <concept id="8855653570245170081" name="V.E.A.F.structure.ActuatorAction" flags="ng" index="36xSAx">
        <property id="8855653570245176360" name="signal" index="36xVoC" />
        <reference id="8855653570245172218" name="actuator" index="36xS7U" />
      </concept>
      <concept id="8855653570245173364" name="V.E.A.F.structure.Actuator" flags="ng" index="36xVDO" />
      <concept id="8855653570245174483" name="V.E.A.F.structure.Sensor" flags="ng" index="36xVVj" />
      <concept id="8855653570245188103" name="V.E.A.F.structure.UnaryCondition" flags="ng" index="36xW07">
        <property id="8855653570245189724" name="operator" index="36xZDs" />
        <child id="8855653570245298291" name="condition" index="36wp9N" />
      </concept>
      <concept id="2869153363540736456" name="V.E.A.F.structure.VEAF" flags="ng" index="1S9NS0">
        <child id="2869153363540747337" name="components" index="1S9Ye1" />
        <child id="2869153363540748665" name="states" index="1S9YUL" />
      </concept>
      <concept id="2869153363540755666" name="V.E.A.F.structure.Component" flags="ng" index="1S9Scq">
        <property id="2869153363540761809" name="pin" index="1S9TGp" />
      </concept>
      <concept id="2869153363540757721" name="V.E.A.F.structure.State" flags="ng" index="1S9SGh">
        <property id="1801671670338843269" name="isInitial" index="2LrE1j" />
        <child id="1801671670338843843" name="transitions" index="2LrEol" />
        <child id="2869153363540764964" name="actions" index="1S9UVG" />
      </concept>
      <concept id="6556221099989286543" name="V.E.A.F.structure.Transition" flags="ng" index="3Zd5Vl">
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
  <node concept="1S9NS0" id="2eWlKWjSPPB">
    <property role="TrG5h" value="scenario2" />
    <node concept="1S9SGh" id="2eWlKWjSPPC" role="1S9YUL">
      <property role="TrG5h" value="initial" />
      <property role="2LrE1j" value="true" />
      <node concept="36xSAx" id="2eWlKWjSPPV" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KQ/LOW" />
        <ref role="36xS7U" node="2eWlKWjSPPQ" resolve="buzzer" />
      </node>
      <node concept="3Zd5Vl" id="2eWlKWjSPQ3" role="2LrEol">
        <ref role="3Zd20$" node="2eWlKWjSPPX" resolve="state2" />
        <node concept="33cijj" id="2eWlKWjSPQ7" role="33cnjL">
          <property role="33chB_" value="37xIJnMOamR/AND" />
          <node concept="33csaj" id="2eWlKWjSPQg" role="33c4Uj">
            <property role="33cjx0" value="5FWo5E_M3KP/HIGH" />
            <ref role="33csr7" node="2eWlKWjSPPD" resolve="button1" />
          </node>
          <node concept="33csaj" id="2eWlKWjSPQj" role="33c49r">
            <property role="33cjx0" value="5FWo5E_M3KP/HIGH" />
            <ref role="33csr7" node="2eWlKWjSPPI" resolve="button2" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1S9SGh" id="2eWlKWjSPPX" role="1S9YUL">
      <property role="TrG5h" value="state2" />
      <node concept="36xSAx" id="2eWlKWjSPQ1" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KP/HIGH" />
        <ref role="36xS7U" node="2eWlKWjSPPQ" resolve="buzzer" />
      </node>
      <node concept="3Zd5Vl" id="2eWlKWjSPQm" role="2LrEol">
        <ref role="3Zd20$" node="2eWlKWjSPPC" resolve="initial" />
        <node concept="36xW07" id="2eWlKWjSPQq" role="33cnjL">
          <property role="36xZDs" value="7F_Aw2Wo_38/NOT" />
          <node concept="33cijj" id="2eWlKWjSPQw" role="36wp9N">
            <property role="33chB_" value="37xIJnMOamR/AND" />
            <node concept="33csaj" id="2eWlKWjSPQD" role="33c4Uj">
              <property role="33cjx0" value="5FWo5E_M3KP/HIGH" />
              <ref role="33csr7" node="2eWlKWjSPPD" resolve="button1" />
            </node>
            <node concept="33csaj" id="2eWlKWjSPQG" role="33c49r">
              <property role="33cjx0" value="5FWo5E_M3KP/HIGH" />
              <ref role="33csr7" node="2eWlKWjSPPI" resolve="button2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="36xVVj" id="2eWlKWjSPPD" role="1S9Ye1">
      <property role="TrG5h" value="button1" />
      <property role="1S9TGp" value="10" />
    </node>
    <node concept="36xVVj" id="2eWlKWjSPPI" role="1S9Ye1">
      <property role="TrG5h" value="button2" />
      <property role="1S9TGp" value="11" />
    </node>
    <node concept="36xVDO" id="2eWlKWjSPPQ" role="1S9Ye1">
      <property role="TrG5h" value="buzzer" />
      <property role="1S9TGp" value="12" />
    </node>
  </node>
</model>

