import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'waiting_portrait_model.dart';
export 'waiting_portrait_model.dart';

class WaitingPortraitWidget extends StatefulWidget {
  const WaitingPortraitWidget({super.key});

  @override
  State<WaitingPortraitWidget> createState() => _WaitingPortraitWidgetState();
}

class _WaitingPortraitWidgetState extends State<WaitingPortraitWidget> {
  late WaitingPortraitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaitingPortraitModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        color: Color(0xCA000000),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: Image.asset(
                    'assets/images/_icon__cancel_.png',
                    width: 19.0,
                    height: 19.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: const Color(0x00FFFFFF),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0x00FFFFFF),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Lottie.asset(
                          'assets/lottie_animations/Animation_-_1698194538579.json',
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                          animate: true,
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '9ur2c4uz' /* ~40 Min */,
                            ),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'NotoSansThai',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 15.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vyj7bem7' /* Generating... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'NotoSansThai',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 50.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'zjrc6f1f' /* AI Portrait will take about 25... */,
                      ),
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'NotoSansThai',
                            fontSize: 13.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.goNamed('HomePage');
                            },
                            text: FFLocalizations.of(context).getText(
                              '5jv4rbcp' /* Try More */,
                            ),
                            options: FFButtonOptions(
                              width: 134.0,
                              height: 31.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF4D74FF),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Color(0xFF5A7FFF),
                                width: 1.2,
                              ),
                              borderRadius: BorderRadius.circular(27.0),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            context.goNamed('MyPicture');
                          },
                          text: FFLocalizations.of(context).getText(
                            '4qeajisn' /* Go to My Pictures */,
                          ),
                          options: FFButtonOptions(
                            width: 134.0,
                            height: 31.0,
                            padding: const EdgeInsets.all(0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'NotoSansThai',
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Color(0xFF5A7FFF),
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                        ),
                      ].divide(const SizedBox(width: 18.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
