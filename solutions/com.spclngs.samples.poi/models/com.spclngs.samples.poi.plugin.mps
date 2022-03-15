<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fdbea893-cc7b-4779-bc18-b7ef1bb63a15(com.spclngs.samples.poi.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="m1hb" ref="5d546c53-61eb-4af3-b73e-6a854d2d76e9/java:org.apache.poi.xwpf.usermodel(org.apache.poi/)" />
    <import index="f2k0" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.lang(MPS.IDEA/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="b0pz" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project.facets(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="ekwn" ref="r:9832fb5f-2578-4b58-8014-a5de79da988e(jetbrains.mps.ide.editor.actions)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" implicit="true" />
    <import index="parh" ref="5d546c53-61eb-4af3-b73e-6a854d2d76e9/java:org.apache.poi.ooxml(org.apache.poi/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916832286" name="jetbrains.mps.baseLanguage.structure.ResourceVariable" flags="ng" index="3J1hQo" />
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
        <child id="5351203823916750334" name="resource" index="3J1_TS" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="446c26eb-2b7b-4bf0-9b35-f83fa582753e" name="jetbrains.mps.lang.modelapi">
      <concept id="361130699826193249" name="jetbrains.mps.lang.modelapi.structure.ModulePointer" flags="ng" index="1dCxOk">
        <property id="1863527487546097500" name="moduleId" index="1XweGW" />
        <property id="1863527487545993577" name="moduleName" index="1XxBO9" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1678062499342629858" name="jetbrains.mps.lang.smodel.structure.ModuleRefExpression" flags="ng" index="37shsh">
        <child id="1678062499342629861" name="moduleId" index="37shsm" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
        <property id="6328114375520539781" name="url" index="1X82VU" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="sE7Ow" id="28bpG9VY3F6">
    <property role="TrG5h" value="WriteDocxFile" />
    <property role="2uzpH1" value="Write a .docx File" />
    <node concept="1DS2jV" id="4DOiaOexrlB" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="4DOiaOexrlC" role="1oa70y" />
    </node>
    <node concept="tnohg" id="28bpG9VY3F7" role="tncku">
      <node concept="3clFbS" id="28bpG9VY3F8" role="2VODD2">
        <node concept="3clFbF" id="4DOiaOexvrB" role="3cqZAp">
          <node concept="2YIFZM" id="4DOiaOexvse" role="3clFbG">
            <ref role="37wK5l" node="4DOiaOewzQ0" resolve="writeDocxFile" />
            <ref role="1Pybhc" node="4DOiaOewxHE" resolve="WriteDocxFileViaCustomClassLoader" />
            <node concept="2ShNRf" id="4DOiaOexvsL" role="37wK5m">
              <node concept="1pGfFk" id="4DOiaOexw9w" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.io.File,java.lang.String)" resolve="File" />
                <node concept="2OqwBi" id="4DOiaOexwLJ" role="37wK5m">
                  <node concept="2OqwBi" id="4DOiaOexwab" role="2Oq$k0">
                    <node concept="2WthIp" id="4DOiaOexwae" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4DOiaOexwag" role="2OqNvi">
                      <ref role="2WH_rO" node="4DOiaOexrlB" resolve="mpsProject" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4DOiaOexxoX" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProjectFile()" resolve="getProjectFile" />
                  </node>
                </node>
                <node concept="Xl_RD" id="4DOiaOexxtG" role="37wK5m">
                  <property role="Xl_RC" value="hello-world.docx" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="28bpG9VY3Fp">
    <property role="TrG5h" value="WriteDocxFile" />
    <node concept="2YIFZL" id="28bpG9VY911" role="jymVt">
      <property role="TrG5h" value="writeDocxFile" />
      <node concept="3clFbS" id="28bpG9VY914" role="3clF47">
        <node concept="3SKdUt" id="28bpG9VZhEU" role="3cqZAp">
          <node concept="1PaTwC" id="28bpG9VZhEV" role="1aUNEU">
            <node concept="3oM_SD" id="28bpG9VZi5v" role="1PaTwD">
              <property role="3oM_SC" value="Code" />
            </node>
            <node concept="3oM_SD" id="28bpG9VZi5x" role="1PaTwD">
              <property role="3oM_SC" value="from" />
            </node>
            <node concept="3oM_SD" id="28bpG9VZiyM" role="1PaTwD">
              <property role="3oM_SC" value="https://svn.apache.org/repos/asf/poi/trunk/poi-examples/src/main/java/org/apache/poi/examples/xwpf/usermodel/SimpleDocument.java" />
              <property role="1X82VU" value="https://svn.apache.org/repos/asf/poi/trunk/poi-examples/src/main/java/org/apache/poi/examples/xwpf/usermodel/SimpleDocument.java" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="28bpG9VYRKC" role="3cqZAp">
          <node concept="3clFbS" id="28bpG9VYRHF" role="1zxBo7">
            <node concept="3cpWs8" id="28bpG9VYRHH" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRHG" role="3cpWs9">
                <property role="TrG5h" value="p1" />
                <node concept="3uibUv" id="28bpG9VYRHI" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFParagraph" resolve="XWPFParagraph" />
                </node>
                <node concept="2OqwBi" id="28bpG9VZ5W1" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VZ4xz" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VZ1fH" resolve="doc" />
                  </node>
                  <node concept="liA8E" id="28bpG9VZ5W2" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFDocument.createParagraph()" resolve="createParagraph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHK" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSKI" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS8S" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYSKJ" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setAlignment(org.apache.poi.xwpf.usermodel.ParagraphAlignment)" resolve="setAlignment" />
                  <node concept="Rm8GO" id="28bpG9VYSKK" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~ParagraphAlignment" resolve="ParagraphAlignment" />
                    <ref role="Rm8GQ" to="m1hb:~ParagraphAlignment.CENTER" resolve="CENTER" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHN" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSGe" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS7E" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYSGf" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderBottom(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderBottom" />
                  <node concept="Rm8GO" id="28bpG9VYSGg" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHQ" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSU5" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS8c" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYSU6" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderTop(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderTop" />
                  <node concept="Rm8GO" id="28bpG9VYSU7" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHT" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYVZV" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS6A" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYVZW" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderRight(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderRight" />
                  <node concept="Rm8GO" id="28bpG9VYVZX" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHW" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTRg" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYScQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYTRh" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderLeft(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderLeft" />
                  <node concept="Rm8GO" id="28bpG9VYTRi" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRHZ" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYY3P" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS7k" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYY3Q" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderBetween(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderBetween" />
                  <node concept="Rm8GO" id="28bpG9VYY3R" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.SINGLE" resolve="SINGLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRI2" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYUqa" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS7Y" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                </node>
                <node concept="liA8E" id="28bpG9VYUqb" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setVerticalAlignment(org.apache.poi.xwpf.usermodel.TextAlignment)" resolve="setVerticalAlignment" />
                  <node concept="Rm8GO" id="28bpG9VZ270" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~TextAlignment" resolve="TextAlignment" />
                    <ref role="Rm8GQ" to="m1hb:~TextAlignment.TOP" resolve="TOP" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRI6" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRI5" role="3cpWs9">
                <property role="TrG5h" value="r1" />
                <node concept="3uibUv" id="28bpG9VYRI7" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFRun" resolve="XWPFRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYZlf" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYS9c" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRHG" resolve="p1" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYZlg" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.createRun()" resolve="createRun" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRI9" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYXvV" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS9U" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VYXvW" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setBold(boolean)" resolve="setBold" />
                  <node concept="3clFbT" id="28bpG9VYXvX" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIc" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYXJ7" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSbk" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VYXJ8" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYXJ9" role="37wK5m">
                    <property role="Xl_RC" value="The quick brown fox" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIf" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSCE" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS5Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VYSCF" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setBold(boolean)" resolve="setBold" />
                  <node concept="3clFbT" id="28bpG9VYSCG" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIi" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VZ0wq" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS6a" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VZ0wr" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setFontFamily(java.lang.String)" resolve="setFontFamily" />
                  <node concept="Xl_RD" id="28bpG9VZ0ws" role="37wK5m">
                    <property role="Xl_RC" value="Courier" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIl" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTJh" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS4Q" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VYTJi" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setUnderline(org.apache.poi.xwpf.usermodel.UnderlinePatterns)" resolve="setUnderline" />
                  <node concept="Rm8GO" id="28bpG9VYTJj" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~UnderlinePatterns" resolve="UnderlinePatterns" />
                    <ref role="Rm8GQ" to="m1hb:~UnderlinePatterns.DOT_DOT_DASH" resolve="DOT_DOT_DASH" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIo" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYXhj" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS6K" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRI5" resolve="r1" />
                </node>
                <node concept="liA8E" id="28bpG9VYXhk" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setTextPosition(int)" resolve="setTextPosition" />
                  <node concept="3cmrfG" id="28bpG9VYXhl" role="37wK5m">
                    <property role="3cmrfH" value="100" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRIs" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRIr" role="3cpWs9">
                <property role="TrG5h" value="p2" />
                <node concept="3uibUv" id="28bpG9VYRIt" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFParagraph" resolve="XWPFParagraph" />
                </node>
                <node concept="2OqwBi" id="28bpG9VZ516" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VZ4xF" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VZ1fH" resolve="doc" />
                  </node>
                  <node concept="liA8E" id="28bpG9VZ517" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFDocument.createParagraph()" resolve="createParagraph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIv" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYUzY" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSd0" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VYUzZ" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setAlignment(org.apache.poi.xwpf.usermodel.ParagraphAlignment)" resolve="setAlignment" />
                  <node concept="Rm8GO" id="28bpG9VYU$0" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~ParagraphAlignment" resolve="ParagraphAlignment" />
                    <ref role="Rm8GQ" to="m1hb:~ParagraphAlignment.RIGHT" resolve="RIGHT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIy" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTqI" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS9k" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VYTqJ" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderBottom(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderBottom" />
                  <node concept="Rm8GO" id="28bpG9VZ26W" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRI_" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYU04" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSbS" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VYU05" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderTop(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderTop" />
                  <node concept="Rm8GO" id="28bpG9VYU06" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIC" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYT9_" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS5a" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VYT9A" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderRight(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderRight" />
                  <node concept="Rm8GO" id="28bpG9VZ26S" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIF" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VZ0N9" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS8I" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VZ0Na" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderLeft(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderLeft" />
                  <node concept="Rm8GO" id="28bpG9VZ0Nb" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.DOUBLE" resolve="DOUBLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRII" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYWcZ" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS4q" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                </node>
                <node concept="liA8E" id="28bpG9VYWd0" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setBorderBetween(org.apache.poi.xwpf.usermodel.Borders)" resolve="setBorderBetween" />
                  <node concept="Rm8GO" id="28bpG9VYWd1" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~Borders" resolve="Borders" />
                    <ref role="Rm8GQ" to="m1hb:~Borders.SINGLE" resolve="SINGLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRIM" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRIL" role="3cpWs9">
                <property role="TrG5h" value="r2" />
                <node concept="3uibUv" id="28bpG9VYRIN" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFRun" resolve="XWPFRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYVBt" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYSa8" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYVBu" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.createRun()" resolve="createRun" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIP" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYS_A" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSaG" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIL" resolve="r2" />
                </node>
                <node concept="liA8E" id="28bpG9VYS_B" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYS_C" role="37wK5m">
                    <property role="Xl_RC" value="jumped over the lazy dog" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIS" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSZq" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYScc" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIL" resolve="r2" />
                </node>
                <node concept="liA8E" id="28bpG9VYSZr" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setStrikeThrough(boolean)" resolve="setStrikeThrough" />
                  <node concept="3clFbT" id="28bpG9VYSZs" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRIV" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYWP2" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSba" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIL" resolve="r2" />
                </node>
                <node concept="liA8E" id="28bpG9VYWP3" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setFontSize(int)" resolve="setFontSize" />
                  <node concept="3cmrfG" id="28bpG9VYWP4" role="37wK5m">
                    <property role="3cmrfH" value="20" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRIZ" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRIY" role="3cpWs9">
                <property role="TrG5h" value="r3" />
                <node concept="3uibUv" id="28bpG9VYRJ0" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFRun" resolve="XWPFRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYWBo" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYS9C" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYWBp" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.createRun()" resolve="createRun" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJ2" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSPz" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSaq" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIY" resolve="r3" />
                </node>
                <node concept="liA8E" id="28bpG9VYSP$" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYSP_" role="37wK5m">
                    <property role="Xl_RC" value="and went away" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJ5" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYU8_" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS92" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIY" resolve="r3" />
                </node>
                <node concept="liA8E" id="28bpG9VYU8A" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setStrikeThrough(boolean)" resolve="setStrikeThrough" />
                  <node concept="3clFbT" id="28bpG9VYU8B" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJ8" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYT4u" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS60" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIY" resolve="r3" />
                </node>
                <node concept="liA8E" id="28bpG9VYT4v" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setFontSize(int)" resolve="setFontSize" />
                  <node concept="3cmrfG" id="28bpG9VYT4w" role="37wK5m">
                    <property role="3cmrfH" value="20" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJb" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTxv" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS5k" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRIY" resolve="r3" />
                </node>
                <node concept="liA8E" id="28bpG9VYTxw" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setSubscript(org.apache.poi.xwpf.usermodel.VerticalAlign)" resolve="setSubscript" />
                  <node concept="Rm8GO" id="28bpG9VYTxx" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~VerticalAlign" resolve="VerticalAlign" />
                    <ref role="Rm8GQ" to="m1hb:~VerticalAlign.SUPERSCRIPT" resolve="SUPERSCRIPT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRJf" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRJe" role="3cpWs9">
                <property role="TrG5h" value="hyperlink" />
                <node concept="3uibUv" id="28bpG9VYRJg" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFHyperlinkRun" resolve="XWPFHyperlinkRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYVs3" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYS7u" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRIr" resolve="p2" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYVs4" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.insertNewHyperlinkRun(int,java.lang.String)" resolve="insertNewHyperlinkRun" />
                    <node concept="3cmrfG" id="28bpG9VYVs5" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="Xl_RD" id="28bpG9VYVs6" role="37wK5m">
                      <property role="Xl_RC" value="http://poi.apache.org/" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJk" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYYzt" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSaQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJe" resolve="hyperlink" />
                </node>
                <node concept="liA8E" id="28bpG9VYYzu" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setUnderline(org.apache.poi.xwpf.usermodel.UnderlinePatterns)" resolve="setUnderline" />
                  <node concept="Rm8GO" id="28bpG9VYYzv" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~UnderlinePatterns" resolve="UnderlinePatterns" />
                    <ref role="Rm8GQ" to="m1hb:~UnderlinePatterns.SINGLE" resolve="SINGLE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJn" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSvk" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS9K" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJe" resolve="hyperlink" />
                </node>
                <node concept="liA8E" id="28bpG9VYSvl" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setColor(java.lang.String)" resolve="setColor" />
                  <node concept="Xl_RD" id="28bpG9VYSvm" role="37wK5m">
                    <property role="Xl_RC" value="0000ff" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJq" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYUhv" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSag" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJe" resolve="hyperlink" />
                </node>
                <node concept="liA8E" id="28bpG9VYUhw" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYUhx" role="37wK5m">
                    <property role="Xl_RC" value="Apache POI" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRJu" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRJt" role="3cpWs9">
                <property role="TrG5h" value="p3" />
                <node concept="3uibUv" id="28bpG9VYRJv" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFParagraph" resolve="XWPFParagraph" />
                </node>
                <node concept="2OqwBi" id="28bpG9VZ6gE" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VZ4xN" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VZ1fH" resolve="doc" />
                  </node>
                  <node concept="liA8E" id="28bpG9VZ6gF" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFDocument.createParagraph()" resolve="createParagraph" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJx" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYVhi" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSbu" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                </node>
                <node concept="liA8E" id="28bpG9VYVhj" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setWordWrapped(boolean)" resolve="setWordWrapped" />
                  <node concept="3clFbT" id="28bpG9VYVhk" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJ$" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYZ3W" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS4g" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                </node>
                <node concept="liA8E" id="28bpG9VYZ3X" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setPageBreak(boolean)" resolve="setPageBreak" />
                  <node concept="3clFbT" id="28bpG9VYZ3Y" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJB" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYWq1" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS7O" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                </node>
                <node concept="liA8E" id="28bpG9VYWq2" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setAlignment(org.apache.poi.xwpf.usermodel.ParagraphAlignment)" resolve="setAlignment" />
                  <node concept="Rm8GO" id="28bpG9VYWq3" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~ParagraphAlignment" resolve="ParagraphAlignment" />
                    <ref role="Rm8GQ" to="m1hb:~ParagraphAlignment.BOTH" resolve="BOTH" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJE" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYZSb" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS8m" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                </node>
                <node concept="liA8E" id="28bpG9VYZSc" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setSpacingBetween(double,org.apache.poi.xwpf.usermodel.LineSpacingRule)" resolve="setSpacingBetween" />
                  <node concept="3cmrfG" id="28bpG9VYZSd" role="37wK5m">
                    <property role="3cmrfH" value="15" />
                  </node>
                  <node concept="Rm8GO" id="28bpG9VYZSe" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~LineSpacingRule" resolve="LineSpacingRule" />
                    <ref role="Rm8GQ" to="m1hb:~LineSpacingRule.EXACT" resolve="EXACT" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJI" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYYN_" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS6s" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                </node>
                <node concept="liA8E" id="28bpG9VYYNA" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFParagraph.setIndentationFirstLine(int)" resolve="setIndentationFirstLine" />
                  <node concept="3cmrfG" id="28bpG9VYYNB" role="37wK5m">
                    <property role="3cmrfH" value="600" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRJM" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRJL" role="3cpWs9">
                <property role="TrG5h" value="r4" />
                <node concept="3uibUv" id="28bpG9VYRJN" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFRun" resolve="XWPFRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYYjQ" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYSbG" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYYjR" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.createRun()" resolve="createRun" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJP" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTft" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSc$" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJL" resolve="r4" />
                </node>
                <node concept="liA8E" id="28bpG9VYTfu" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setTextPosition(int)" resolve="setTextPosition" />
                  <node concept="3cmrfG" id="28bpG9VYTfv" role="37wK5m">
                    <property role="3cmrfH" value="20" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJS" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTCx" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS5G" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJL" resolve="r4" />
                </node>
                <node concept="liA8E" id="28bpG9VYTCy" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYTCz" role="37wK5m">
                    <property role="Xl_RC" value="To be, or not to be: that is the question: Whether 'tis nobler in the mind to suffer The slings and arrows of outrageous fortune, Or to take arms against a sea of troubles, And by opposing end them? To die: to sleep; " />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJV" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYTkR" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS4$" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJL" resolve="r4" />
                </node>
                <node concept="liA8E" id="28bpG9VYTkS" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.addBreak(org.apache.poi.xwpf.usermodel.BreakType)" resolve="addBreak" />
                  <node concept="Rm8GO" id="28bpG9VYTkT" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~BreakType" resolve="BreakType" />
                    <ref role="Rm8GQ" to="m1hb:~BreakType.PAGE" resolve="PAGE" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRJY" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYUHV" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS50" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJL" resolve="r4" />
                </node>
                <node concept="liA8E" id="28bpG9VYUHW" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYUHX" role="37wK5m">
                    <property role="Xl_RC" value="No more; and by a sleep to say we end The heart-ache and the thousand natural shocks That flesh is heir to, 'tis a consummation Devoutly to be wish'd. To die, to sleep; To sleep: perchance to dream: ay, there's the rub; ......." />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRK1" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYZAA" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYScm" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRJL" resolve="r4" />
                </node>
                <node concept="liA8E" id="28bpG9VYZAB" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setItalic(boolean)" resolve="setItalic" />
                  <node concept="3clFbT" id="28bpG9VYZAC" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="28bpG9VYRK5" role="3cqZAp">
              <node concept="3cpWsn" id="28bpG9VYRK4" role="3cpWs9">
                <property role="TrG5h" value="r5" />
                <node concept="3uibUv" id="28bpG9VYRK6" role="1tU5fm">
                  <ref role="3uigEE" to="m1hb:~XWPFRun" resolve="XWPFRun" />
                </node>
                <node concept="2OqwBi" id="28bpG9VYSwL" role="33vP2m">
                  <node concept="37vLTw" id="28bpG9VYS6k" role="2Oq$k0">
                    <ref role="3cqZAo" node="28bpG9VYRJt" resolve="p3" />
                  </node>
                  <node concept="liA8E" id="28bpG9VYSwM" role="2OqNvi">
                    <ref role="37wK5l" to="m1hb:~XWPFParagraph.createRun()" resolve="createRun" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRK8" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYURr" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS8y" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYURs" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setTextPosition(int)" resolve="setTextPosition" />
                  <node concept="1ZRNhn" id="28bpG9VYURt" role="37wK5m">
                    <node concept="3cmrfG" id="28bpG9VYURu" role="2$L3a6">
                      <property role="3cmrfH" value="10" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKc" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYV7a" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS6U" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYV7b" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYV7c" role="37wK5m">
                    <property role="Xl_RC" value="For in that sleep of death what dreams may come" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKf" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYX30" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSa$" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYX31" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.addCarriageReturn()" resolve="addCarriageReturn" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKh" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VZ0e1" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSb0" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VZ0e2" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VZ0e3" role="37wK5m">
                    <property role="Xl_RC" value="When we have shuffled off this mortal coil, Must give us pause: there's the respect That makes calamity of so long life;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKk" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VZ16c" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYScI" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VZ16d" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.addBreak()" resolve="addBreak" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKm" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSzw" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS9u" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYSzx" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYSzy" role="37wK5m">
                    <property role="Xl_RC" value="For who would bear the whips and scorns of time, The oppressor's wrong, the proud man's contumely," />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKp" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYVNH" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYSc2" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYVNI" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.addBreak(org.apache.poi.xwpf.usermodel.BreakClear)" resolve="addBreak" />
                  <node concept="Rm8GO" id="28bpG9VYVNJ" role="37wK5m">
                    <ref role="1Px2BO" to="m1hb:~BreakClear" resolve="BreakClear" />
                    <ref role="Rm8GQ" to="m1hb:~BreakClear.ALL" resolve="ALL" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="28bpG9VYRKs" role="3cqZAp">
              <node concept="2OqwBi" id="28bpG9VYSxZ" role="3clFbG">
                <node concept="37vLTw" id="28bpG9VYS5u" role="2Oq$k0">
                  <ref role="3cqZAo" node="28bpG9VYRK4" resolve="r5" />
                </node>
                <node concept="liA8E" id="28bpG9VYSy0" role="2OqNvi">
                  <ref role="37wK5l" to="m1hb:~XWPFRun.setText(java.lang.String)" resolve="setText" />
                  <node concept="Xl_RD" id="28bpG9VYSy1" role="37wK5m">
                    <property role="Xl_RC" value="The pangs of despised love, the law's delay, The insolence of office and the spurns ......." />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="28bpG9VZiDS" role="3cqZAp" />
            <node concept="3J1_TO" id="28bpG9VYRKA" role="3cqZAp">
              <node concept="3clFbS" id="28bpG9VYRKw" role="1zxBo7">
                <node concept="3clFbF" id="28bpG9VYRKx" role="3cqZAp">
                  <node concept="2OqwBi" id="28bpG9VZ5u8" role="3clFbG">
                    <node concept="37vLTw" id="28bpG9VZ4xV" role="2Oq$k0">
                      <ref role="3cqZAo" node="28bpG9VZ1fH" resolve="doc" />
                    </node>
                    <node concept="liA8E" id="28bpG9VZ5u9" role="2OqNvi">
                      <ref role="37wK5l" to="parh:~POIXMLDocument.write(java.io.OutputStream)" resolve="write" />
                      <node concept="37vLTw" id="28bpG9VZ5ua" role="37wK5m">
                        <ref role="3cqZAo" node="28bpG9VZjG4" resolve="out" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3J1hQo" id="28bpG9VZjG4" role="3J1_TS">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="out" />
                <node concept="3uibUv" id="28bpG9VZlbR" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~FileOutputStream" resolve="FileOutputStream" />
                </node>
                <node concept="2ShNRf" id="4DOiaOewrx4" role="33vP2m">
                  <node concept="1pGfFk" id="4DOiaOewrNI" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~FileOutputStream.&lt;init&gt;(java.io.File)" resolve="FileOutputStream" />
                    <node concept="37vLTw" id="4DOiaOewrPp" role="37wK5m">
                      <ref role="3cqZAo" node="28bpG9VY9n6" resolve="outputFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3J1hQo" id="28bpG9VZ1fH" role="3J1_TS">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="doc" />
            <node concept="3uibUv" id="28bpG9VZ3dX" role="1tU5fm">
              <ref role="3uigEE" to="m1hb:~XWPFDocument" resolve="XWPFDocument" />
            </node>
            <node concept="2ShNRf" id="4DOiaOevRly" role="33vP2m">
              <node concept="1pGfFk" id="4DOiaOewqMF" role="2ShVmc">
                <ref role="37wK5l" to="m1hb:~XWPFDocument.&lt;init&gt;()" resolve="XWPFDocument" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="28bpG9VY3YH" role="1B3o_S" />
      <node concept="3cqZAl" id="28bpG9VY90Q" role="3clF45" />
      <node concept="37vLTG" id="28bpG9VY9n6" role="3clF46">
        <property role="TrG5h" value="outputFile" />
        <node concept="3uibUv" id="28bpG9VY9Hu" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3uibUv" id="28bpG9VZf4B" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="28bpG9VY3Fq" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4DOiaOewxHE">
    <property role="TrG5h" value="WriteDocxFileViaCustomClassLoader" />
    <node concept="2YIFZL" id="4DOiaOewzQ0" role="jymVt">
      <property role="TrG5h" value="writeDocxFile" />
      <node concept="3clFbS" id="4DOiaOewzQ3" role="3clF47">
        <node concept="3cpWs8" id="5kfMM14dsPH" role="3cqZAp">
          <node concept="3cpWsn" id="5kfMM14dsPI" role="3cpWs9">
            <property role="TrG5h" value="libraries" />
            <node concept="2hMVRd" id="5kfMM14d$DH" role="1tU5fm">
              <node concept="3uibUv" id="5kfMM14e4TC" role="2hN53Y">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="5kfMM14elmg" role="33vP2m">
              <node concept="2i4dXS" id="5kfMM14epUn" role="2ShVmc">
                <node concept="3uibUv" id="5kfMM14erPR" role="HW$YZ">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5kfMM14e8Bd" role="3cqZAp">
          <node concept="2OqwBi" id="5kfMM14e9P5" role="3clFbG">
            <node concept="37vLTw" id="5kfMM14e8Bb" role="2Oq$k0">
              <ref role="3cqZAo" node="5kfMM14dsPI" resolve="libraries" />
            </node>
            <node concept="X8dFx" id="5kfMM14ebdf" role="2OqNvi">
              <node concept="1rXfSq" id="5kfMM14fgFS" role="25WWJ7">
                <ref role="37wK5l" node="5kfMM14ebl5" resolve="getClassPathOfModule" />
                <node concept="37shsh" id="5kfMM14ebkW" role="37wK5m">
                  <node concept="1dCxOk" id="4DOiaOex4sK" role="37shsm">
                    <property role="1XweGW" value="5d546c53-61eb-4af3-b73e-6a854d2d76e9" />
                    <property role="1XxBO9" value="org.apache.poi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5kfMM14et3R" role="3cqZAp">
          <node concept="2OqwBi" id="5kfMM14et3S" role="3clFbG">
            <node concept="37vLTw" id="5kfMM14et3T" role="2Oq$k0">
              <ref role="3cqZAo" node="5kfMM14dsPI" resolve="libraries" />
            </node>
            <node concept="X8dFx" id="5kfMM14et3U" role="2OqNvi">
              <node concept="1rXfSq" id="5kfMM14fije" role="25WWJ7">
                <ref role="37wK5l" node="5kfMM14ebl5" resolve="getClassPathOfModule" />
                <node concept="37shsh" id="5kfMM14et3W" role="37wK5m">
                  <node concept="1dCxOk" id="4DOiaOex5NH" role="37shsm">
                    <property role="1XweGW" value="e5ea0668-6bdd-48aa-b0b3-385180c292ba" />
                    <property role="1XxBO9" value="com.spclngs.samples.poi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5kfMM14dtKn" role="3cqZAp" />
        <node concept="3cpWs8" id="5kfMM14dwFp" role="3cqZAp">
          <node concept="3cpWsn" id="5kfMM14dwFq" role="3cpWs9">
            <property role="TrG5h" value="classLoader" />
            <node concept="3uibUv" id="5kfMM14dwFr" role="1tU5fm">
              <ref role="3uigEE" to="f2k0:~UrlClassLoader" resolve="UrlClassLoader" />
            </node>
            <node concept="2OqwBi" id="5kfMM14dYBD" role="33vP2m">
              <node concept="2OqwBi" id="5kfMM14dzHB" role="2Oq$k0">
                <node concept="2OqwBi" id="5kfMM14dyav" role="2Oq$k0">
                  <node concept="2YIFZM" id="5kfMM14dy4E" role="2Oq$k0">
                    <ref role="37wK5l" to="f2k0:~UrlClassLoader.build()" resolve="build" />
                    <ref role="1Pybhc" to="f2k0:~UrlClassLoader" resolve="UrlClassLoader" />
                  </node>
                  <node concept="liA8E" id="5kfMM14dyj1" role="2OqNvi">
                    <ref role="37wK5l" to="f2k0:~UrlClassLoader$Builder.parent(java.lang.ClassLoader)" resolve="parent" />
                    <node concept="2YIFZM" id="5kfMM14dzAe" role="37wK5m">
                      <ref role="37wK5l" to="wyt6:~ClassLoader.getSystemClassLoader()" resolve="getSystemClassLoader" />
                      <ref role="1Pybhc" to="wyt6:~ClassLoader" resolve="ClassLoader" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5kfMM14d$yB" role="2OqNvi">
                  <ref role="37wK5l" to="f2k0:~UrlClassLoader$Builder.urls(java.util.List)" resolve="urls" />
                  <node concept="2OqwBi" id="5kfMM14dXC9" role="37wK5m">
                    <node concept="2OqwBi" id="5kfMM14d_Yf" role="2Oq$k0">
                      <node concept="37vLTw" id="5kfMM14d_gO" role="2Oq$k0">
                        <ref role="3cqZAo" node="5kfMM14dsPI" resolve="libraries" />
                      </node>
                      <node concept="3$u5V9" id="5kfMM14dANh" role="2OqNvi">
                        <node concept="1bVj0M" id="5kfMM14dANj" role="23t8la">
                          <node concept="3clFbS" id="5kfMM14dANk" role="1bW5cS">
                            <node concept="3cpWs6" id="5kfMM14dZRO" role="3cqZAp">
                              <node concept="1rXfSq" id="5kfMM14euiT" role="3cqZAk">
                                <ref role="37wK5l" node="5kfMM14dZRI" resolve="fileToUrl" />
                                <node concept="37vLTw" id="5kfMM14dZRM" role="37wK5m">
                                  <ref role="3cqZAo" node="5kfMM14dANl" resolve="it" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="5kfMM14dANl" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="5kfMM14dANm" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="ANE8D" id="5kfMM14dYkg" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5kfMM14dZwG" role="2OqNvi">
                <ref role="37wK5l" to="f2k0:~UrlClassLoader$Builder.get()" resolve="get" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5kfMM14duVq" role="3cqZAp" />
        <node concept="3J1_TO" id="5kfMM14g85Q" role="3cqZAp">
          <node concept="3uVAMA" id="5kfMM14gbXr" role="1zxBo5">
            <node concept="XOnhg" id="5kfMM14gbXs" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5kfMM14gbXt" role="1tU5fm">
                <node concept="3uibUv" id="5kfMM14gd7d" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~ReflectiveOperationException" resolve="ReflectiveOperationException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5kfMM14gbXu" role="1zc67A">
              <node concept="YS8fn" id="5kfMM14gdg9" role="3cqZAp">
                <node concept="2ShNRf" id="5kfMM14gdgs" role="YScLw">
                  <node concept="1pGfFk" id="5kfMM14gdGX" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="5kfMM14gdHf" role="37wK5m">
                      <ref role="3cqZAo" node="5kfMM14gbXs" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5kfMM14g85S" role="1zxBo7">
            <node concept="3cpWs8" id="5kfMM14eNr8" role="3cqZAp">
              <node concept="3cpWsn" id="5kfMM14eNr9" role="3cpWs9">
                <property role="TrG5h" value="theClass" />
                <node concept="3uibUv" id="5kfMM14eNaq" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                  <node concept="3qTvmN" id="5kfMM14eNat" role="11_B2D" />
                </node>
                <node concept="2YIFZM" id="5kfMM14eNra" role="33vP2m">
                  <ref role="37wK5l" to="wyt6:~Class.forName(java.lang.String,boolean,java.lang.ClassLoader)" resolve="forName" />
                  <ref role="1Pybhc" to="wyt6:~Class" resolve="Class" />
                  <node concept="2OqwBi" id="5kfMM14eNrb" role="37wK5m">
                    <node concept="3VsKOn" id="5kfMM14eNrc" role="2Oq$k0">
                      <ref role="3VsUkX" node="28bpG9VY3Fp" resolve="WriteDocxFile" />
                    </node>
                    <node concept="liA8E" id="5kfMM14eNrd" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
                    </node>
                  </node>
                  <node concept="3clFbT" id="5kfMM14eNre" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="5kfMM14eNrf" role="37wK5m">
                    <ref role="3cqZAo" node="5kfMM14dwFq" resolve="classLoader" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4DOiaOexULp" role="3cqZAp">
              <node concept="3cpWsn" id="4DOiaOexULq" role="3cpWs9">
                <property role="TrG5h" value="theMethod" />
                <node concept="3uibUv" id="4DOiaOexUDy" role="1tU5fm">
                  <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                </node>
                <node concept="2OqwBi" id="4DOiaOexULr" role="33vP2m">
                  <node concept="37vLTw" id="4DOiaOexULs" role="2Oq$k0">
                    <ref role="3cqZAo" node="5kfMM14eNr9" resolve="theClass" />
                  </node>
                  <node concept="liA8E" id="4DOiaOexULt" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Class.getMethod(java.lang.String,java.lang.Class...)" resolve="getMethod" />
                    <node concept="Xl_RD" id="4DOiaOexULu" role="37wK5m">
                      <property role="Xl_RC" value="writeDocxFile" />
                    </node>
                    <node concept="3VsKOn" id="4DOiaOexULv" role="37wK5m">
                      <ref role="3VsUkX" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4DOiaOexiVS" role="3cqZAp">
              <node concept="2OqwBi" id="5kfMM14g13s" role="3clFbG">
                <node concept="37vLTw" id="4DOiaOexULw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4DOiaOexULq" resolve="theMethod" />
                </node>
                <node concept="liA8E" id="5kfMM14g13x" role="2OqNvi">
                  <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                  <node concept="10Nm6u" id="5kfMM14g13y" role="37wK5m" />
                  <node concept="37vLTw" id="5kfMM14guCk" role="37wK5m">
                    <ref role="3cqZAo" node="4DOiaOewzT$" resolve="outputFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4DOiaOewxLX" role="1B3o_S" />
      <node concept="3cqZAl" id="4DOiaOewzPP" role="3clF45" />
      <node concept="37vLTG" id="4DOiaOewzT$" role="3clF46">
        <property role="TrG5h" value="outputFile" />
        <node concept="3uibUv" id="4DOiaOewzTz" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5kfMM14ffXn" role="jymVt" />
    <node concept="2YIFZL" id="5kfMM14ebl5" role="jymVt">
      <property role="TrG5h" value="getClassPathOfModule" />
      <node concept="37vLTG" id="5kfMM14ecCD" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="5kfMM14eemv" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5kfMM14ebl6" role="1B3o_S" />
      <node concept="3uibUv" id="5kfMM14ebl7" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5kfMM14ebl8" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5kfMM14ebkR" role="3clF47">
        <node concept="3cpWs6" id="5kfMM14ebkS" role="3cqZAp">
          <node concept="2OqwBi" id="5kfMM14ebkT" role="3cqZAk">
            <node concept="2OqwBi" id="5kfMM14ebkU" role="2Oq$k0">
              <node concept="2OqwBi" id="5kfMM14ebkV" role="2Oq$k0">
                <node concept="liA8E" id="5kfMM14ebkY" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                  <node concept="2YIFZM" id="5kfMM14ebkZ" role="37wK5m">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="5kfMM14egRu" role="2Oq$k0">
                  <ref role="3cqZAo" node="5kfMM14ecCD" resolve="moduleRef" />
                </node>
              </node>
              <node concept="liA8E" id="5kfMM14ebl0" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SModule.getFacet(java.lang.Class)" resolve="getFacet" />
                <node concept="3VsKOn" id="5kfMM14ebl1" role="37wK5m">
                  <ref role="3VsUkX" to="b0pz:~JavaModuleFacet" resolve="JavaModuleFacet" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5kfMM14ebl2" role="2OqNvi">
              <ref role="37wK5l" to="b0pz:~JavaModuleFacet.getClassPath()" resolve="getClassPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5kfMM14e4rY" role="jymVt" />
    <node concept="2YIFZL" id="5kfMM14dZRI" role="jymVt">
      <property role="TrG5h" value="fileToUrl" />
      <node concept="3Tm6S6" id="5kfMM14dZRJ" role="1B3o_S" />
      <node concept="3uibUv" id="5kfMM14e1_x" role="3clF45">
        <ref role="3uigEE" to="zf81:~URL" resolve="URL" />
      </node>
      <node concept="37vLTG" id="5kfMM14dZRD" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="17QB3L" id="5kfMM14dZRE" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5kfMM14dZRw" role="3clF47">
        <node concept="3J1_TO" id="5kfMM14e23P" role="3cqZAp">
          <node concept="3uVAMA" id="5kfMM14e2pM" role="1zxBo5">
            <node concept="XOnhg" id="5kfMM14e2pN" role="1zc67B">
              <property role="TrG5h" value="ex" />
              <node concept="nSUau" id="5kfMM14e2pO" role="1tU5fm">
                <node concept="3uibUv" id="5kfMM14e2vh" role="nSUat">
                  <ref role="3uigEE" to="zf81:~MalformedURLException" resolve="MalformedURLException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5kfMM14e2pP" role="1zc67A">
              <node concept="YS8fn" id="5kfMM14e390" role="3cqZAp">
                <node concept="2ShNRf" id="5kfMM14e39j" role="YScLw">
                  <node concept="1pGfFk" id="5kfMM14e3zO" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="5kfMM14e3_O" role="37wK5m">
                      <ref role="3cqZAo" node="5kfMM14e2pN" resolve="ex" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5kfMM14e23R" role="1zxBo7">
            <node concept="3cpWs6" id="5kfMM14e3Z9" role="3cqZAp">
              <node concept="2OqwBi" id="5kfMM14dZRy" role="3cqZAk">
                <node concept="2OqwBi" id="5kfMM14dZRz" role="2Oq$k0">
                  <node concept="2ShNRf" id="5kfMM14dZR$" role="2Oq$k0">
                    <node concept="1pGfFk" id="5kfMM14dZR_" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="37vLTw" id="5kfMM14dZRF" role="37wK5m">
                        <ref role="3cqZAo" node="5kfMM14dZRD" resolve="file" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5kfMM14dZRB" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.toURI()" resolve="toURI" />
                  </node>
                </node>
                <node concept="liA8E" id="5kfMM14dZRC" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~URI.toURL()" resolve="toURL" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DOiaOewYNc" role="jymVt" />
    <node concept="3Tm1VV" id="4DOiaOewxHF" role="1B3o_S" />
  </node>
  <node concept="2DaZZR" id="4DOiaOexmaT" />
  <node concept="tC5Ba" id="4DOiaOexmaU">
    <property role="TrG5h" value="ContributeWriteDocxFile" />
    <node concept="ftmFs" id="4DOiaOexmaW" role="ftER_">
      <node concept="tCFHf" id="4DOiaOexmaZ" role="ftvYc">
        <ref role="tCJdB" node="28bpG9VY3F6" resolve="WriteDocxFile" />
      </node>
    </node>
    <node concept="tT9cl" id="4DOiaOexmb1" role="2f5YQi">
      <ref role="tU$_T" to="ekwn:1xsN4xJX8VI" resolve="EditorPopup" />
      <ref role="2f8Tey" to="ekwn:1xsN4xJX8VK" resolve="new" />
    </node>
  </node>
</model>

