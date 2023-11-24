import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'videoresult_model.dart';
export 'videoresult_model.dart';

class VideoresultWidget extends StatefulWidget {
  const VideoresultWidget({super.key});

  @override
  _VideoresultWidgetState createState() => _VideoresultWidgetState();
}

class _VideoresultWidgetState extends State<VideoresultWidget> {
  late VideoresultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoresultModel());
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
        height: 780.0,
        constraints: const BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          border: Border.all(
            color: const Color(0xFFE0E3E7),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'edidf39d' /* Cartoon */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'NotoSansThai',
                                color: const Color(0xFF2D2D2D),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.00, -1.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 15.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: Stack(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/269d7ca9-2c5e-4c64-a5bf-6763fd545c5b_1_(1).png',
                              width: 382.0,
                              height: 664.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, 1.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                18.0, 600.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Group_415.png',
                                width: 13.62,
                                height: 14.94,
                                fit: BoxFit.cover,
                                alignment: const Alignment(-1.00, -1.00),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, 1.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                310.0, 600.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/Group_426.png',
                                width: 17.78,
                                height: 15.8,
                                fit: BoxFit.cover,
                                alignment: const Alignment(-1.00, -1.00),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, 1.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 615.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'u1ib66n7' /* 00:02 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, 1.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                265.0, 615.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'qa0zoea5' /* 00:15 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.00, -1.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.98, 600.0, 0.0, 0.0),
                            child: LinearPercentIndicator(
                              percent: 0.1,
                              width: 260.0,
                              lineHeight: 5.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor:
                                  FlutterFlowTheme.of(context).primary,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).accent4,
                              barRadius: const Radius.circular(10.0),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  wrapWithModel(
                    model: _model.buttongroup1Model,
                    updateCallback: () => setState(() {}),
                    child: const Buttongroup1Widget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
