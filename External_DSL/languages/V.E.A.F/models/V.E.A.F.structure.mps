<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:79efd526-4965-4b82-846b-97823ace55e0(V.E.A.F.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2vhhWxvXBB8">
    <property role="EcuMT" value="2869153363540736456" />
    <property role="TrG5h" value="VEAF" />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="root" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="2vhhWxvXBK5" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="5FWo5E_M1ZA" role="1TKVEi">
      <property role="IQ2ns" value="6556221099989278694" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="variables" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5FWo5E_M291" resolve="Variable" />
    </node>
    <node concept="1TJgyj" id="2vhhWxvXEh9" role="1TKVEi">
      <property role="IQ2ns" value="2869153363540747337" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="components" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2vhhWxvXGji" resolve="Component" />
    </node>
    <node concept="1TJgyj" id="2vhhWxvXE_T" role="1TKVEi">
      <property role="IQ2ns" value="2869153363540748665" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="states" />
      <property role="20lbJX" value="fLJekj6/_1__n" />
      <ref role="20lvS9" node="2vhhWxvXGNp" resolve="State" />
    </node>
  </node>
  <node concept="1TIwiD" id="2vhhWxvXGji">
    <property role="EcuMT" value="2869153363540755666" />
    <property role="TrG5h" value="Component" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="2vhhWxvXHNh" role="1TKVEl">
      <property role="IQ2nx" value="2869153363540761809" />
      <property role="TrG5h" value="pin" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="2vhhWxvXI3$" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2vhhWxvXGNp">
    <property role="EcuMT" value="2869153363540757721" />
    <property role="TrG5h" value="State" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="2vhhWxvXIcy" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="2vhhWxvXI$$" role="1TKVEi">
      <property role="IQ2ns" value="2869153363540764964" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="actions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="1$0OHqCrBq1" resolve="Action" />
    </node>
    <node concept="1TJgyj" id="1$0OHqCrBj3" role="1TKVEi">
      <property role="IQ2ns" value="1801671670338843843" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="transitions" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="5FWo5E_M3Uf" resolve="Transition" />
    </node>
    <node concept="1TJgyi" id="1$0OHqCrBa5" role="1TKVEl">
      <property role="IQ2nx" value="1801671670338843269" />
      <property role="TrG5h" value="isInitial" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="1$0OHqCrBq1">
    <property role="EcuMT" value="1801671670338844289" />
    <property role="TrG5h" value="Action" />
    <property role="34LRSv" value="action" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="5FWo5E_M291">
    <property role="EcuMT" value="6556221099989279297" />
    <property role="TrG5h" value="Variable" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="PrWs8" id="5FWo5E_M2T0" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="25R3W" id="5FWo5E_M3KO">
    <property role="3F6X1D" value="6556221099989285940" />
    <property role="TrG5h" value="SIGNAL" />
    <node concept="25R33" id="5FWo5E_M3KP" role="25R1y">
      <property role="3tVfz5" value="6556221099989285941" />
      <property role="TrG5h" value="HIGH" />
    </node>
    <node concept="25R33" id="5FWo5E_M3KQ" role="25R1y">
      <property role="3tVfz5" value="6556221099989285942" />
      <property role="TrG5h" value="LOW" />
    </node>
  </node>
  <node concept="1TIwiD" id="5FWo5E_M3Uf">
    <property role="EcuMT" value="6556221099989286543" />
    <property role="TrG5h" value="Transition" />
    <property role="34LRSv" value="event" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="5FWo5E_M41Y" role="1TKVEi">
      <property role="IQ2ns" value="6556221099989287038" />
      <property role="20kJfa" value="nextState" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2vhhWxvXGNp" resolve="State" />
    </node>
    <node concept="1TJgyj" id="37xIJnMOcS4" role="1TKVEi">
      <property role="IQ2ns" value="3594359543121890820" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37xIJnMO5Mi" resolve="Condition" />
    </node>
  </node>
  <node concept="1TIwiD" id="37xIJnMO5Mi">
    <property role="EcuMT" value="3594359543121861778" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="Condition" />
    <property role="34LRSv" value="condition" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="37xIJnMO6hK">
    <property role="EcuMT" value="3594359543121863792" />
    <property role="TrG5h" value="VariableCondition" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="37xIJnMO5Mi" resolve="Condition" />
  </node>
  <node concept="1TIwiD" id="37xIJnMO7xA">
    <property role="EcuMT" value="3594359543121868902" />
    <property role="TrG5h" value="SensorCondition" />
    <ref role="1TJDcQ" node="37xIJnMO5Mi" resolve="Condition" />
    <node concept="1TJgyj" id="37xIJnMO7KM" role="1TKVEi">
      <property role="IQ2ns" value="3594359543121869874" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7F_Aw2Woyjj" resolve="Sensor" />
    </node>
    <node concept="1TJgyi" id="37xIJnMO8aP" role="1TKVEl">
      <property role="IQ2nx" value="3594359543121871541" />
      <property role="TrG5h" value="expectedValue" />
      <ref role="AX2Wp" node="5FWo5E_M3KO" resolve="SIGNAL" />
    </node>
  </node>
  <node concept="1TIwiD" id="37xIJnMO9SA">
    <property role="EcuMT" value="3594359543121878566" />
    <property role="TrG5h" value="MultipleCondition" />
    <ref role="1TJDcQ" node="37xIJnMO5Mi" resolve="Condition" />
    <node concept="1TJgyi" id="37xIJnMOacg" role="1TKVEl">
      <property role="IQ2nx" value="3594359543121879824" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" node="37xIJnMOamQ" resolve="OPERATOR" />
    </node>
    <node concept="1TJgyj" id="37xIJnMOvhA" role="1TKVEi">
      <property role="IQ2ns" value="3594359543121966182" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="leftCondition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37xIJnMO5Mi" resolve="Condition" />
    </node>
    <node concept="1TJgyj" id="37xIJnMOvyI" role="1TKVEi">
      <property role="IQ2ns" value="3594359543121967278" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="rightCondition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37xIJnMO5Mi" resolve="Condition" />
    </node>
  </node>
  <node concept="25R3W" id="37xIJnMOamQ">
    <property role="3F6X1D" value="3594359543121880502" />
    <property role="TrG5h" value="BINARY_OPERATOR" />
    <node concept="25R33" id="37xIJnMOamR" role="25R1y">
      <property role="3tVfz5" value="3594359543121880503" />
      <property role="TrG5h" value="AND" />
    </node>
    <node concept="25R33" id="37xIJnMOar5" role="25R1y">
      <property role="3tVfz5" value="3594359543121880773" />
      <property role="TrG5h" value="OR" />
    </node>
  </node>
  <node concept="1TIwiD" id="51jKDoWMrp3">
    <property role="EcuMT" value="5788183896621954627" />
    <property role="TrG5h" value="VariableBoolean" />
    <ref role="1TJDcQ" node="5FWo5E_M291" resolve="Variable" />
    <node concept="1TJgyi" id="51jKDoWMrMN" role="1TKVEl">
      <property role="IQ2nx" value="5788183896621956275" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="51jKDoWMs0f">
    <property role="EcuMT" value="5788183896621957135" />
    <property role="TrG5h" value="VariableInteger" />
    <ref role="1TJDcQ" node="5FWo5E_M291" resolve="Variable" />
    <node concept="1TJgyi" id="51jKDoWMskH" role="1TKVEl">
      <property role="IQ2nx" value="5788183896621958445" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="51jKDoWMOQm">
    <property role="EcuMT" value="5788183896622058902" />
    <property role="TrG5h" value="VariableIntegerCondition" />
    <ref role="1TJDcQ" node="37xIJnMO6hK" resolve="VariableCondition" />
    <node concept="1TJgyi" id="51jKDoWMP8M" role="1TKVEl">
      <property role="IQ2nx" value="5788183896622060082" />
      <property role="TrG5h" value="referenceValue" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyi" id="7F_Aw2WoAsJ" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245191471" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" node="7F_Aw2Wo_3f" resolve="INTEGER_OPERATOR" />
    </node>
    <node concept="1TJgyj" id="51jKDoWMRXi" role="1TKVEi">
      <property role="IQ2ns" value="5788183896622071634" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMs0f" resolve="VariableInteger" />
    </node>
  </node>
  <node concept="1TIwiD" id="51jKDoWMPp4">
    <property role="EcuMT" value="5788183896622061124" />
    <property role="TrG5h" value="VariableBooleanCondition" />
    <ref role="1TJDcQ" node="37xIJnMO6hK" resolve="VariableCondition" />
    <node concept="1TJgyi" id="51jKDoWMPOs" role="1TKVEl">
      <property role="IQ2nx" value="5788183896622062876" />
      <property role="TrG5h" value="referenceValue" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="7F_Aw2WoAmA" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245191078" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" node="7F_Aw2Wo_3t" resolve="BOOLEAN_OPERATOR" />
    </node>
    <node concept="1TJgyj" id="51jKDoWMREY" role="1TKVEi">
      <property role="IQ2ns" value="5788183896622070462" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMrp3" resolve="VariableBoolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="7F_Aw2Woxex">
    <property role="EcuMT" value="8855653570245170081" />
    <property role="TrG5h" value="ActuatorAction" />
    <ref role="1TJDcQ" node="1$0OHqCrBq1" resolve="Action" />
    <node concept="1TJgyj" id="7F_Aw2WoxJU" role="1TKVEi">
      <property role="IQ2ns" value="8855653570245172218" />
      <property role="20kJfa" value="actuator" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7F_Aw2Woy1O" resolve="Actuator" />
    </node>
    <node concept="1TJgyi" id="7F_Aw2WoyKC" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245176360" />
      <property role="TrG5h" value="signal" />
      <ref role="AX2Wp" node="5FWo5E_M3KO" resolve="SIGNAL" />
    </node>
  </node>
  <node concept="1TIwiD" id="7F_Aw2Woxmg">
    <property role="EcuMT" value="8855653570245170576" />
    <property role="TrG5h" value="VariableAction" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" node="1$0OHqCrBq1" resolve="Action" />
  </node>
  <node concept="1TIwiD" id="7F_Aw2Woy1O">
    <property role="EcuMT" value="8855653570245173364" />
    <property role="TrG5h" value="Actuator" />
    <ref role="1TJDcQ" node="2vhhWxvXGji" resolve="Component" />
  </node>
  <node concept="1TIwiD" id="7F_Aw2Woyjj">
    <property role="EcuMT" value="8855653570245174483" />
    <property role="TrG5h" value="Sensor" />
    <ref role="1TJDcQ" node="2vhhWxvXGji" resolve="Component" />
  </node>
  <node concept="1TIwiD" id="7F_Aw2Woz2W">
    <property role="EcuMT" value="8855653570245177532" />
    <property role="TrG5h" value="VariableBooleanAction" />
    <ref role="1TJDcQ" node="3IkSfhjig_D" resolve="AssigneValueAction" />
    <node concept="1TJgyi" id="7F_Aw2Wozkr" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245178651" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyj" id="7F_Aw2WozoV" role="1TKVEi">
      <property role="IQ2ns" value="8855653570245178939" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMrp3" resolve="VariableBoolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="7F_Aw2WozHh">
    <property role="EcuMT" value="8855653570245180241" />
    <property role="TrG5h" value="VariableIntegerAction" />
    <ref role="1TJDcQ" node="3IkSfhjig_D" resolve="AssigneValueAction" />
    <node concept="1TJgyi" id="7F_Aw2WozZ$" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245181412" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="7F_Aw2Wo$8W" role="1TKVEi">
      <property role="IQ2ns" value="8855653570245182012" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMs0f" resolve="VariableInteger" />
    </node>
  </node>
  <node concept="25R3W" id="7F_Aw2Wo_36">
    <property role="3F6X1D" value="8855653570245185734" />
    <property role="TrG5h" value="UNARY_OPERATOR" />
    <node concept="25R33" id="7F_Aw2Wo_38" role="25R1y">
      <property role="3tVfz5" value="8855653570245185736" />
      <property role="TrG5h" value="NOT" />
    </node>
  </node>
  <node concept="25R3W" id="7F_Aw2Wo_3f">
    <property role="3F6X1D" value="8855653570245185743" />
    <property role="TrG5h" value="INTEGER_OPERATOR" />
    <node concept="25R33" id="7F_Aw2Wo_3g" role="25R1y">
      <property role="3tVfz5" value="8855653570245185744" />
      <property role="TrG5h" value="EQUALS" />
    </node>
    <node concept="25R33" id="7F_Aw2Wo_3h" role="25R1y">
      <property role="3tVfz5" value="8855653570245185745" />
      <property role="TrG5h" value="NOT_EQUALS" />
    </node>
    <node concept="25R33" id="7F_Aw2Wo_3k" role="25R1y">
      <property role="3tVfz5" value="8855653570245185748" />
      <property role="TrG5h" value="LESS" />
    </node>
    <node concept="25R33" id="7F_Aw2Wo_3o" role="25R1y">
      <property role="3tVfz5" value="8855653570245185752" />
      <property role="TrG5h" value="GREATER" />
    </node>
  </node>
  <node concept="25R3W" id="7F_Aw2Wo_3t">
    <property role="3F6X1D" value="8855653570245185757" />
    <property role="TrG5h" value="BOOLEAN_OPERATOR" />
    <node concept="25R33" id="7F_Aw2Wo_3u" role="25R1y">
      <property role="3tVfz5" value="8855653570245185758" />
      <property role="TrG5h" value="EQUALS" />
    </node>
    <node concept="25R33" id="7F_Aw2Wo_3v" role="25R1y">
      <property role="3tVfz5" value="8855653570245185759" />
      <property role="TrG5h" value="NOT_EQUALS" />
    </node>
  </node>
  <node concept="1TIwiD" id="7F_Aw2Wo_C7">
    <property role="EcuMT" value="8855653570245188103" />
    <property role="TrG5h" value="UnaryCondition" />
    <ref role="1TJDcQ" node="37xIJnMO5Mi" resolve="Condition" />
    <node concept="1TJgyi" id="7F_Aw2WoA1s" role="1TKVEl">
      <property role="IQ2nx" value="8855653570245189724" />
      <property role="TrG5h" value="operator" />
      <ref role="AX2Wp" node="7F_Aw2Wo_36" resolve="UNARY_OPERATOR" />
    </node>
    <node concept="1TJgyj" id="7F_Aw2Wp0xN" role="1TKVEi">
      <property role="IQ2ns" value="8855653570245298291" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="condition" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="37xIJnMO5Mi" resolve="Condition" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IkSfhjiacI">
    <property role="EcuMT" value="4293303684764836654" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="AssigneVariableAction" />
    <ref role="1TJDcQ" node="7F_Aw2Woxmg" resolve="VariableAction" />
  </node>
  <node concept="1TIwiD" id="3IkSfhjiaUF">
    <property role="EcuMT" value="4293303684764839595" />
    <property role="TrG5h" value="AssigneVariableIntegerAction" />
    <ref role="1TJDcQ" node="3IkSfhjiacI" resolve="AssigneVariableAction" />
    <node concept="1TJgyj" id="3IkSfhjibhQ" role="1TKVEi">
      <property role="IQ2ns" value="4293303684764841078" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMs0f" resolve="VariableInteger" />
    </node>
    <node concept="1TJgyj" id="3IkSfhjib$Y" role="1TKVEi">
      <property role="IQ2ns" value="4293303684764842302" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMs0f" resolve="VariableInteger" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IkSfhjibYB">
    <property role="EcuMT" value="4293303684764843943" />
    <property role="TrG5h" value="AssigneVariableBooleanAction" />
    <ref role="1TJDcQ" node="3IkSfhjiacI" resolve="AssigneVariableAction" />
    <node concept="1TJgyj" id="3IkSfhjicfG" role="1TKVEi">
      <property role="IQ2ns" value="4293303684764845036" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMrp3" resolve="VariableBoolean" />
    </node>
    <node concept="1TJgyj" id="3IkSfhjicsk" role="1TKVEi">
      <property role="IQ2ns" value="4293303684764845844" />
      <property role="20kJfa" value="value" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMrp3" resolve="VariableBoolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IkSfhjig_D">
    <property role="EcuMT" value="4293303684764862825" />
    <property role="R5$K7" value="true" />
    <property role="TrG5h" value="AssigneValueAction" />
    <ref role="1TJDcQ" node="7F_Aw2Woxmg" resolve="VariableAction" />
  </node>
  <node concept="1TIwiD" id="3IkSfhjmwyC">
    <property role="EcuMT" value="4293303684765976744" />
    <property role="TrG5h" value="PauseAction" />
    <ref role="1TJDcQ" node="1$0OHqCrBq1" resolve="Action" />
    <node concept="1TJgyi" id="3IkSfhjmwDX" role="1TKVEl">
      <property role="IQ2nx" value="4293303684765977213" />
      <property role="TrG5h" value="time" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
  </node>
  <node concept="1TIwiD" id="3IkSfhjoDeF">
    <property role="EcuMT" value="4293303684766536619" />
    <property role="TrG5h" value="AssigneSensorAction" />
    <ref role="1TJDcQ" node="7F_Aw2Woxmg" resolve="VariableAction" />
    <node concept="1TJgyj" id="3IkSfhjoDtl" role="1TKVEi">
      <property role="IQ2ns" value="4293303684766537557" />
      <property role="20kJfa" value="variable" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="51jKDoWMs0f" resolve="VariableInteger" />
    </node>
    <node concept="1TJgyj" id="3IkSfhjoDF_" role="1TKVEi">
      <property role="IQ2ns" value="4293303684766538469" />
      <property role="20kJfa" value="sensor" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="7F_Aw2Woyjj" resolve="Sensor" />
    </node>
  </node>
</model>

