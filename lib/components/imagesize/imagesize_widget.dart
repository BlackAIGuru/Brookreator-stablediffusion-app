import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'imagesize_model.dart';
export 'imagesize_model.dart';

class ImagesizeWidget extends StatefulWidget {
  const ImagesizeWidget({super.key});

  @override
  _ImagesizeWidgetState createState() => _ImagesizeWidgetState();
}

class _ImagesizeWidgetState extends State<ImagesizeWidget> {
  late ImagesizeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagesizeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      child: Container(
        width: double.infinity,
        height: 180.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: const AlignmentDirectional(0.00, 0.00),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '8zjuhx80' /* Width (px) */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '2cup3of9' /* The width of the generated ima... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: Slider(
                      activeColor: const Color(0xFF0957DE),
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: 0.0,
                      max: 2560.0,
                      value: _model.sliderValue1 ??= 640.0,
                      divisions: 8,
                      onChanged: (newValue) {
                        newValue = double.parse(newValue.toStringAsFixed(0));
                        setState(() => _model.sliderValue1 = newValue);
                      },
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    valueOrDefault<String>(
                      _model.sliderValue1?.toString(),
                      '640',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                        ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-1.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ju5c4eza' /* Height (px) */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 0.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fpjsyedb' /* The heigth of the generated im... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: SizedBox(
                    width: double.infinity,
                    child: Slider(
                      activeColor: const Color(0xFF0957DE),
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: 0.0,
                      max: 2560.0,
                      value: _model.sliderValue2 ??= 640.0,
                      divisions: 8,
                      onChanged: (newValue) {
                        newValue = double.parse(newValue.toStringAsFixed(0));
                        setState(() => _model.sliderValue2 = newValue);
                      },
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    valueOrDefault<String>(
                      _model.sliderValue2?.toString(),
                      '640',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
