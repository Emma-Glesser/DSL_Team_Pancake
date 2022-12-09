<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8fd1b931-4f2a-4375-8f57-66f1e8661317(Scenario4.a_model)">
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
      <concept id="8855653570245170081" name="V.E.A.F.structure.ActuatorAction" flags="ng" index="36xSAx">
        <property id="8855653570245176360" name="signal" index="36xVoC" />
        <reference id="8855653570245172218" name="actuator" index="36xS7U" />
      </concept>
      <concept id="8855653570245173364" name="V.E.A.F.structure.Actuator" flags="ng" index="36xVDO" />
      <concept id="8855653570245174483" name="V.E.A.F.structure.Sensor" flags="ng" index="36xVVj" />
      <concept id="4293303684764839595" name="V.E.A.F.structure.AssigneVariableIntegerAction" flags="ng" index="1CR4Tv">
        <reference id="4293303684764841078" name="variable" index="1CR5i2" />
        <reference id="4293303684764842302" name="value" index="1CR5Ba" />
      </concept>
      <concept id="4293303684766536619" name="V.E.A.F.structure.AssigneSensorAction" flags="ng" index="1CXBdv">
        <reference id="4293303684766537557" name="variable" index="1CXBux" />
        <reference id="4293303684766538469" name="sensor" index="1CXBCh" />
      </concept>
      <concept id="5788183896622058902" name="V.E.A.F.structure.VariableIntegerCondition" flags="ng" index="1GA8W0">
        <property id="8855653570245191471" name="operator" index="36xZOJ" />
        <property id="5788183896622060082" name="referenceValue" index="1GA92$" />
        <reference id="5788183896622071634" name="variable" index="1GAbR4" />
      </concept>
      <concept id="5788183896621957135" name="V.E.A.F.structure.VariableInteger" flags="ng" index="1GAwap">
        <property id="5788183896621958445" name="value" index="1GAwuV" />
      </concept>
      <concept id="2869153363540736456" name="V.E.A.F.structure.VEAF" flags="ng" index="1S9NS0">
        <child id="2869153363540747337" name="components" index="1S9Ye1" />
        <child id="2869153363540748665" name="states" index="1S9YUL" />
        <child id="6556221099989278694" name="variables" index="3Zd7YW" />
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
  <node concept="1S9NS0" id="5S$RV48FCu6">
    <property role="TrG5h" value="scenario4" />
    <node concept="1S9SGh" id="5S$RV48FCu7" role="1S9YUL">
      <property role="TrG5h" value="initial" />
      <property role="2LrE1j" value="true" />
      <node concept="36xSAx" id="5S$RV48FCuz" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KQ/LOW" />
        <ref role="36xS7U" node="5S$RV48FCum" resolve="led" />
      </node>
      <node concept="36xSAx" id="5S$RV48FCuC" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KQ/LOW" />
        <ref role="36xS7U" node="5S$RV48FCuu" resolve="buzzer" />
      </node>
      <node concept="1CR4Tv" id="5S$RV48FCuK" role="1S9UVG">
        <ref role="1CR5i2" node="5S$RV48FCud" resolve="oldState" />
        <ref role="1CR5Ba" node="5S$RV48FCu8" resolve="state" />
      </node>
      <node concept="1CXBdv" id="5S$RV48FCv4" role="1S9UVG">
        <ref role="1CXBux" node="5S$RV48FCu8" resolve="state" />
        <ref role="1CXBCh" node="5S$RV48FCuh" resolve="button" />
      </node>
      <node concept="3Zd5Vl" id="5S$RV48FCva" role="2LrEol">
        <ref role="3Zd20$" node="5S$RV48FCve" resolve="state2" />
        <node concept="33cijj" id="5S$RV48FCwR" role="33cnjL">
          <property role="33chB_" value="37xIJnMOamR/AND" />
          <node concept="1GA8W0" id="5S$RV48FCx0" role="33c4Uj">
            <property role="36xZOJ" value="7F_Aw2Wo_3g/EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCu8" resolve="state" />
          </node>
          <node concept="1GA8W0" id="5S$RV48FCx3" role="33c49r">
            <property role="36xZOJ" value="7F_Aw2Wo_3h/NOT_EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCud" resolve="oldState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1S9SGh" id="5S$RV48FCve" role="1S9YUL">
      <property role="TrG5h" value="state2" />
      <node concept="36xSAx" id="5S$RV48FCvx" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KP/HIGH" />
        <ref role="36xS7U" node="5S$RV48FCuu" resolve="buzzer" />
      </node>
      <node concept="36xSAx" id="5S$RV48FCvA" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KQ/LOW" />
        <ref role="36xS7U" node="5S$RV48FCum" resolve="led" />
      </node>
      <node concept="1CR4Tv" id="5S$RV48FCvT" role="1S9UVG">
        <ref role="1CR5i2" node="5S$RV48FCud" resolve="oldState" />
        <ref role="1CR5Ba" node="5S$RV48FCu8" resolve="state" />
      </node>
      <node concept="3Zd5Vl" id="5S$RV48FCvY" role="2LrEol">
        <ref role="3Zd20$" node="5S$RV48FCwa" resolve="state3" />
        <node concept="33cijj" id="5S$RV48FCx6" role="33cnjL">
          <property role="33chB_" value="37xIJnMOamR/AND" />
          <node concept="1GA8W0" id="5S$RV48FCx7" role="33c4Uj">
            <property role="36xZOJ" value="7F_Aw2Wo_3g/EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCu8" resolve="state" />
          </node>
          <node concept="1GA8W0" id="5S$RV48FCx8" role="33c49r">
            <property role="36xZOJ" value="7F_Aw2Wo_3h/NOT_EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCud" resolve="oldState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1S9SGh" id="5S$RV48FCwa" role="1S9YUL">
      <property role="TrG5h" value="state3" />
      <node concept="36xSAx" id="5S$RV48FCwb" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KQ/LOW" />
        <ref role="36xS7U" node="5S$RV48FCuu" resolve="buzzer" />
      </node>
      <node concept="36xSAx" id="5S$RV48FCwc" role="1S9UVG">
        <property role="36xVoC" value="5FWo5E_M3KP/HIGH" />
        <ref role="36xS7U" node="5S$RV48FCum" resolve="led" />
      </node>
      <node concept="1CR4Tv" id="5S$RV48FCwd" role="1S9UVG">
        <ref role="1CR5i2" node="5S$RV48FCud" resolve="oldState" />
        <ref role="1CR5Ba" node="5S$RV48FCu8" resolve="state" />
      </node>
      <node concept="3Zd5Vl" id="5S$RV48FCwe" role="2LrEol">
        <ref role="3Zd20$" node="5S$RV48FCu7" resolve="initial" />
        <node concept="33cijj" id="5S$RV48FCxc" role="33cnjL">
          <property role="33chB_" value="37xIJnMOamR/AND" />
          <node concept="1GA8W0" id="5S$RV48FCxd" role="33c4Uj">
            <property role="36xZOJ" value="7F_Aw2Wo_3g/EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCu8" resolve="state" />
          </node>
          <node concept="1GA8W0" id="5S$RV48FCxe" role="33c49r">
            <property role="36xZOJ" value="7F_Aw2Wo_3h/NOT_EQUALS" />
            <property role="1GA92$" value="1" />
            <ref role="1GAbR4" node="5S$RV48FCud" resolve="oldState" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1GAwap" id="5S$RV48FCu8" role="3Zd7YW">
      <property role="TrG5h" value="state" />
      <property role="1GAwuV" value="0" />
    </node>
    <node concept="1GAwap" id="5S$RV48FCud" role="3Zd7YW">
      <property role="TrG5h" value="oldState" />
      <property role="1GAwuV" value="0" />
    </node>
    <node concept="36xVVj" id="5S$RV48FCuh" role="1S9Ye1">
      <property role="TrG5h" value="button" />
      <property role="1S9TGp" value="10" />
    </node>
    <node concept="36xVDO" id="5S$RV48FCum" role="1S9Ye1">
      <property role="TrG5h" value="led" />
      <property role="1S9TGp" value="11" />
    </node>
    <node concept="36xVDO" id="5S$RV48FCuu" role="1S9Ye1">
      <property role="TrG5h" value="buzzer" />
      <property role="1S9TGp" value="12" />
    </node>
  </node>
</model>

