import '/a_iportrait/resultgenerate/resultgenerate_widget.dart';
import '/a_iportrait/uplodingguide/uplodingguide_widget.dart';
import '/components/credit/credit_widget.dart';
import '/components/slidebar/slidebar_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_i_portrait_start_model.dart';
export 'a_i_portrait_start_model.dart';

class AIPortraitStartWidget extends StatefulWidget {
  const AIPortraitStartWidget({super.key});

  @override
  _AIPortraitStartWidgetState createState() => _AIPortraitStartWidgetState();
}

class _AIPortraitStartWidgetState extends State<AIPortraitStartWidget> {
  late AIPortraitStartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIPortraitStartModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController?.text = FFLocalizations.of(context).getText(
            'qtfbkqbr' /* Model1 */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 60.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StickyHeader(
                        overlapHeaders: false,
                        header: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 3.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed('HomePage');
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.chevronLeft,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 22.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'b2phjhxr' /* AI Portrait */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.00, 0.00),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        height: 33.0,
                                        decoration: const BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model.creditModel,
                                          updateCallback: () => setState(() {}),
                                          child: const CreditWidget(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        content: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 178.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8cnbq8m0' /* Step 1 */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF406AFF),
                                                        fontSize: 15.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'jm8982ch' /*  : Select Style */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Stack(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 1.0),
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: Image.asset(
                                                              'assets/images/Korean.jpg',
                                                              width: 101.0,
                                                              height: 135.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 100.0,
                                                          height: 58.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x04000000),
                                                                Color(
                                                                    0xD4000000)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 1.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        7.75),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '6pkurzrn' /* Korean */,
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Stack(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 1.0),
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: Image.asset(
                                                              'assets/images/Anime.jpg',
                                                              width: 101.0,
                                                              height: 135.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 100.0,
                                                          height: 58.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x04000000),
                                                                Color(
                                                                    0xD4000000)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 1.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        7.75),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '2f39eesg' /* Anime */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.00, 0.00),
                                                    child: Stack(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 1.0),
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 0.00),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child: Image.asset(
                                                              'assets/images/Retro.jpg',
                                                              width: 101.0,
                                                              height: 135.0,
                                                              fit: BoxFit.cover,
                                                              alignment:
                                                                  const Alignment(
                                                                      0.00,
                                                                      1.00),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 100.0,
                                                          height: 58.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x04000000),
                                                                Color(
                                                                    0xD4000000)
                                                              ],
                                                              stops: [0.0, 1.0],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1.0),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.00, 1.00),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        7.75),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'kgq5f8kl' /* Retro */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 14.0)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.00, 0.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'awkbn8ct' /* Step 2 */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              const Color(0xFF406AFF),
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '0gqrjxw6' /*  : Generate Image */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 366.0,
                                          height: 323.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            border: Border.all(
                                              color: const Color(0xFFDFDFDF),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 10.0, 15.0, 10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'fww31o1t' /* Model Name */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 13.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    textCapitalization:
                                                        TextCapitalization.none,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: const Color(
                                                                    0xB36F6F6F),
                                                              ),
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'z75fk30w' /* E.g. (Alice, Belle, Emma01) */,
                                                      ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFDFDFDF),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFF0957DE),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  9.0,
                                                                  9.0,
                                                                  9.0,
                                                                  9.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          fontSize: 14.0,
                                                        ),
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.00, 0.00),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: RichText(
                                                      textScaleFactor:
                                                          MediaQuery.of(context)
                                                              .textScaleFactor,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'w8ntgc3p' /* Upload */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'zbq9e46r' /*  0 / 12  */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          TextSpan(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '1ri98sei' /* images */,
                                                            ),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Inter',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13.0,
                                                            ),
                                                          )
                                                        ],
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              fontSize: 13.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6387pz0w' /* Please select 12 photos of you... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                color: const Color(
                                                                    0xCD181818),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .uploadbuttonModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const UploadbuttonWidget(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 15.0, 15.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                barrierColor: const Color(0xCD000000),
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: const SizedBox(
                                                        height: 860.0,
                                                        child:
                                                            UplodingguideWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '56xppndv' /* Uploading Guide */,
                                            ),
                                            icon: const Icon(
                                              Icons.light_mode,
                                              color: Color(0xFFF79803),
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              width: 300.0,
                                              height: 37.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFFFF8EE),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0x45FFB240),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(26.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: wrapWithModel(
                                      model: _model.slidebarModel,
                                      updateCallback: () => setState(() {}),
                                      child: const SlidebarWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: FFButtonWidget(
                    onPressed: _model
                                .uploadbuttonModel.uploadedLocalFiles.length !=
                            12
                        ? null
                        : () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const ResultgenerateWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                    text: FFLocalizations.of(context).getText(
                      '5yp3vfbg' /* Generate ( 6 Credits ) */,
                    ),
                    options: FFButtonOptions(
                      width: 396.0,
                      height: 48.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF406AFF),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily: 'Plus Jakarta Sans',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(26.0),
                      disabledColor: const Color(0x7B406AFF),
                      disabledTextColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
