import '/components/credit/credit_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
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
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          unselectedLabelColor: Colors.black,
                          backgroundColor: const Color(0xFF0057D9),
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
                                            10.0, 0.0, 0.0, 0.0),
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
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF406AFF),
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '20pl38cc' /*  : Add QR Code Content * */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 11.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                                      70.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 103.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xFFE4E4E4),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
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
                                                                              Container(
                                                                            width:
                                                                                304.0,
                                                                            height:
                                                                                37.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ihradgwv' /* Example : https://www.example.... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.promptLinkController,
                                                                            focusNode:
                                                                                _model.promptLinkFocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.promptLinkController',
                                                                              const Duration(milliseconds: 2000),
                                                                              () => setState(() {}),
                                                                            ),
                                                                            textCapitalization:
                                                                                TextCapitalization.none,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                              alignLabelWithHint: false,
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'wibgn5x4' /* https://www.example.com/my-lon... */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xB36F6F6F),
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xB36F6F6F),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFF0957DE),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                                  fontFamily: 'Inter',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            cursorColor:
                                                                                const Color(0xFF0957DE),
                                                                            validator:
                                                                                _model.promptLinkControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          27.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            5.0,
                                                                            0.0,
                                                                            15.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'pxw014hb' /* Step 2 */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xFF406AFF),
                                                                                    fontSize: 15.0,
                                                                                    fontWeight: FontWeight.bold,
                                                                                  ),
                                                                            ),
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'g4uzpy4a' /*  : Select a Theme */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Inter',
                                                                                    color: Colors.black,
                                                                                    fontSize: 14.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width: double
                                                                            .infinity,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
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
                                                                                              fontFamily: 'Inter',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              fontSize: 12.0,
                                                                                              fontWeight: FontWeight.w600,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                          carouselController: _model.carouselController1 ??=
                                                                              CarouselController(),
                                                                          options:
                                                                              CarouselOptions(
                                                                            initialPage:
                                                                                1,
                                                                            viewportFraction:
                                                                                0.3,
                                                                            disableCenter:
                                                                                true,
                                                                            enlargeCenterPage:
                                                                                true,
                                                                            enlargeFactor:
                                                                                0.3,
                                                                            enableInfiniteScroll:
                                                                                false,
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            autoPlay:
                                                                                false,
                                                                            onPageChanged: (index, _) =>
                                                                                _model.carouselCurrentIndex1 = index,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
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
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '880b6kjw' /* Step 3 */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: const Color(0xFF406AFF),
                                                                                        fontSize: 15.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                '9cz3juak' /*  : Number of Images */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    fontWeight: FontWeight.bold,
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
                                                                            19.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'hoxdtlax' /* Select number of images to gen... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Stack(
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Slider(
                                                                                activeColor: const Color(0xFF0957DE),
                                                                                inactiveColor: FlutterFlowTheme.of(context).alternate,
                                                                                min: 0.0,
                                                                                max: 8.0,
                                                                                value: _model.sliderValue1 ??= 5.0,
                                                                                divisions: 8,
                                                                                onChanged: (newValue) {
                                                                                  setState(() => _model.sliderValue1 = newValue);
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 37.0, 0.0, 0.0),
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
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            fontSize: 11.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'xy7lf8n3' /* 2 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'kd26l1t5' /* 3 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '8xaz6ef7' /* 4 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ibhzpiwt' /* 5 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'vmwryekq' /* 6 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'ek7o6ztk' /* 7 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9zmyp5ju' /* 8 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'o12h3i9v' /* 9 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            fontSize: 10.0,
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
                                                                'fzl4glxn' /* Generate ( 6 Credits ) */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 396.0,
                                                                height: 48.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFF406AFF),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x7B406AFF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
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
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE4E4E4),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
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
                                                                                                  'r27cvlwr' /* Upload Images */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 10.0,
                                                                                                      fontWeight: FontWeight.w600,
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
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 8.0,
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
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 10.0,
                                                                                                  fontWeight: FontWeight.w500,
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          15.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '7giykbob' /* Step 2 */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: const Color(0xFF406AFF),
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'qfvrxh3v' /*  : Select a Theme */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  color: Colors.black,
                                                                                  fontSize: 14.0,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          106.0,
                                                                      child:
                                                                          CarouselSlider(
                                                                        items: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        '9s19uhrv' /* Maneki Neko */,
                                                                                      ),
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'ks1z4uz8' /* Cyberpunk */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'f8uk0k64' /* Foodies */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        '3e5b3lww' /* Galaxy */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'j0ls8zri' /* Jade Dragon */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'v28w3ska' /* Joan Miro */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        '910i920n' /* Low Poly */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'hcgfuczr' /* Neon Camouflage */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'hlpdm7ae' /* Neon Sci-fi Lady */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        'ucbp4dso' /* Stormy Night */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                Stack(
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
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
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
                                                                                        '0i4jkjr8' /* Tree House */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Inter',
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            fontSize: 12.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                        carouselController:
                                                                            _model.carouselController2 ??=
                                                                                CarouselController(),
                                                                        options:
                                                                            CarouselOptions(
                                                                          initialPage:
                                                                              1,
                                                                          viewportFraction:
                                                                              0.3,
                                                                          disableCenter:
                                                                              true,
                                                                          enlargeCenterPage:
                                                                              true,
                                                                          enlargeFactor:
                                                                              0.3,
                                                                          enableInfiniteScroll:
                                                                              false,
                                                                          scrollDirection:
                                                                              Axis.horizontal,
                                                                          autoPlay:
                                                                              false,
                                                                          onPageChanged: (index, _) =>
                                                                              _model.carouselCurrentIndex2 = index,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
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
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    '78w42pdd' /* Step 3 */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        color: const Color(0xFF406AFF),
                                                                                        fontSize: 15.0,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'ksoicwgc' /*  : Number of Images */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    fontWeight: FontWeight.bold,
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
                                                                            19.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '0dudp1sm' /* Select number of images to gen... */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                fontSize: 12.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Stack(
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.00, 0.00),
                                                                              child: Slider(
                                                                                activeColor: const Color(0xFF0957DE),
                                                                                inactiveColor: FlutterFlowTheme.of(context).alternate,
                                                                                min: 0.0,
                                                                                max: 8.0,
                                                                                value: _model.sliderValue2 ??= 5.0,
                                                                                divisions: 8,
                                                                                onChanged: (newValue) {
                                                                                  setState(() => _model.sliderValue2 = newValue);
                                                                                },
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 37.0, 0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'psmkdbu3' /* 1 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            fontSize: 11.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'xjfzlg9i' /* 2 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '7r64hsfd' /* 3 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'nzniw92v' /* 4 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'dg2v20ot' /* 5 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'yk6prfxv' /* 6 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 11.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '4fkglfye' /* 7 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                  ),
                                                                                  Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '4l0uua91' /* 8 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          fontSize: 10.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '0b35v2oj' /* 9 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            fontSize: 10.0,
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
                                                                'jbxpfp8o' /* Generate ( 6 Credits ) */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 396.0,
                                                                height: 48.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFF406AFF),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x7B406AFF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
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
                                            10.0, 0.0, 0.0, 0.0),
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
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: const Color(0xFF406AFF),
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4moto873' /*  : Add QR Code Content * */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 11.0,
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                                      70.0),
                                                          child:
                                                              SingleChildScrollView(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  height: 103.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: const Color(
                                                                          0xFFE4E4E4),
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
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
                                                                              Container(
                                                                            width:
                                                                                304.0,
                                                                            height:
                                                                                37.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(-1.00, 0.00),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ijy2aqg5' /* Example : https://www.example.... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      fontSize: 12.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              double.infinity,
                                                                          child:
                                                                              TextFormField(
                                                                            controller:
                                                                                _model.uploadLinkController,
                                                                            focusNode:
                                                                                _model.uploadLinkFocusNode,
                                                                            onChanged: (_) =>
                                                                                EasyDebounce.debounce(
                                                                              '_model.uploadLinkController',
                                                                              const Duration(milliseconds: 2000),
                                                                              () => setState(() {}),
                                                                            ),
                                                                            textCapitalization:
                                                                                TextCapitalization.none,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                  ),
                                                                              alignLabelWithHint: false,
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                'xkxogh0h' /* https://www.example.com/my-lon... */,
                                                                              ),
                                                                              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                    color: const Color(0xB36F6F6F),
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                              enabledBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xB36F6F6F),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedBorder: OutlineInputBorder(
                                                                                borderSide: const BorderSide(
                                                                                  color: Color(0xFF0957DE),
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              errorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                              focusedErrorBorder: OutlineInputBorder(
                                                                                borderSide: BorderSide(
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  width: 1.0,
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(8.0),
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
                                                                            textAlign:
                                                                                TextAlign.justify,
                                                                            cursorColor:
                                                                                const Color(0xFF0957DE),
                                                                            validator:
                                                                                _model.uploadLinkControllerValidator.asValidator(context),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            27.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaleFactor:
                                                                          MediaQuery.of(context)
                                                                              .textScaleFactor,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'd6glvjtr' /* Step 2 */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: const Color(0xFF406AFF),
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'widwzzgf' /* : Upload Photos */,
                                                                            ),
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inter',
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'tjq72tz6' /* Background Image */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
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
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .uploadbuttonModel1,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        const UploadbuttonWidget(),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'uvvcvih1' /* QR Scale */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            85.0,
                                                                        height:
                                                                            85.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                const Color(0xFF5A7FFF),
                                                                            width:
                                                                                1.5,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.00,
                                                                              0.00),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/Scale_1.jpg',
                                                                              width: 85.0,
                                                                              height: 85.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              85.0,
                                                                          height:
                                                                              85.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFE4E4E4),
                                                                              width: 1.5,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                ClipRRect(
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
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              85.0,
                                                                          height:
                                                                              85.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFE4E4E4),
                                                                              width: 1.5,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                ClipRRect(
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
                                                                    ],
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'x6a4nps8' /* Middle Logo (Optional) */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            15.0,
                                                                            30.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          368.0,
                                                                      height:
                                                                          220.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      alignment: const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              10.0,
                                                                              5.0,
                                                                              10.0),
                                                                          child:
                                                                              GridView(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            gridDelegate:
                                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                                              crossAxisCount: 5,
                                                                              crossAxisSpacing: 10.0,
                                                                              mainAxisSpacing: 15.0,
                                                                              childAspectRatio: 1.0,
                                                                            ),
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFF406AFF),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                            ],
                                                                          ),
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
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .uploadbuttonModel2,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        const UploadbuttonWidget(),
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
                                                                'jf7tgrkg' /* Generate ( 60 Credits ) */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 396.0,
                                                                height: 48.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFF406AFF),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x7B406AFF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
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
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE4E4E4),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    alignment:
                                                                        const AlignmentDirectional(
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
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
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
                                                                                      mediaSource: MediaSource.photoGallery,
                                                                                      multiImage: false,
                                                                                    );
                                                                                    if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                      setState(() => _model.isDataUploading2 = true);
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
                                                                                        _model.isDataUploading2 = false;
                                                                                      }
                                                                                      if (selectedUploadedFiles.length == selectedMedia.length) {
                                                                                        setState(() {
                                                                                          _model.uploadedLocalFile2 = selectedUploadedFiles.first;
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
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      fontSize: 10.0,
                                                                                                      fontWeight: FontWeight.w600,
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
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                      fontSize: 8.0,
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
                                                                                                  fontFamily: 'Inter',
                                                                                                  fontSize: 10.0,
                                                                                                  fontWeight: FontWeight.w500,
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
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaleFactor:
                                                                          MediaQuery.of(context)
                                                                              .textScaleFactor,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'qll7p8s6' /* Step 2 */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                  color: const Color(0xFF406AFF),
                                                                                  fontSize: 15.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'zdqysgf4' /* : Upload Photos */,
                                                                            ),
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Inter',
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'mn3xdv4i' /* Background Image */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
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
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .uploadbuttonModel3,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        const UploadbuttonWidget(),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'c3zhvt12' /* QR Scale */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            85.0,
                                                                        height:
                                                                            85.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(10.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                const Color(0xFF5A7FFF),
                                                                            width:
                                                                                1.5,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.00,
                                                                              0.00),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/Scale_1.jpg',
                                                                              width: 85.0,
                                                                              height: 85.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              85.0,
                                                                          height:
                                                                              85.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFE4E4E4),
                                                                              width: 1.5,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                ClipRRect(
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
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              85.0,
                                                                          height:
                                                                              85.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(10.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: const Color(0xFFE4E4E4),
                                                                              width: 1.5,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.00, 0.00),
                                                                            child:
                                                                                ClipRRect(
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
                                                                    ],
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.00,
                                                                          -1.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            25.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '5d71le5d' /* Middle Logo (Optional) */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            15.0,
                                                                            30.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          368.0,
                                                                      height:
                                                                          220.0,
                                                                      decoration:
                                                                          const BoxDecoration(),
                                                                      alignment: const AlignmentDirectional(
                                                                          0.00,
                                                                          0.00),
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.00,
                                                                            0.00),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              10.0,
                                                                              5.0,
                                                                              10.0),
                                                                          child:
                                                                              GridView(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            gridDelegate:
                                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                                              crossAxisCount: 5,
                                                                              crossAxisSpacing: 10.0,
                                                                              mainAxisSpacing: 15.0,
                                                                              childAspectRatio: 1.0,
                                                                            ),
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFF406AFF),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.00, 0.00),
                                                                                child: Container(
                                                                                  width: 60.0,
                                                                                  height: 60.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(10.0),
                                                                                    border: Border.all(
                                                                                      color: const Color(0xFFE4E4E4),
                                                                                      width: 1.5,
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10.0),
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
                                                                            ],
                                                                          ),
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
                                                                          0.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .uploadbuttonModel4,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        const UploadbuttonWidget(),
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
                                                                              .uploadedLocalFile2
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
                                                                'i3mvhhsf' /* Generate ( 60 Credits ) */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 396.0,
                                                                height: 48.0,
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                                iconPadding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: const Color(
                                                                    0xFF406AFF),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Plus Jakarta Sans',
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                elevation: 3.0,
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26.0),
                                                                disabledColor:
                                                                    const Color(
                                                                        0x7B406AFF),
                                                                disabledTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
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
