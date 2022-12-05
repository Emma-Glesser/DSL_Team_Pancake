<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7e06104a-3077-434f-85a9-54d0b125e8fd(V.E.A.F.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4tdy" ref="r:79efd526-4965-4b82-846b-97823ace55e0(V.E.A.F.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="37xIJnMJxDk">
    <ref role="1XX52x" to="4tdy:2vhhWxvXBB8" resolve="VEAF" />
    <node concept="3EZMnI" id="37xIJnMJxPW" role="2wV5jI">
      <node concept="3F0ifn" id="37xIJnMJxWX" role="3EZMnx">
        <property role="3F0ifm" value="Program" />
      </node>
      <node concept="3F0A7n" id="37xIJnMJy39" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="37xIJnMJRht" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3EZMnI" id="37xIJnMJV7t" role="3EZMnx">
        <node concept="VPM3Z" id="37xIJnMJV7v" role="3F10Kt" />
        <node concept="3F2HdR" id="51jKDoWKoQG" role="3EZMnx">
          <ref role="1NtTu8" to="4tdy:5FWo5E_M1ZA" resolve="variables" />
          <node concept="2iRkQZ" id="51jKDoWKoQJ" role="2czzBx" />
          <node concept="VPM3Z" id="51jKDoWKoQK" role="3F10Kt" />
        </node>
        <node concept="3F2HdR" id="51jKDoWKpp8" role="3EZMnx">
          <ref role="1NtTu8" to="4tdy:2vhhWxvXEh9" resolve="components" />
          <node concept="2iRkQZ" id="51jKDoWKppb" role="2czzBx" />
          <node concept="VPM3Z" id="51jKDoWKppc" role="3F10Kt" />
        </node>
        <node concept="3F2HdR" id="51jKDoWKqtA" role="3EZMnx">
          <ref role="1NtTu8" to="4tdy:2vhhWxvXE_T" resolve="states" />
          <node concept="2iRkQZ" id="51jKDoWKqtD" role="2czzBx" />
          <node concept="VPM3Z" id="51jKDoWKqtE" role="3F10Kt" />
        </node>
        <node concept="2iRkQZ" id="37xIJnMJV7y" role="2iSdaV" />
        <node concept="pVoyu" id="37xIJnMJVvx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="37xIJnMJVAu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="37xIJnMJxPZ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMJYeW">
    <ref role="1XX52x" to="4tdy:2vhhWxvXGji" resolve="Component" />
    <node concept="3EZMnI" id="37xIJnMJYr$" role="2wV5jI">
      <node concept="3F0ifn" id="37xIJnMJYyC" role="3EZMnx">
        <property role="3F0ifm" value="component" />
      </node>
      <node concept="3F0A7n" id="37xIJnMJYBA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="37xIJnMJYJ7" role="3EZMnx">
        <property role="3F0ifm" value="on pin" />
      </node>
      <node concept="3F0A7n" id="37xIJnMJYNl" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:2vhhWxvXHNh" resolve="pin" />
      </node>
      <node concept="3F0ifn" id="37xIJnMKOwO" role="3EZMnx">
        <property role="3F0ifm" value=" is Input" />
      </node>
      <node concept="3F0A7n" id="37xIJnMKO_w" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMKNL2" resolve="isInput" />
      </node>
      <node concept="l2Vlx" id="37xIJnMJYrB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMJYY0">
    <ref role="1XX52x" to="4tdy:2vhhWxvXGNp" resolve="State" />
    <node concept="3EZMnI" id="37xIJnMJZxU" role="2wV5jI">
      <node concept="3F0ifn" id="37xIJnMJZyP" role="3EZMnx">
        <property role="3F0ifm" value="state" />
      </node>
      <node concept="3F0A7n" id="37xIJnMJZFt" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="37xIJnMK1S3" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3EZMnI" id="37xIJnMK2QI" role="3EZMnx">
        <node concept="2iRkQZ" id="37xIJnMK2QJ" role="2iSdaV" />
        <node concept="3EZMnI" id="37xIJnMK2C_" role="3EZMnx">
          <node concept="VPM3Z" id="37xIJnMK2CB" role="3F10Kt" />
          <node concept="3F0ifn" id="37xIJnMK3mO" role="3EZMnx">
            <property role="3F0ifm" value="is Initial -&gt;" />
          </node>
          <node concept="3F0A7n" id="37xIJnMK3sA" role="3EZMnx">
            <ref role="1NtTu8" to="4tdy:1$0OHqCrBa5" resolve="isInitial" />
          </node>
          <node concept="l2Vlx" id="37xIJnMK2CE" role="2iSdaV" />
          <node concept="pVoyu" id="37xIJnMK2HF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="37xIJnMK3$w" role="3EZMnx">
          <ref role="1NtTu8" to="4tdy:2vhhWxvXI$$" resolve="actions" />
          <node concept="2iRkQZ" id="37xIJnMK3$y" role="2czzBx" />
        </node>
        <node concept="3F2HdR" id="37xIJnMK3Qb" role="3EZMnx">
          <ref role="1NtTu8" to="4tdy:1$0OHqCrBj3" resolve="event" />
          <node concept="2iRkQZ" id="37xIJnMK3Qd" role="2czzBx" />
        </node>
        <node concept="pVoyu" id="37xIJnMK2Wj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="37xIJnMK30N" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="37xIJnMJZxX" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMKrN8">
    <ref role="1XX52x" to="4tdy:1$0OHqCrBq1" resolve="Action" />
    <node concept="3EZMnI" id="37xIJnMKrUS" role="2wV5jI">
      <node concept="l2Vlx" id="37xIJnMKrUV" role="2iSdaV" />
      <node concept="1iCGBv" id="37xIJnMKsx0" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:1$0OHqCrBMs" resolve="target" />
        <node concept="1sVBvm" id="37xIJnMKsx1" role="1sWHZn">
          <node concept="3F0A7n" id="37xIJnMKs$K" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="37xIJnMKsHw" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="37xIJnMKsMa" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:5FWo5E_M3Ja" resolve="signal" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMKAif">
    <ref role="1XX52x" to="4tdy:5FWo5E_M3Uf" resolve="Event" />
    <node concept="3EZMnI" id="37xIJnMKAnz" role="2wV5jI">
      <node concept="3F0ifn" id="37xIJnMKAND" role="3EZMnx">
        <property role="3F0ifm" value="next is" />
      </node>
      <node concept="1iCGBv" id="37xIJnMKAqU" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:5FWo5E_M41Y" resolve="nextState" />
        <node concept="1sVBvm" id="37xIJnMKAqW" role="1sWHZn">
          <node concept="3F0A7n" id="37xIJnMKAx9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="37xIJnMKBnT" role="3EZMnx">
        <property role="3F0ifm" value="when" />
      </node>
      <node concept="3F0ifn" id="37xIJnMOej0" role="3EZMnx">
        <property role="3F0ifm" value="{" />
      </node>
      <node concept="3F1sOY" id="37xIJnMOetR" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMOcS4" resolve="condition" />
      </node>
      <node concept="3F0ifn" id="37xIJnMOeyd" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="37xIJnMKAnA" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMOySa">
    <ref role="1XX52x" to="4tdy:37xIJnMO7xA" resolve="ComponentCondition" />
    <node concept="3EZMnI" id="37xIJnMOz1F" role="2wV5jI">
      <node concept="1iCGBv" id="37xIJnMOz6E" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMO7KM" resolve="component" />
        <node concept="1sVBvm" id="37xIJnMOz6G" role="1sWHZn">
          <node concept="3F0A7n" id="37xIJnMOzc5" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="37xIJnMOzh5" role="3EZMnx">
        <property role="3F0ifm" value="is " />
      </node>
      <node concept="3F0A7n" id="37xIJnMOzm9" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMO8aP" resolve="expected" />
      </node>
      <node concept="l2Vlx" id="37xIJnMOz1I" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="37xIJnMOLvA">
    <ref role="1XX52x" to="4tdy:37xIJnMO9SA" resolve="MultipleCondition" />
    <node concept="3EZMnI" id="37xIJnMOLDg" role="2wV5jI">
      <node concept="3F0ifn" id="37xIJnMOM1H" role="3EZMnx">
        <property role="3F0ifm" value="(" />
      </node>
      <node concept="3F1sOY" id="37xIJnMOLGB" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMOvhA" resolve="left" />
      </node>
      <node concept="3F0A7n" id="37xIJnMOLPf" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMOacg" resolve="operator" />
      </node>
      <node concept="3F1sOY" id="37xIJnMOLUf" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:37xIJnMOvyI" resolve="right" />
      </node>
      <node concept="3F0ifn" id="37xIJnMOM4l" role="3EZMnx">
        <property role="3F0ifm" value=")" />
      </node>
      <node concept="l2Vlx" id="37xIJnMOLDj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMti_">
    <ref role="1XX52x" to="4tdy:51jKDoWMrp3" resolve="VariableBoolean" />
    <node concept="3EZMnI" id="51jKDoWMtmO" role="2wV5jI">
      <node concept="3F0ifn" id="51jKDoWMtwh" role="3EZMnx">
        <property role="3F0ifm" value="boolean variable" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMt$1" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="51jKDoWMtAZ" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMtEN" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMrMN" resolve="value" />
      </node>
      <node concept="l2Vlx" id="51jKDoWMtmR" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMubp">
    <ref role="1XX52x" to="4tdy:51jKDoWMs0f" resolve="VariableInteger" />
    <node concept="3EZMnI" id="51jKDoWMufe" role="2wV5jI">
      <node concept="3F0ifn" id="51jKDoWMuff" role="3EZMnx">
        <property role="3F0ifm" value="integer variable" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMufg" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="51jKDoWMufh" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMufi" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMskH" resolve="value" />
      </node>
      <node concept="l2Vlx" id="51jKDoWMufj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMuig">
    <ref role="1XX52x" to="4tdy:51jKDoWMstF" resolve="VariableString" />
    <node concept="3EZMnI" id="51jKDoWMukt" role="2wV5jI">
      <node concept="3F0ifn" id="51jKDoWMuku" role="3EZMnx">
        <property role="3F0ifm" value="string variable" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMukv" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="51jKDoWMukw" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMukx" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMsDB" resolve="value" />
      </node>
      <node concept="l2Vlx" id="51jKDoWMuky" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMRa$">
    <ref role="1XX52x" to="4tdy:51jKDoWMPp4" resolve="VariableBooleanCondition" />
    <node concept="3EZMnI" id="37xIJnMOxG1" role="2wV5jI">
      <node concept="1iCGBv" id="37xIJnMOxOE" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMREY" resolve="variable" />
        <node concept="1sVBvm" id="37xIJnMOxOG" role="1sWHZn">
          <node concept="3F0A7n" id="37xIJnMOxUv" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="37xIJnMOxZv" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="37xIJnMOy4X" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMPOs" resolve="expected" />
      </node>
      <node concept="l2Vlx" id="37xIJnMOxG4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMRi$">
    <ref role="1XX52x" to="4tdy:51jKDoWMOQm" resolve="VariableIntegerCondition" />
    <node concept="3EZMnI" id="51jKDoWMRkC" role="2wV5jI">
      <node concept="1iCGBv" id="51jKDoWMRkD" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMRXi" resolve="variable" />
        <node concept="1sVBvm" id="51jKDoWMRkE" role="1sWHZn">
          <node concept="3F0A7n" id="51jKDoWMRkF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="51jKDoWMRkG" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMRkH" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMP8M" resolve="expected" />
      </node>
      <node concept="l2Vlx" id="51jKDoWMRkI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="51jKDoWMRpt">
    <ref role="1XX52x" to="4tdy:51jKDoWMQ3V" resolve="VariableStringCondition" />
    <node concept="3EZMnI" id="51jKDoWMRr7" role="2wV5jI">
      <node concept="1iCGBv" id="51jKDoWMRr8" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMSqY" resolve="variable" />
        <node concept="1sVBvm" id="51jKDoWMRr9" role="1sWHZn">
          <node concept="3F0A7n" id="51jKDoWMRra" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="51jKDoWMRrb" role="3EZMnx">
        <property role="3F0ifm" value="is" />
      </node>
      <node concept="3F0A7n" id="51jKDoWMRrc" role="3EZMnx">
        <ref role="1NtTu8" to="4tdy:51jKDoWMQw7" resolve="expected" />
      </node>
      <node concept="l2Vlx" id="51jKDoWMRrd" role="2iSdaV" />
    </node>
  </node>
</model>

