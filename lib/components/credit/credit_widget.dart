import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'credit_model.dart';
export 'credit_model.dart';

class CreditWidget extends StatefulWidget {
  const CreditWidget({super.key});

  @override
  _CreditWidgetState createState() => _CreditWidgetState();
}

class _CreditWidgetState extends State<CreditWidget> {
  late CreditModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreditModel());
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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          context.pushNamed('Buy_Credit');
        },
        child: Container(
          width: 70.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(30.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: const Color(0xFFE4E4E4),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '6x8qo4eu' /* 60 */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              const Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Icon(
                    Icons.monetization_on_outlined,
                    color: Color(0xFF406AFF),
                    size: 24.0,
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
