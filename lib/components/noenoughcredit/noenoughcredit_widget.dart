import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'noenoughcredit_model.dart';
export 'noenoughcredit_model.dart';

class NoenoughcreditWidget extends StatefulWidget {
  const NoenoughcreditWidget({super.key});

  @override
  State<NoenoughcreditWidget> createState() => _NoenoughcreditWidgetState();
}

class _NoenoughcreditWidgetState extends State<NoenoughcreditWidget> {
  late NoenoughcreditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoenoughcreditModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'vdd2pgn0' /* Not Enough Credits */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'NotoSansThai',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
            Text(
              FFLocalizations.of(context).getText(
                '5eh3hngy' /* You do not have enough credits... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'NotoSansThai',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
