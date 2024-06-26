import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'my_picture_model.dart';
export 'my_picture_model.dart';

class MyPictureWidget extends StatefulWidget {
  const MyPictureWidget({super.key});

  @override
  State<MyPictureWidget> createState() => _MyPictureWidgetState();
}

class _MyPictureWidgetState extends State<MyPictureWidget>
    with TickerProviderStateMixin {
  late MyPictureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyPictureModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 3.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: FaIcon(
                                FontAwesomeIcons.chevronLeft,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 22.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '2dj0k2yh' /* My Pictures */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'NotoSansThai',
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(0.0, 0),
                          child: TabBar(
                            labelColor: FlutterFlowTheme.of(context).primary,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).primaryText,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'NotoSansThai',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: false,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            indicatorColor:
                                FlutterFlowTheme.of(context).primary,
                            indicatorWeight: 3.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 10.0),
                            tabs: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 7.0, 0.0),
                                    child: Icon(
                                      Icons.grid_view,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '5ttsupkj' /* My Pictures */,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 7.0, 0.0),
                                    child: Icon(
                                      Icons.favorite_border,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '91810kkp' /* Favourite */,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              KeepAliveWidgetWrapper(
                                builder: (context) =>
                                    FutureBuilder<ApiCallResponse>(
                                  future:
                                      BrookreatorGroup.getAllImagesCall.call(
                                    accessToken: FFAppState().AccessToken,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return const Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0xFF1371FF),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetAllImagesResponse =
                                        snapshot.data!;
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'l2lqzkc2' /* All */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '0gu8q6iq' /* Text to Image */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '3suc45w9' /* AI Portrait */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'fcosdq2g' /* AI Video */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ntguwb39' /* QR Generator */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'ksky8m77' /* QR Classic */,
                                              ))
                                            ],
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.mypicturechoiceValue =
                                                      val?.firstOrNull);
                                              _model.mypicturefiltervalue = () {
                                                if ((_model.mypicturechoiceValue ==
                                                        'Text to Image') ||
                                                    (_model.mypicturechoiceValue ==
                                                        'ข้อความเป็นรูปภาพ')) {
                                                  return 'TEXT-TO-IMAGE';
                                                } else if ((_model
                                                            .mypicturechoiceValue ==
                                                        'AI Portrait') ||
                                                    (_model.mypicturechoiceValue ==
                                                        'ภาพบุคคล AI')) {
                                                  return 'AI-PORTRAIT';
                                                } else if ((_model
                                                            .mypicturechoiceValue ==
                                                        'AI Video') ||
                                                    (_model.mypicturechoiceValue ==
                                                        'วิดีโอเอไอ')) {
                                                  return 'VDO-TO-VDO';
                                                } else if ((_model
                                                            .mypicturechoiceValue ==
                                                        'QR Classic') ||
                                                    (_model.mypicturechoiceValue ==
                                                        'QR คลาสสิค')) {
                                                  return 'QRCODE-LOGO';
                                                } else if ((_model
                                                            .mypicturechoiceValue ==
                                                        'QR Generator') ||
                                                    (_model.mypicturechoiceValue ==
                                                        'เครื่องกำเนิด QR')) {
                                                  return 'AI-QRCODE';
                                                } else {
                                                  return '1';
                                                }
                                              }();
                                              setState(() {});
                                            },
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              iconSize: 18.0,
                                              elevation: 4.0,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            chipSpacing: 12.0,
                                            rowSpacing: 12.0,
                                            multiselect: false,
                                            initialized:
                                                _model.mypicturechoiceValue !=
                                                    null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .mypicturechoiceValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'yx5o8805' /* All */,
                                                )
                                              ],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final mypicture = BrookreatorGroup
                                                    .getAllImagesCall
                                                    .url(
                                                      listViewGetAllImagesResponse
                                                          .jsonBody,
                                                    )
                                                    ?.where((e) => (_model
                                                                    .mypicturefiltervalue ==
                                                                'All') ||
                                                            (_model.mypicturefiltervalue ==
                                                                'ทั้งหมด')
                                                        ? true
                                                        : (_model
                                                                .mypicturefiltervalue ==
                                                            getJsonField(
                                                              e,
                                                              r'''$.feature''',
                                                            ).toString()))
                                                    .toList()
                                                    .toList() ??
                                                [];
                                            return MasonryGridView.builder(
                                              gridDelegate:
                                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 10.0,
                                              itemCount: mypicture.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (context, mypictureIndex) {
                                                final mypictureItem =
                                                    mypicture[mypictureIndex];
                                                return Stack(
                                                  children: [
                                                    FlutterFlowMediaDisplay(
                                                      path: mypictureItem,
                                                      imageBuilder: (path) =>
                                                          ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          path,
                                                          width:
                                                              double.infinity,
                                                          height: random_data
                                                              .randomInteger(
                                                                  100, 200)
                                                              .toDouble(),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      videoPlayerBuilder: (path) =>
                                                          FlutterFlowVideoPlayer(
                                                        path: path,
                                                        width: 300.0,
                                                        autoPlay: false,
                                                        looping: true,
                                                        showControls: true,
                                                        allowFullScreen: true,
                                                        allowPlaybackSpeedMenu:
                                                            false,
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              KeepAliveWidgetWrapper(
                                builder: (context) =>
                                    FutureBuilder<ApiCallResponse>(
                                  future: BrookreatorGroup.getAllFavouritesCall
                                      .call(
                                    accessToken: FFAppState().AccessToken,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return const Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              Color(0xFF1371FF),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewGetAllFavouritesResponse =
                                        snapshot.data!;
                                    return ListView(
                                      padding: EdgeInsets.zero,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: FlutterFlowChoiceChips(
                                            options: [
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'xynxi1s6' /* All */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'rx6vsfil' /* Text to Image */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'wv4mwaam' /* AI Portrait */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '7p9ksi9m' /* AI Video */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '4ug6f7qv' /* QR Generator */,
                                              )),
                                              ChipData(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'wkvj0bbm' /* QR Classic */,
                                              ))
                                            ],
                                            onChanged: (val) async {
                                              setState(() =>
                                                  _model.favouritechoiceValue =
                                                      val?.firstOrNull);
                                              _model.favouritefiltervalue = () {
                                                if ((_model.favouritechoiceValue ==
                                                        'Text to Image') ||
                                                    (_model.favouritechoiceValue ==
                                                        'ข้อความเป็นรูปภาพ')) {
                                                  return 'TEXT-TO-IMAGE';
                                                } else if ((_model
                                                            .favouritechoiceValue ==
                                                        'AI Portrait') ||
                                                    (_model.favouritechoiceValue ==
                                                        'ภาพบุคคล AI')) {
                                                  return 'AI-PORTRAIT';
                                                } else if ((_model
                                                            .favouritechoiceValue ==
                                                        'AI Video') ||
                                                    (_model.favouritechoiceValue ==
                                                        'วิดีโอเอไอ')) {
                                                  return 'VDO-TO-VDO';
                                                } else if ((_model
                                                            .favouritechoiceValue ==
                                                        'QR Generator') ||
                                                    (_model.favouritechoiceValue ==
                                                        'เครื่องกำเนิด QR')) {
                                                  return 'AI-QRCODE';
                                                } else if ((_model
                                                            .favouritechoiceValue ==
                                                        'QR Classic') &&
                                                    (_model.favouritechoiceValue ==
                                                        'QR คลาสสิค')) {
                                                  return 'QRCODE-LOGO';
                                                } else {
                                                  return '1';
                                                }
                                              }();
                                              setState(() {});
                                            },
                                            selectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  const Color(0xFF3587D7),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              iconSize: 18.0,
                                              elevation: 4.0,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            unselectedChipStyle: ChipStyle(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'NotoSansThai',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    useGoogleFonts: false,
                                                  ),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              iconSize: 18.0,
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            chipSpacing: 12.0,
                                            rowSpacing: 12.0,
                                            multiselect: false,
                                            initialized:
                                                _model.favouritechoiceValue !=
                                                    null,
                                            alignment: WrapAlignment.start,
                                            controller: _model
                                                    .favouritechoiceValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cqo6i4fh' /* All */,
                                                )
                                              ],
                                            ),
                                            wrapped: true,
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final favourite = BrookreatorGroup
                                                    .getAllFavouritesCall
                                                    .images(
                                                      listViewGetAllFavouritesResponse
                                                          .jsonBody,
                                                    )
                                                    ?.where((e) => (_model
                                                                    .favouritechoiceValue ==
                                                                'All') ||
                                                            (_model.favouritechoiceValue ==
                                                                'ทั้งหมด')
                                                        ? true
                                                        : (_model
                                                                .favouritefiltervalue ==
                                                            getJsonField(
                                                              e,
                                                              r'''$.feature''',
                                                            ).toString()))
                                                    .toList()
                                                    .toList() ??
                                                [];
                                            return MasonryGridView.builder(
                                              gridDelegate:
                                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                              ),
                                              crossAxisSpacing: 10.0,
                                              mainAxisSpacing: 10.0,
                                              itemCount: favourite.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (context, favouriteIndex) {
                                                final favouriteItem =
                                                    favourite[favouriteIndex];
                                                return SizedBox(
                                                  width: double.infinity,
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          getJsonField(
                                                            favouriteItem,
                                                            r'''$.url''',
                                                          ).toString(),
                                                          width:
                                                              double.infinity,
                                                          height: random_data
                                                              .randomInteger(
                                                                  100, 200)
                                                              .toDouble(),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
