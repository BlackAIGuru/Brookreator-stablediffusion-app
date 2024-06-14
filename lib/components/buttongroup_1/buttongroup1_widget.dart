import '/a_iportrait/error_message/error_message_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/deleteimage/deleteimage_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'buttongroup1_model.dart';
export 'buttongroup1_model.dart';

class Buttongroup1Widget extends StatefulWidget {
  const Buttongroup1Widget({
    super.key,
    this.imageId,
    this.imageUrl,
  });

  final String? imageId;
  final String? imageUrl;

  @override
  State<Buttongroup1Widget> createState() => _Buttongroup1WidgetState();
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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
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
                child: Builder(
                  builder: (context) => Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.apiResultlk0 =
                            await BrookreatorGroup.downloadImageCall.call(
                          accessToken: FFAppState().AccessToken,
                          imageId: widget.imageId,
                        );
                        if (!(_model.apiResultlk0?.succeeded ?? true)) {
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: const AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: const ErrorMessageWidget(
                                  alertInfo: 'Download failed',
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }

                        setState(() {});
                      },
                      text: FFLocalizations.of(context).getText(
                        'zfgqbfxi' /* Download */,
                      ),
                      icon: Icon(
                        Icons.file_download_outlined,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 17.0,
                      ),
                      options: FFButtonOptions(
                        width: 110.0,
                        height: 35.0,
                        padding: const EdgeInsets.all(0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'NotoSansThai',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (_model.toggleselected) {
                          await actions.deleteFavourite(
                            FFAppState().AccessToken,
                            widget.imageId,
                          );
                        } else {
                          _model.apiResultvco =
                              await BrookreatorGroup.addFavouritesCall.call(
                            accessToken: FFAppState().AccessToken,
                            imageIds: widget.imageId,
                          );
                        }

                        _model.toggleselected = !_model.toggleselected;
                        setState(() {});

                        setState(() {});
                      },
                      child: Container(
                        width: 33.0,
                        height: 33.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: _model.toggleselected
                                ? const Color(0xCDFF5963)
                                : FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.favorite_sharp,
                            color: _model.toggleselected
                                ? const Color(0xCDFF5963)
                                : FlutterFlowTheme.of(context).secondaryText,
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
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showAlignedDialog(
                          context: context,
                          isGlobal: false,
                          avoidOverflow: true,
                          targetAnchor: const AlignmentDirectional(-1.0, 1.0)
                              .resolve(Directionality.of(context)),
                          followerAnchor: const AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          builder: (dialogContext) {
                            return Material(
                              color: Colors.transparent,
                              child: DeleteimageWidget(
                                imageid: widget.imageId,
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
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0x42FF5963),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'NotoSansThai',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 60.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
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
