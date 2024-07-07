import '/backend/api_requests/api_calls.dart';
import '/components/deleteconfirm/deleteconfirm_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await launchURL(widget.imageUrl!);
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
                      padding: EdgeInsets.all(0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
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
                                ? Color(0xCDFF5963)
                                : FlutterFlowTheme.of(context).secondaryText,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.favorite_sharp,
                            color: _model.toggleselected
                                ? Color(0xCDFF5963)
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
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Builder(
                  builder: (context) => Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showAlignedDialog(
                          context: context,
                          isGlobal: false,
                          avoidOverflow: true,
                          targetAnchor: AlignmentDirectional(-1.0, 1.0)
                              .resolve(Directionality.of(context)),
                          followerAnchor: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          builder: (dialogContext) {
                            return Material(
                              color: Colors.transparent,
                              child: DeleteconfirmWidget(
                                imageid: widget.imageId,
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      text: '',
                      icon: Icon(
                        FFIcons.kbin,
                        color: Color(0xCDFF5963),
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 50.0,
                        height: 28.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x42FF5963),
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
