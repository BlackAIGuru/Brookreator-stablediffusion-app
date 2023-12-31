import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'sign_in_model.dart';
export 'sign_in_model.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  late SignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInModel());

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
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
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20.0, 3.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: FaIcon(
                            FontAwesomeIcons.chevronLeft,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'hojft2la' /* Sign In */,
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
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/Openapp.png',
                      width: 260.0,
                      height: 257.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 10.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'l7owweah' /* Please sign in to your account */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'NotoSansThai',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.always,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: SizedBox(
                                  width: 327.0,
                                  child: TextFormField(
                                    controller: _model.emailController,
                                    focusNode: _model.emailFocusNode,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'zoroqaw3' /* Email */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'NotoSansThai',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            useGoogleFonts: false,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'p7v5p7hr' /* Enter Your Email */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'NotoSansThai',
                                            color: const Color(0xB36F6F6F),
                                            fontSize: 13.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFF0957DE),
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'NotoSansThai',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          useGoogleFonts: false,
                                        ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: const Color(0xFF0957DE),
                                    validator: _model.emailControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: SizedBox(
                                  width: 327.0,
                                  child: TextFormField(
                                    controller: _model.passwordController,
                                    focusNode: _model.passwordFocusNode,
                                    autofillHints: const [AutofillHints.password],
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'z5porhj1' /* Password */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'NotoSansThai',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 14.0,
                                            useGoogleFonts: false,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'w1fimk6o' /* Password */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'NotoSansThai',
                                            color: const Color(0xB36F6F6F),
                                            fontSize: 13.0,
                                            useGoogleFonts: false,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0xFF0957DE),
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'NotoSansThai',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          useGoogleFonts: false,
                                        ),
                                    textAlign: TextAlign.start,
                                    cursorColor: const Color(0xFF0957DE),
                                    validator: _model
                                        .passwordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 30.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Forgotpassword');
                              },
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'pxmchqtr' /* Forgot Password? */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'NotoSansThai',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 30.0, 10.0, 20.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.accessToken = await actions.signIn(
                                  (_model.emailFocusNode?.hasFocus ?? false)
                                      .toString(),
                                  _model.passwordController.text,
                                );
                                if (_model.accessToken != null &&
                                    _model.accessToken != '') {
                                  setState(() {
                                    FFAppState().accessToken =
                                        _model.accessToken!;
                                  });

                                  context.pushNamed('HomePage');
                                }

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'h6trimte' /* Sign In */,
                              ),
                              options: FFButtonOptions(
                                width: 320.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'NotoSansThai',
                                      color: Colors.white,
                                      useGoogleFonts: false,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 6.0)),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '2u35ewui' /* Or sign in using your social p... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              useGoogleFonts: false,
                              lineHeight: 1.4,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 15.0),
                          child: SizedBox(
                            width: 230.0,
                            height: 44.0,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ofmksrx0' /* Sign Up with Google */,
                                    ),
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.transparent,
                                      size: 20.0,
                                    ),
                                    options: const FFButtonOptions(
                                      width: double.infinity,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                      color: Colors.white,
                                      textStyle: TextStyle(
                                        fontFamily: 'NotoSansThai',
                                        color: Color(0xFF606060),
                                        fontSize: 14.0,
                                      ),
                                      elevation: 4.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.83, 0.0),
                                  child: Container(
                                    width: 22.0,
                                    height: 22.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      'assets/images/google.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '9n4exasd' /* Don’t have account?  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('SignUp');
                            },
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '5prn0slv' /* Create Account */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                    lineHeight: 1.4,
                                  ),
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
        ),
      ),
    );
  }
}
