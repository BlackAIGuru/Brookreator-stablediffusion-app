import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'confirm_success_model.dart';
export 'confirm_success_model.dart';

class ConfirmSuccessWidget extends StatefulWidget {
  const ConfirmSuccessWidget({super.key});

  @override
  State<ConfirmSuccessWidget> createState() => _ConfirmSuccessWidgetState();
}

class _ConfirmSuccessWidgetState extends State<ConfirmSuccessWidget> {
  late ConfirmSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmSuccessModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.85,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Lottie.asset(
              'assets/lottie_animations/Animation_-_1698194164750.json',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
              repeat: false,
              animate: true,
            ),
            Text(
              FFLocalizations.of(context).getText(
                '0djyoyvo' /* Successfully Verified! */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'NotoSansThai',
                    fontSize: 30.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.goNamed('SignIn');
              },
              text: FFLocalizations.of(context).getText(
                'isk58ndp' /* Go to Sign In */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'NotoSansThai',
                      color: Colors.white,
                      letterSpacing: 0.0,
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
          ]
              .divide(const SizedBox(height: 15.0))
              .addToStart(const SizedBox(height: 20.0))
              .addToEnd(const SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
