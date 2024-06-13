import '/backend/api_requests/api_calls.dart';
import '/components/buttongroup_2/buttongroup2_widget.dart';
import '/components/deleteimage/deleteimage_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'q_r_code_model.dart';
export 'q_r_code_model.dart';

class QRCodeWidget extends StatefulWidget {
  const QRCodeWidget({
    super.key,
    this.qrResult,
  });

  final List<String>? qrResult;

  @override
  State<QRCodeWidget> createState() => _QRCodeWidgetState();
}

class _QRCodeWidgetState extends State<QRCodeWidget> {
  late QRCodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRCodeModel());
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
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 650.0,
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
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'lh3nhfdb' /* QR Code Generator */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 23.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.cancel,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: 366.0,
                          height: 338.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.network(
                                      widget
                                          .qrResult![_model.imagecurrentindex],
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: widget
                                        .qrResult![_model.imagecurrentindex],
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: widget.qrResult![_model.imagecurrentindex],
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  widget.qrResult![_model.imagecurrentindex],
                                  width: 366.0,
                                  height: 338.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ahu9xwr9' /* Download */,
                                    ),
                                    icon: Icon(
                                      Icons.file_download_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 17.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 109.0,
                                      height: double.infinity,
                                      padding: const EdgeInsets.all(0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'NotoSansThai',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.2,
                                      ),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().isFavourite =
                                            !FFAppState().isFavourite;
                                        setState(() {});
                                        if (FFAppState().isFavourite) {
                                          await actions.deleteFavourite(
                                            FFAppState().AccessToken,
                                            FFAppState().ImageId,
                                          );
                                        } else {
                                          _model.apiResultvco =
                                              await BrookreatorGroup
                                                  .addFavouritesCall
                                                  .call(
                                            accessToken:
                                                FFAppState().AccessToken,
                                          );
                                        }

                                        setState(() {});
                                      },
                                      child: Container(
                                        width: 33.0,
                                        height: 33.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: FFAppState().isFavourite
                                                ? const Color(0xBEFF5963)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                        ),
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Icon(
                                            Icons.favorite_sharp,
                                            color: FFAppState().isFavourite
                                                ? const Color(0xBEFF5963)
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            size: 19.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Builder(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await showAlignedDialog(
                                          context: context,
                                          isGlobal: false,
                                          avoidOverflow: true,
                                          targetAnchor: const AlignmentDirectional(
                                                  -1.0, 1.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          followerAnchor: const AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          builder: (dialogContext) {
                                            return Material(
                                              color: Colors.transparent,
                                              child: DeleteimageWidget(
                                                imageid: FFAppState().ImageId,
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      text: '',
                                      icon: const Icon(
                                        FFIcons.kbin,
                                        color: Color(0xCDFF5963),
                                        size: 15.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: 50.0,
                                        height: 28.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            7.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x42FF5963),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'NotoSansThai',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 60.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final qrresult = widget.qrResult?.toList() ?? [];
                    return SizedBox(
                      width: double.infinity,
                      height: 101.0,
                      child: CarouselSlider.builder(
                        itemCount: qrresult.length,
                        itemBuilder: (context, qrresultIndex, _) {
                          final qrresultItem = qrresult[qrresultIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.5, 0.0, 7.5, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                qrresultItem,
                                width: 101.0,
                                height: 101.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselController(),
                        options: CarouselOptions(
                          initialPage: max(0, min(0, qrresult.length - 1)),
                          viewportFraction: 0.3,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          autoPlay: false,
                          onPageChanged: (index, _) async {
                            _model.carouselCurrentIndex = index;
                            _model.imagecurrentindex =
                                _model.carouselCurrentIndex;
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: wrapWithModel(
                  model: _model.buttongroup2Model,
                  updateCallback: () => setState(() {}),
                  child: const Buttongroup2Widget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
