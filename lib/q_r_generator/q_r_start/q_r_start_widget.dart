import '/components/credit/credit_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/q_r_generator/q_r_code_1/q_r_code1_widget.dart';
import '/q_r_generator/q_r_code_2/q_r_code2_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'q_r_start_model.dart';
export 'q_r_start_model.dart';

class QRStartWidget extends StatefulWidget {
  const QRStartWidget({super.key});

  @override
  _QRStartWidgetState createState() => _QRStartWidgetState();
}

class _QRStartWidgetState extends State<QRStartWidget>
    with TickerProviderStateMixin {
  late QRStartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRStartModel());

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController2 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.promptLinkController ??= TextEditingController();
    _model.promptLinkFocusNode ??= FocusNode();

    _model.tabBarController3 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.uploadLinkController ??= TextEditingController();
    _model.uploadLinkFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
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
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 22.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'vpw8w4g4' /* QR Generator */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'NotoSansThai',
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts: false,
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
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          unselectedLabelColor: Colors.black,
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          unselectedBackgroundColor: const Color(0xFFEDEDED),
                          borderColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          unselectedBorderColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderWidth: 0.0,
                          borderRadius: 20.0,
                          elevation: 0.0,
                          buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              21.0, 27.0, 21.0, 21.0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'w8t6fd99' /* QR Prompt */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'u1x05isp' /* Upload Image */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController1,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController1,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '491zgphu' /* Step 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '20pl38cc' /*  : Add QR Code Content * */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: FlutterFlowButtonTabBar(
                                                  useToggleButtonStyle: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'NotoSansThai',
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 11.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  unselectedLabelColor:
                                                      Colors.black,
                                                  backgroundColor: Colors.white,
                                                  unselectedBackgroundColor:
                                                      const Color(0xFFEDEDED),
                                                  borderColor:
                                                      const Color(0xFFEDEDED),
                                                  unselectedBorderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 5.0,
                                                  borderRadius: 20.0,
                                                  elevation: 0.0,
                                                  buttonMargin:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(8.0, 0.0,
                                                              8.0, 0.0),
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 12.0,
                                                          10.0, 15.0),
                                                  tabs: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .link,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'qmtnnkdr' /* Link /URL */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .file_upload_outlined,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'stkv3hkd' /* QR Code */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController2,
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController2,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      100.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      3.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        130.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE4E4E4),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 5.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ihradgwv' /* Example : https://www.example.... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Form(
                                                                            key:
                                                                                _model.formKey1,
                                                                            autovalidateMode:
                                                                                AutovalidateMode.always,
                                                                            child:
                                                                                SizedBox(
                                                                              width: double.infinity,
                                                                              child: TextFormField(
                                                                                controller: _model.promptLinkController,
                                                                                focusNode: _model.promptLinkFocusNode,
                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                  '_model.promptLinkController',
                                                                                  const Duration(milliseconds: 2000),
                                                                                  () => setState(() {}),
                                                                                ),
                                                                                textCapitalization: TextCapitalization.none,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                  alignLabelWithHint: false,
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    'wibgn5x4' /* https://www.example.com/my-lon... */,
                                                                                  ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: const Color(0xB36F6F6F),
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0xB36F6F6F),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  suffixIcon: _model.promptLinkController!.text.isNotEmpty
                                                                                      ? InkWell(
                                                                                          onTap: () async {
                                                                                            _model.promptLinkController?.clear();
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.clear,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            size: 15.0,
                                                                                          ),
                                                                                        )
                                                                                      : null,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 12.0,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                                textAlign: TextAlign.justify,
                                                                                keyboardType: TextInputType.url,
                                                                                cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                validator: _model.promptLinkControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                15.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'pxw014hb' /* Step 2 */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 15.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'g4uzpy4a' /*  : Select a Theme */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                106.0,
                                                                            child:
                                                                                CarouselSlider(
                                                                              items: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Maneki_Neko.jpg',
                                                                                          width: 101.0,
                                                                                          height: 106.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '9eltv43x' /* Maneki Neko */,
                                                                                            ),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Cyberpunk.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vyfzqqmp' /* Cyberpunk */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Foodies.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vr6zltm2' /* Foodies */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Galaxy.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'qnlaa78z' /* Galaxy */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Jade_Dragon.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              't6hmoqjk' /* Jade Dragon */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Joan_Miro.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'pisolpng' /* Joan Miro */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Low_Poly.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'd0sezw13' /* Low Poly */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Neon_Camouflage.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ojtutlpv' /* Neon Camouflage */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 10.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Neon_Sci-fi_Lady.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'xysz2wk7' /* Neon Sci-fi Lady */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Stormy_Night.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'vibxcy2m' /* Stormy Night */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Tree_House.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '1gcfqt0x' /* Tree House */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                              carouselController: _model.linkSelectmodelController ??= CarouselController(),
                                                                              options: CarouselOptions(
                                                                                initialPage: 1,
                                                                                viewportFraction: 0.3,
                                                                                disableCenter: true,
                                                                                enlargeCenterPage: true,
                                                                                enlargeFactor: 0.3,
                                                                                enableInfiniteScroll: false,
                                                                                scrollDirection: Axis.horizontal,
                                                                                autoPlay: false,
                                                                                onPageChanged: (index, _) => _model.linkSelectmodelCurrentIndex = index,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      3.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.00,
                                                                              0.00),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '880b6kjw' /* Step 3 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'NotoSansThai',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 15.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '9cz3juak' /*  : Number of Images */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.00,
                                                                              -1.00),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                5.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'hoxdtlax' /* Select number of images to gen... */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'NotoSansThai',
                                                                                    fontSize: 12.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Stack(
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Slider(
                                                                                    activeColor: FlutterFlowTheme.of(context).primary,
                                                                                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                                                                                    min: 1.0,
                                                                                    max: 9.0,
                                                                                    value: _model.linkSliderValue ??= 5.0,
                                                                                    divisions: 8,
                                                                                    onChanged: (newValue) {
                                                                                      setState(() => _model.linkSliderValue = newValue);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'y5fxazk2' /* 1 */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'NotoSansThai',
                                                                                                fontSize: 12.0,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'xy7lf8n3' /* 2 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'kd26l1t5' /* 3 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '8xaz6ef7' /* 4 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'ibhzpiwt' /* 5 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'vmwryekq' /* 6 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'ek7o6ztk' /* 7 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '9zmyp5ju' /* 8 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'o12h3i9v' /* 9 */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'NotoSansThai',
                                                                                                fontSize: 12.0,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
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
                                                                        10.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: _model.promptLinkController
                                                                              .text ==
                                                                          ''
                                                                  ? null
                                                                  : () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const SizedBox(
                                                                                height: 650.0,
                                                                                child: QRCode1Widget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'fzl4glxn' /* Generate */,
                                                              ),
                                                              icon: const Icon(
                                                                Icons
                                                                    .auto_awesome_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 390.0,
                                                                height: 45.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'NotoSansThai',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x581371FF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      70.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          130.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              const Color(0xFFE4E4E4),
                                                                        ),
                                                                      ),
                                                                      alignment: const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      final selectedMedia = await selectMedia(
                                                                                        maxWidth: 1024.00,
                                                                                        maxHeight: 1024.00,
                                                                                        mediaSource: MediaSource.photoGallery,
                                                                                        multiImage: false,
                                                                                      );
                                                                                      if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                        setState(() => _model.isDataUploading1 = true);
                                                                                        var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                        try {
                                                                                          selectedUploadedFiles = selectedMedia
                                                                                              .map((m) => FFUploadedFile(
                                                                                                    name: m.storagePath.split('/').last,
                                                                                                    bytes: m.bytes,
                                                                                                    height: m.dimensions?.height,
                                                                                                    width: m.dimensions?.width,
                                                                                                    blurHash: m.blurHash,
                                                                                                  ))
                                                                                              .toList();
                                                                                        } finally {
                                                                                          _model.isDataUploading1 = false;
                                                                                        }
                                                                                        if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                          setState(() {
                                                                                            _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      }
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 280.0,
                                                                                      height: 125.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/Rectangle_165.png',
                                                                                                  width: 250.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/icons8-upload-to-cloud.gif',
                                                                                                    width: 25.0,
                                                                                                    height: 20.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'r27cvlwr' /* Upload QR Code */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'NotoSansThai',
                                                                                                        fontSize: 10.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'tfmt3zin' /* File types : PNG/JPG, maximum ... */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'NotoSansThai',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 8.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(1.00, 0.00),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '2hil4t5c' /* Example */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Example.jpg',
                                                                                                width: 52.0,
                                                                                                height: 52.0,
                                                                                                fit: BoxFit.contain,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                15.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'apxbxpmf' /* Step 2 */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        fontSize: 15.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'q2v2fn1i' /*  : Select a Theme */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 14.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                106.0,
                                                                            child:
                                                                                CarouselSlider(
                                                                              items: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Maneki_Neko.jpg',
                                                                                          width: 101.0,
                                                                                          height: 106.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'rxjfopk7' /* Maneki Neko */,
                                                                                            ),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Cyberpunk.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '8590zmc0' /* Cyberpunk */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Foodies.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '4ayivlfv' /* Foodies */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Galaxy.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'h5eqe51a' /* Galaxy */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Jade_Dragon.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'jnq6qdcr' /* Jade Dragon */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Joan_Miro.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '52zv3xzd' /* Joan Miro */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Low_Poly.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'zjou2yzw' /* Low Poly */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Neon_Camouflage.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'qu7ea2aw' /* Neon Camouflage */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 10.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Neon_Sci-fi_Lady.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '8e194bh8' /* Neon Sci-fi Lady */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Stormy_Night.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'htki0o99' /* Stormy Night */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Stack(
                                                                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Tree_House.jpg',
                                                                                            width: 101.0,
                                                                                            height: 106.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 100.0,
                                                                                        height: 58.0,
                                                                                        decoration: const BoxDecoration(
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0x04000000),
                                                                                              Color(0xD4000000)
                                                                                            ],
                                                                                            stops: [0.0, 1.0],
                                                                                            begin: AlignmentDirectional(0.0, -1.0),
                                                                                            end: AlignmentDirectional(0, 1.0),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(10.0),
                                                                                            bottomRight: Radius.circular(10.0),
                                                                                            topLeft: Radius.circular(0.0),
                                                                                            topRight: Radius.circular(0.0),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 1.00),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'uskmokce' /* Tree House */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'NotoSansThai',
                                                                                                  color: FlutterFlowTheme.of(context).info,
                                                                                                  fontSize: 12.0,
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  useGoogleFonts: false,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                              carouselController: _model.qrSelectmodelController ??= CarouselController(),
                                                                              options: CarouselOptions(
                                                                                initialPage: 1,
                                                                                viewportFraction: 0.3,
                                                                                disableCenter: true,
                                                                                enlargeCenterPage: true,
                                                                                enlargeFactor: 0.3,
                                                                                enableInfiniteScroll: false,
                                                                                scrollDirection: Axis.horizontal,
                                                                                autoPlay: false,
                                                                                onPageChanged: (index, _) => _model.qrSelectmodelCurrentIndex = index,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      3.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.00,
                                                                              0.00),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'wa9y53uw' /* Step 3 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'NotoSansThai',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 15.0,
                                                                                          fontWeight: FontWeight.bold,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'b13z763k' /*  : Number of Images */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        fontWeight: FontWeight.bold,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.00,
                                                                              -1.00),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                5.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '8pnhq3u0' /* Select number of images to gen... */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'NotoSansThai',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 12.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Stack(
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Slider(
                                                                                    activeColor: FlutterFlowTheme.of(context).primary,
                                                                                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                                                                                    min: 1.0,
                                                                                    max: 9.0,
                                                                                    value: _model.qrSliderValue ??= 5.0,
                                                                                    divisions: 8,
                                                                                    onChanged: (newValue) {
                                                                                      setState(() => _model.qrSliderValue = newValue);
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'kpv8s1lg' /* 1 */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'NotoSansThai',
                                                                                                fontSize: 12.0,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '4xk9nuoc' /* 2 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'njmo5i20' /* 3 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          '44pje0vk' /* 4 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'nrh2b9r0' /* 5 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'gijw02a8' /* 6 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'w6ir9y7e' /* 7 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        FFLocalizations.of(context).getText(
                                                                                          'myia0fsi' /* 8 */,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'NotoSansThai',
                                                                                              fontSize: 12.0,
                                                                                              useGoogleFonts: false,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                                                                                        child: Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'f513rmi6' /* 9 */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'NotoSansThai',
                                                                                                fontSize: 12.0,
                                                                                                useGoogleFonts: false,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
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
                                                                        10.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: (_model
                                                                              .uploadedLocalFile1
                                                                              .bytes
                                                                              ?.isEmpty ??
                                                                          true)
                                                                  ? null
                                                                  : () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const SizedBox(
                                                                                height: 650.0,
                                                                                child: QRCode1Widget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'jbxpfp8o' /* Generate */,
                                                              ),
                                                              icon: const Icon(
                                                                Icons
                                                                    .auto_awesome_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 390.0,
                                                                height: 45.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'NotoSansThai',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x581371FF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 0.0, 15.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gayxpv6p' /* Step 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: const Color(0xFF406AFF),
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4moto873' /*  : Add QR Code Content * */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    useGoogleFonts: false,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: FlutterFlowButtonTabBar(
                                                  useToggleButtonStyle: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'NotoSansThai',
                                                        fontSize: 11.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        useGoogleFonts: false,
                                                      ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 11.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  labelColor: const Color(0xFF406AFF),
                                                  unselectedLabelColor:
                                                      Colors.black,
                                                  backgroundColor: Colors.white,
                                                  unselectedBackgroundColor:
                                                      const Color(0xFFEDEDED),
                                                  borderColor:
                                                      const Color(0xFFEDEDED),
                                                  unselectedBorderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 5.0,
                                                  borderRadius: 20.0,
                                                  elevation: 0.0,
                                                  buttonMargin:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(8.0, 0.0,
                                                              8.0, 0.0),
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 12.0,
                                                          10.0, 15.0),
                                                  tabs: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .link,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'tet1uefz' /* Link /URL */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Icon(
                                                            Icons
                                                                .file_upload_outlined,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '9tdpm58b' /* QR Code */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController3,
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController3,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      100.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      3.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        1.0,
                                                                    height:
                                                                        130.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE4E4E4),
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          15.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 5.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '6d1fraht' /* Example : https://www.example.... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Form(
                                                                            key:
                                                                                _model.formKey2,
                                                                            autovalidateMode:
                                                                                AutovalidateMode.always,
                                                                            child:
                                                                                SizedBox(
                                                                              width: double.infinity,
                                                                              child: TextFormField(
                                                                                controller: _model.uploadLinkController,
                                                                                focusNode: _model.uploadLinkFocusNode,
                                                                                onChanged: (_) => EasyDebounce.debounce(
                                                                                  '_model.uploadLinkController',
                                                                                  const Duration(milliseconds: 2000),
                                                                                  () => setState(() {}),
                                                                                ),
                                                                                textCapitalization: TextCapitalization.none,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                  alignLabelWithHint: false,
                                                                                  hintText: FFLocalizations.of(context).getText(
                                                                                    '6aet8vbw' /* https://www.example.com/my-lon... */,
                                                                                  ),
                                                                                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                        fontFamily: 'NotoSansThai',
                                                                                        color: const Color(0xB36F6F6F),
                                                                                        fontSize: 12.0,
                                                                                        useGoogleFonts: false,
                                                                                      ),
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: const BorderSide(
                                                                                      color: Color(0xB36F6F6F),
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                  ),
                                                                                  suffixIcon: _model.uploadLinkController!.text.isNotEmpty
                                                                                      ? InkWell(
                                                                                          onTap: () async {
                                                                                            _model.uploadLinkController?.clear();
                                                                                            setState(() {});
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.clear,
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            size: 15.0,
                                                                                          ),
                                                                                        )
                                                                                      : null,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                textAlign: TextAlign.justify,
                                                                                keyboardType: TextInputType.url,
                                                                                cursorColor: FlutterFlowTheme.of(context).primary,
                                                                                validator: _model.uploadLinkControllerValidator.asValidator(context),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: RichText(
                                                                                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        'd6glvjtr' /* Step 2 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'NotoSansThai',
                                                                                            color: const Color(0xFF406AFF),
                                                                                            fontSize: 15.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        'widwzzgf' /* : Upload Photos */,
                                                                                      ),
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Inter',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'tjq72tz6' /* Background Image */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  final selectedMedia = await selectMedia(
                                                                                    maxWidth: 1024.00,
                                                                                    maxHeight: 1024.00,
                                                                                    mediaSource: MediaSource.photoGallery,
                                                                                    multiImage: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading2 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    try {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      selectedUploadedFiles = selectedMedia
                                                                                          .map((m) => FFUploadedFile(
                                                                                                name: m.storagePath.split('/').last,
                                                                                                bytes: m.bytes,
                                                                                                height: m.dimensions?.height,
                                                                                                width: m.dimensions?.width,
                                                                                                blurHash: m.blurHash,
                                                                                              ))
                                                                                          .toList();
                                                                                    } finally {
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      _model.isDataUploading2 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFiles2 = selectedUploadedFiles;
                                                                                      });
                                                                                      showUploadMessage(context, 'Success!');
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      showUploadMessage(context, 'Failed to upload data');
                                                                                      return;
                                                                                    }
                                                                                  }
                                                                                },
                                                                                child: Container(
                                                                                  width: 310.0,
                                                                                  height: 140.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                    child: Stack(
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Rectangle_165.png',
                                                                                              width: 300.0,
                                                                                              height: 127.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/icons8-upload-to-cloud.gif',
                                                                                                width: 35.0,
                                                                                                height: 30.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'zt3gijka' /* Upload Background */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 13.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'u00hj7r5' /* File types : PNG/JPG, maximum ... */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uvvcvih1' /* QR Scale */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                15.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      _model.linkqrscaleselected = 1;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 85.0,
                                                                                    height: 85.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                      border: Border.all(
                                                                                        color: _model.linkqrscaleselected == 1 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                        width: 2.0,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Scale_1.jpg',
                                                                                          width: 85.0,
                                                                                          height: 85.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.linkqrscaleselected = 2;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 85.0,
                                                                                      height: 85.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: _model.linkqrscaleselected == 2 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Scale_2.jpg',
                                                                                            width: 85.0,
                                                                                            height: 85.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.linkqrscaleselected = 3;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 85.0,
                                                                                      height: 85.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: _model.linkqrscaleselected == 3 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Scale_3.jpg',
                                                                                            width: 85.0,
                                                                                            height: 85.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'x6a4nps8' /* Middle Logo (Optional) */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                                                                              child: Container(
                                                                                width: 368.0,
                                                                                height: 220.0,
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: GridView(
                                                                                      padding: EdgeInsets.zero,
                                                                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                        crossAxisCount: 5,
                                                                                        crossAxisSpacing: 10.0,
                                                                                        mainAxisSpacing: 15.0,
                                                                                        childAspectRatio: 1.0,
                                                                                      ),
                                                                                      scrollDirection: Axis.vertical,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'none';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'none' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/none.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'facebook';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'facebook' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/facebook.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'instogram';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'instogram' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/instogram.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'line';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'line' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/line.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'twitter';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'twitter' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/twitter.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'linkedin';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'linkedin' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/linkedin.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'github';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'github' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/github.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'youtube';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'youtube' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/youtube.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'tiktok';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'tiktok' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/tiktok.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'telegram';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'telegram' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/telegram.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'whatsapp';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'whatsapp' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/whatsapp.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'map';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'map' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/maps.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.linklogoselected = 'promptpay';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.linklogoselected == 'promptpay' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/promptpay.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  final selectedMedia = await selectMedia(
                                                                                    maxWidth: 1024.00,
                                                                                    maxHeight: 1024.00,
                                                                                    mediaSource: MediaSource.photoGallery,
                                                                                    multiImage: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading3 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    try {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      selectedUploadedFiles = selectedMedia
                                                                                          .map((m) => FFUploadedFile(
                                                                                                name: m.storagePath.split('/').last,
                                                                                                bytes: m.bytes,
                                                                                                height: m.dimensions?.height,
                                                                                                width: m.dimensions?.width,
                                                                                                blurHash: m.blurHash,
                                                                                              ))
                                                                                          .toList();
                                                                                    } finally {
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      _model.isDataUploading3 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFiles3 = selectedUploadedFiles;
                                                                                      });
                                                                                      showUploadMessage(context, 'Success!');
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      showUploadMessage(context, 'Failed to upload data');
                                                                                      return;
                                                                                    }
                                                                                  }
                                                                                },
                                                                                child: Container(
                                                                                  width: 310.0,
                                                                                  height: 140.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                    child: Stack(
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Rectangle_165.png',
                                                                                              width: 300.0,
                                                                                              height: 127.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/icons8-upload-to-cloud.gif',
                                                                                                width: 35.0,
                                                                                                height: 30.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'vss22atf' /* Upload Logo */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 13.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '12jtedkb' /* File types : PNG/JPG, maximum ... */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
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
                                                                        10.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: _model.uploadLinkController
                                                                              .text ==
                                                                          ''
                                                                  ? null
                                                                  : () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const SizedBox(
                                                                                height: 500.0,
                                                                                child: QRCode2Widget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'jf7tgrkg' /* Generate */,
                                                              ),
                                                              icon: const Icon(
                                                                Icons
                                                                    .auto_awesome_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 390.0,
                                                                height: 45.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'NotoSansThai',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x581371FF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      100.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          1.0,
                                                                      height:
                                                                          130.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              const Color(0xFFE4E4E4),
                                                                        ),
                                                                      ),
                                                                      alignment: const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      final selectedMedia = await selectMedia(
                                                                                        maxWidth: 1024.00,
                                                                                        maxHeight: 1024.00,
                                                                                        mediaSource: MediaSource.photoGallery,
                                                                                        multiImage: false,
                                                                                      );
                                                                                      if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                        setState(() => _model.isDataUploading4 = true);
                                                                                        var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                        try {
                                                                                          selectedUploadedFiles = selectedMedia
                                                                                              .map((m) => FFUploadedFile(
                                                                                                    name: m.storagePath.split('/').last,
                                                                                                    bytes: m.bytes,
                                                                                                    height: m.dimensions?.height,
                                                                                                    width: m.dimensions?.width,
                                                                                                    blurHash: m.blurHash,
                                                                                                  ))
                                                                                              .toList();
                                                                                        } finally {
                                                                                          _model.isDataUploading4 = false;
                                                                                        }
                                                                                        if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                          setState(() {
                                                                                            _model.uploadedLocalFile4 = selectedUploadedFiles.first;
                                                                                          });
                                                                                        } else {
                                                                                          setState(() {});
                                                                                          return;
                                                                                        }
                                                                                      }
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 280.0,
                                                                                      height: 125.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                child: Image.asset(
                                                                                                  'assets/images/Rectangle_165.png',
                                                                                                  width: 250.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/icons8-upload-to-cloud.gif',
                                                                                                    width: 25.0,
                                                                                                    height: 20.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'leg8a3v0' /* Upload Images */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'NotoSansThai',
                                                                                                        fontSize: 10.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'b9mb4c23' /* File types : PNG/JPG, maximum ... */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'NotoSansThai',
                                                                                                        color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                        fontSize: 8.0,
                                                                                                        useGoogleFonts: false,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(1.00, 0.00),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'gpn36o6c' /* Example */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Example.jpg',
                                                                                                width: 52.0,
                                                                                                height: 52.0,
                                                                                                fit: BoxFit.contain,
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
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                  child: Card(
                                                                    clipBehavior:
                                                                        Clip.antiAliasWithSaveLayer,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        3.0,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                                                                              child: RichText(
                                                                                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        's6v7ynmz' /* Step 2 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'NotoSansThai',
                                                                                            color: const Color(0xFF406AFF),
                                                                                            fontSize: 15.0,
                                                                                            fontWeight: FontWeight.bold,
                                                                                            useGoogleFonts: false,
                                                                                          ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: FFLocalizations.of(context).getText(
                                                                                        'd2y68pxv' /* : Upload Photos */,
                                                                                      ),
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Inter',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 10.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '49zra2pa' /* Background Image */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  final selectedMedia = await selectMedia(
                                                                                    maxWidth: 1024.00,
                                                                                    maxHeight: 1024.00,
                                                                                    mediaSource: MediaSource.photoGallery,
                                                                                    multiImage: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading5 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    try {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      selectedUploadedFiles = selectedMedia
                                                                                          .map((m) => FFUploadedFile(
                                                                                                name: m.storagePath.split('/').last,
                                                                                                bytes: m.bytes,
                                                                                                height: m.dimensions?.height,
                                                                                                width: m.dimensions?.width,
                                                                                                blurHash: m.blurHash,
                                                                                              ))
                                                                                          .toList();
                                                                                    } finally {
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      _model.isDataUploading5 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFiles5 = selectedUploadedFiles;
                                                                                      });
                                                                                      showUploadMessage(context, 'Success!');
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      showUploadMessage(context, 'Failed to upload data');
                                                                                      return;
                                                                                    }
                                                                                  }
                                                                                },
                                                                                child: Container(
                                                                                  width: 310.0,
                                                                                  height: 140.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                    child: Stack(
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Rectangle_165.png',
                                                                                              width: 300.0,
                                                                                              height: 127.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/icons8-upload-to-cloud.gif',
                                                                                                width: 35.0,
                                                                                                height: 30.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '4s3yuj5v' /* Upload Background */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 13.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'l92zshm2' /* File types : PNG/JPG, maximum ... */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'l1vfbxnv' /* QR Scale */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                15.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    setState(() {
                                                                                      _model.uploadqrscaleselected = 1;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    width: 85.0,
                                                                                    height: 85.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(10.0),
                                                                                      border: Border.all(
                                                                                        color: _model.uploadqrscaleselected == 1 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                        width: 2.0,
                                                                                      ),
                                                                                    ),
                                                                                    child: Align(
                                                                                      alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: Image.asset(
                                                                                          'assets/images/Scale_1.jpg',
                                                                                          width: 85.0,
                                                                                          height: 85.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.uploadqrscaleselected = 2;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 85.0,
                                                                                      height: 85.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: _model.uploadqrscaleselected == 2 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Scale_2.jpg',
                                                                                            width: 85.0,
                                                                                            height: 85.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      setState(() {
                                                                                        _model.uploadqrscaleselected = 3;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 85.0,
                                                                                      height: 85.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        border: Border.all(
                                                                                          color: _model.uploadqrscaleselected == 3 ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                          width: 2.0,
                                                                                        ),
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          child: Image.asset(
                                                                                            'assets/images/Scale_3.jpg',
                                                                                            width: 85.0,
                                                                                            height: 85.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(-1.00, -1.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'hhpzl40b' /* Middle Logo (Optional) */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'NotoSansThai',
                                                                                      fontWeight: FontWeight.w600,
                                                                                      useGoogleFonts: false,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(30.0, 15.0, 30.0, 0.0),
                                                                              child: Container(
                                                                                width: 368.0,
                                                                                height: 220.0,
                                                                                decoration: const BoxDecoration(),
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Align(
                                                                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: GridView(
                                                                                      padding: EdgeInsets.zero,
                                                                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                        crossAxisCount: 5,
                                                                                        crossAxisSpacing: 10.0,
                                                                                        mainAxisSpacing: 15.0,
                                                                                        childAspectRatio: 1.0,
                                                                                      ),
                                                                                      scrollDirection: Axis.vertical,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'none';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'none' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/none.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'facebook';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'facebook' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/facebook.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'instogram';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'instogram' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/instogram.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'line';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'line' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/line.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'twitter';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'twitter' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/twitter.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'linkedin';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'linkedin' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/linkedin.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'github';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'github' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/github.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'youtube';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'youtube' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/youtube.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'tiktok';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'tiktok' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/tiktok.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'telegram';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'telegram' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/telegram.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'whatsapp';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'whatsapp' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/whatsapp.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'map';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'map' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/maps.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              setState(() {
                                                                                                _model.qrlogoselected = 'promptpay';
                                                                                              });
                                                                                            },
                                                                                            child: Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                                border: Border.all(
                                                                                                  color: _model.qrlogoselected == 'promptpay' ? FlutterFlowTheme.of(context).primary : const Color(0xFFE4E4E4),
                                                                                                  width: 2.0,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                  child: Image.asset(
                                                                                                    'assets/images/promptpay.png',
                                                                                                    width: 49.56,
                                                                                                    height: 48.29,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                              child: InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  final selectedMedia = await selectMedia(
                                                                                    maxWidth: 1024.00,
                                                                                    maxHeight: 1024.00,
                                                                                    mediaSource: MediaSource.photoGallery,
                                                                                    multiImage: true,
                                                                                  );
                                                                                  if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                    setState(() => _model.isDataUploading6 = true);
                                                                                    var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                    try {
                                                                                      showUploadMessage(
                                                                                        context,
                                                                                        'Uploading file...',
                                                                                        showLoading: true,
                                                                                      );
                                                                                      selectedUploadedFiles = selectedMedia
                                                                                          .map((m) => FFUploadedFile(
                                                                                                name: m.storagePath.split('/').last,
                                                                                                bytes: m.bytes,
                                                                                                height: m.dimensions?.height,
                                                                                                width: m.dimensions?.width,
                                                                                                blurHash: m.blurHash,
                                                                                              ))
                                                                                          .toList();
                                                                                    } finally {
                                                                                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                                                                                      _model.isDataUploading6 = false;
                                                                                    }
                                                                                    if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                      setState(() {
                                                                                        _model.uploadedLocalFiles6 = selectedUploadedFiles;
                                                                                      });
                                                                                      showUploadMessage(context, 'Success!');
                                                                                    } else {
                                                                                      setState(() {});
                                                                                      showUploadMessage(context, 'Failed to upload data');
                                                                                      return;
                                                                                    }
                                                                                  }
                                                                                },
                                                                                child: Container(
                                                                                  width: 310.0,
                                                                                  height: 140.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                    child: Stack(
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(0.0),
                                                                                            child: Image.asset(
                                                                                              'assets/images/Rectangle_165.png',
                                                                                              width: 300.0,
                                                                                              height: 127.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, -1.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/icons8-upload-to-cloud.gif',
                                                                                                width: 35.0,
                                                                                                height: 30.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '4kxgdq65' /* Upload Logo */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: Colors.black,
                                                                                                    fontSize: 13.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '3i9i14qf' /* File types : PNG/JPG, maximum ... */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'NotoSansThai',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 10.0,
                                                                                                    useGoogleFonts: false,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
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
                                                                        10.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed: (_model
                                                                              .uploadedLocalFile4
                                                                              .bytes
                                                                              ?.isEmpty ??
                                                                          true)
                                                                  ? null
                                                                  : () async {
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: const SizedBox(
                                                                                height: 500.0,
                                                                                child: QRCode2Widget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'i3mvhhsf' /* Generate */,
                                                              ),
                                                              icon: const Icon(
                                                                Icons
                                                                    .auto_awesome_sharp,
                                                                size: 15.0,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 390.0,
                                                                height: 45.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        25.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'NotoSansThai',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x581371FF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
