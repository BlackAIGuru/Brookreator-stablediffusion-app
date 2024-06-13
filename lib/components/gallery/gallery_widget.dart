import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'gallery_model.dart';
export 'gallery_model.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({super.key});

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget>
    with TickerProviderStateMixin {
  late GalleryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GalleryModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: const Alignment(0.0, 0),
          child: FlutterFlowButtonTabBar(
            useToggleButtonStyle: true,
            labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'NotoSansThai',
                  fontSize: 11.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: false,
                ),
            unselectedLabelStyle: const TextStyle(),
            labelColor: FlutterFlowTheme.of(context).primaryBackground,
            unselectedLabelColor: FlutterFlowTheme.of(context).primaryText,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            unselectedBackgroundColor: FlutterFlowTheme.of(context).alternate,
            borderColor: FlutterFlowTheme.of(context).primaryBackground,
            unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 5.0,
            borderRadius: 20.0,
            elevation: 0.0,
            buttonMargin: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            tabs: [
              Tab(
                text: FFLocalizations.of(context).getText(
                  'vt7w39k7' /* All */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'zegvkznd' /* Text to Image */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  't1mh6kcx' /* AI Portrait */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'clp8uj6i' /* AI Video */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'tapgaa06' /* QR Generator */,
                ),
              ),
            ],
            controller: _model.tabBarController,
            onTap: (i) async {
              [
                () async {},
                () async {},
                () async {},
                () async {},
                () async {}
              ][i]();
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _model.tabBarController,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MasonryGridView.builder(
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      crossAxisSpacing: 9.0,
                      mainAxisSpacing: 9.0,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return [
                          () => Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        '',
                                        width: 120.0,
                                        height: 105.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 120.0,
                                      height: 105.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xB3000000),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 17.0, 0.0, 0.0),
                                      child: Container(
                                        width: 43.0,
                                        height: 43.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color(0xFF4D74FF),
                                            width: 3.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 33.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'xzwajxt0' /* ~2 min */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 8.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 69.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'm8lljh53' /* Generating... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 7.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 80.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '2wh65zu7' /* Text to Image */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 6.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          () => Stack(
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        '',
                                        width: 118.0,
                                        height: 152.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 118.0,
                                      height: 152.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xB3000000),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 38.0, 0.0, 0.0),
                                      child: Container(
                                        width: 43.0,
                                        height: 43.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0x00FFFFFF),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color(0xFF4D74FF),
                                            width: 3.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 100.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ssejxo6q' /* AI Video (15 sec) */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 6.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 88.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '0w7636ue' /* Generating... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 7.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 54.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '42sh4p4l' /* ~60 min */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              fontSize: 8.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        ][index]();
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MasonryGridView.builder(
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      crossAxisSpacing: 9.0,
                      mainAxisSpacing: 9.0,
                      itemCount: 0,
                      itemBuilder: (context, index) {
                        return [][index]();
                      },
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MasonryGridView.builder(
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      crossAxisSpacing: 9.0,
                      mainAxisSpacing: 9.0,
                      itemCount: 0,
                      itemBuilder: (context, index) {
                        return [][index]();
                      },
                    ),
                  ),
                ],
              ),
              Container(),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MasonryGridView.builder(
                      gridDelegate:
                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      crossAxisSpacing: 9.0,
                      mainAxisSpacing: 9.0,
                      itemCount: 0,
                      itemBuilder: (context, index) {
                        return [][index]();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
