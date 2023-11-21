import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'slidebar_model.dart';
export 'slidebar_model.dart';

class SlidebarWidget extends StatefulWidget {
  const SlidebarWidget({super.key});

  @override
  _SlidebarWidgetState createState() => _SlidebarWidgetState();
}

class _SlidebarWidgetState extends State<SlidebarWidget> {
  late SlidebarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SlidebarModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.00, 0.00),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '27y9ohxp' /* Step 3 */,
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
                    '4fvankfb' /*  : Number of Images */,
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
          alignment: const AlignmentDirectional(-1.00, -1.00),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(19.0, 5.0, 0.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'xxpp0td6' /* Select number of images to gen... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    fontSize: 12.0,
                  ),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
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
                    value: _model.sliderValue ??= 5.0,
                    divisions: 8,
                    onChanged: (newValue) {
                      setState(() => _model.sliderValue = newValue);
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'sx4pbo47' /* 1 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: 10.0,
                                  ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'vp4jqt0k' /* 2 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'y8fj65p9' /* 3 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'czhixkcl' /* 4 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'enmlai99' /* 5 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'qgvgs4gs' /* 6 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'r9mtqoss' /* 7 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          's3k54gki' /* 8 */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontSize: 10.0,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'pwf34jas' /* 9 */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
    );
  }
}
