import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pageview_model.dart';
export 'pageview_model.dart';

class PageviewWidget extends StatefulWidget {
  const PageviewWidget({super.key});

  @override
  _PageviewWidgetState createState() => _PageviewWidgetState();
}

class _PageviewWidgetState extends State<PageviewWidget> {
  late PageviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageviewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: PageView(
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Openappscreen.png',
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'c5xnegfs' /* Elevating Creativity Through t... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).height <=
                                          750.0) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          800.0) {
                                        return 23.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          850.0) {
                                        return 25.0;
                                      } else {
                                        return 27.0;
                                      }
                                    }(),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'f59ilcd9' /* Listen to the latest music rel... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/TexttoImage.png',
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'a1pemtg8' /* Text to Image */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).height <=
                                          750.0) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          800.0) {
                                        return 23.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          850.0) {
                                        return 25.0;
                                      } else {
                                        return 27.0;
                                      }
                                    }(),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'vfgyn5xd' /* Easily create an image from sc... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/AIpotrait.png',
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '1kiogx7a' /* AI Portrait */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).height <=
                                          750.0) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          800.0) {
                                        return 23.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          850.0) {
                                        return 25.0;
                                      } else {
                                        return 27.0;
                                      }
                                    }(),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'fgxp6qur' /* Train your own AI model to cre... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/AIvideo.png',
                                  width: MediaQuery.sizeOf(context).width * 0.6,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '2brcooge' /* AI Video (15 sec) */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).height <=
                                          750.0) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          800.0) {
                                        return 23.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .height <=
                                          850.0) {
                                        return 25.0;
                                      } else {
                                        return 27.0;
                                      }
                                    }(),
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 5.0, 20.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '6ducqbc1' /* Change your video to your favo... */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
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
          ),
          Align(
            alignment: const AlignmentDirectional(0.00, 1.00),
            child: smooth_page_indicator.SmoothPageIndicator(
              controller: _model.pageViewController ??=
                  PageController(initialPage: 0),
              count: 4,
              axisDirection: Axis.horizontal,
              onDotClicked: (i) async {
                await _model.pageViewController!.animateToPage(
                  i,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              effect: const smooth_page_indicator.ExpandingDotsEffect(
                expansionFactor: 3.0,
                spacing: 8.0,
                radius: 16.0,
                dotWidth: 16.0,
                dotHeight: 8.0,
                dotColor: Color(0xFFC3D4E9),
                activeDotColor: Color(0xFF2781FB),
                paintStyle: PaintingStyle.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
