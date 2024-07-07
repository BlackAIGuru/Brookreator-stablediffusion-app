import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'imagesize_model.dart';
export 'imagesize_model.dart';

class ImagesizeWidget extends StatefulWidget {
  const ImagesizeWidget({super.key});

  @override
  State<ImagesizeWidget> createState() => _ImagesizeWidgetState();
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

    _model.widthvalueTextController ??= TextEditingController();
    _model.widthvalueFocusNode ??= FocusNode();
    _model.widthvalueFocusNode!.addListener(
      () async {
        setState(() {
          _model.widthsliderValue =
              double.parse(_model.widthvalueTextController.text);
        });
      },
    );
    _model.heightvalueTextController ??= TextEditingController();
    _model.heightvalueFocusNode ??= FocusNode();
    _model.heightvalueFocusNode!.addListener(
      () async {
        setState(() {
          _model.heightsliderValue =
              double.parse(_model.heightvalueTextController.text);
        });
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.widthvalueTextController?.text =
              FFLocalizations.of(context).getText(
            '33ny2oqd' /* 1024 */,
          );
          _model.heightvalueTextController?.text =
              FFLocalizations.of(context).getText(
            'irr48n1w' /* 1024 */,
          );
        }));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8zjuhx80' /* Width (px) */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '2cup3of9' /* The width of the generated ima... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
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
                  child: Container(
                    width: double.infinity,
                    child: Slider(
                      activeColor: FlutterFlowTheme.of(context).primary,
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: 512.0,
                      max: 1024.0,
                      value: _model.widthsliderValue ??= 512.0,
                      divisions: 8,
                      onChanged: (newValue) async {
                        setState(() => _model.widthsliderValue = newValue);
                        _model.widthsize = await actions.changeToIngeger(
                          _model.widthsliderValue,
                        );
                        setState(() {
                          _model.widthvalueTextController?.text =
                              _model.widthsize!.toString();
                          _model.widthvalueTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .widthvalueTextController!.text.length);
                        });

                        setState(() {});
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                    child: Container(
                      width: 60.0,
                      child: TextFormField(
                        controller: _model.widthvalueTextController,
                        focusNode: _model.widthvalueFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.widthvalueTextController',
                          Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              _model.widthsliderValue = double.parse(
                                  _model.widthvalueTextController.text);
                            });
                          },
                        ),
                        onFieldSubmitted: (_) async {
                          setState(() {
                            _model.widthsliderValue = double.parse(
                                _model.widthvalueTextController.text);
                          });
                        },
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        validator: _model.widthvalueTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ju5c4eza' /* Height (px) */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fpjsyedb' /* The heigth of the generated im... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
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
                  child: Container(
                    width: double.infinity,
                    child: Slider(
                      activeColor: FlutterFlowTheme.of(context).primary,
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: 512.0,
                      max: 1024.0,
                      value: _model.heightsliderValue ??= 512.0,
                      divisions: 8,
                      onChanged: (newValue) async {
                        setState(() => _model.heightsliderValue = newValue);
                        _model.heightsize = await actions.changeToIngeger(
                          _model.heightsliderValue,
                        );
                        setState(() {
                          _model.heightvalueTextController?.text =
                              _model.heightsize!.toString();
                          _model.heightvalueTextController?.selection =
                              TextSelection.collapsed(
                                  offset: _model
                                      .heightvalueTextController!.text.length);
                        });

                        setState(() {});
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                    child: Container(
                      width: 60.0,
                      child: TextFormField(
                        controller: _model.heightvalueTextController,
                        focusNode: _model.heightvalueFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.heightvalueTextController',
                          Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              _model.heightsliderValue = double.parse(
                                  _model.heightvalueTextController.text);
                            });
                          },
                        ),
                        onFieldSubmitted: (_) async {
                          setState(() {
                            _model.heightsliderValue = double.parse(
                                _model.heightvalueTextController.text);
                          });
                        },
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        validator: _model.heightvalueTextControllerValidator
                            .asValidator(context),
                      ),
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
