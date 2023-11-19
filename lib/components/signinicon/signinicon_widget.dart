import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'signinicon_model.dart';
export 'signinicon_model.dart';

class SigniniconWidget extends StatefulWidget {
  const SigniniconWidget({super.key});

  @override
  _SigniniconWidgetState createState() => _SigniniconWidgetState();
}

class _SigniniconWidgetState extends State<SigniniconWidget> {
  late SigniniconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SigniniconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed('SignIn');
        },
        child: Container(
          width: 89.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(30.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: const Color(0xFFE4E4E4),
            ),
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'sivaokxw' /* Sign In */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Icon(
                      Icons.login,
                      color: Color(0xFF406AFF),
                      size: 20.0,
                    ),
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
