import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttongroup1_model.dart';
export 'buttongroup1_model.dart';

class Buttongroup1Widget extends StatefulWidget {
  const Buttongroup1Widget({super.key});

  @override
  _Buttongroup1WidgetState createState() => _Buttongroup1WidgetState();
}

class _Buttongroup1WidgetState extends State<Buttongroup1Widget> {
  late Buttongroup1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Buttongroup1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 33.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                'zfgqbfxi' /* Download */,
              ),
              icon: const Icon(
                Icons.file_download_outlined,
                color: Color(0xFF2781FB),
                size: 12.0,
              ),
              options: FFButtonOptions(
                width: 109.0,
                height: 31.12,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.transparent,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 12.0,
                    ),
                borderSide: const BorderSide(
                  color: Color(0xFF2781FB),
                  width: 1.2,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Flexible(
              child: Align(
                alignment: const AlignmentDirectional(-1.00, 0.00),
                child: ToggleIcon(
                  onPressed: () async {
                    setState(() => FFAppState().toggleselected =
                        !FFAppState().toggleselected);
                  },
                  value: FFAppState().toggleselected,
                  onIcon: const Icon(
                    Icons.favorite_sharp,
                    color: Color(0xFF0957DE),
                    size: 20.0,
                  ),
                  offIcon: Icon(
                    Icons.favorite_border,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, 0.00),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: '',
                icon: const Icon(
                  Icons.share_rounded,
                  color: Color(0xFF2781FB),
                  size: 20.0,
                ),
                options: FFButtonOptions(
                  width: 50.0,
                  height: 28.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20.0,
                      ),
                  borderSide: const BorderSide(
                    color: Color(0xFF5A7FFF),
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '',
                  icon: Icon(
                    Icons.keyboard_control,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: 50.0,
                    height: 28.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xCCC4C4C4),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 60.0,
                        ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
