import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
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

    _model.widthvalueController ??= TextEditingController();
    _model.widthvalueFocusNode ??= FocusNode();
    _model.widthvalueFocusNode!.addListener(
      () async {
        setState(() {
          _model.widthsliderValue =
              double.parse(_model.widthvalueController.text);
        });
      },
    );
    _model.heightvalueController ??= TextEditingController();
    _model.heightvalueFocusNode ??= FocusNode();
    _model.heightvalueFocusNode!.addListener(
      () async {
        setState(() {
          _model.heightsliderValue =
              double.parse(_model.heightvalueController.text);
        });
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.widthvalueController?.text =
              FFLocalizations.of(context).getText(
            '33ny2oqd' /* 1024 */,
          );
          _model.heightvalueController?.text =
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
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 200.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8zjuhx80' /* Width (px) */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '2cup3of9' /* The width of the generated ima... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 12.0,
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
                  child: SizedBox(
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
                          _model.widthvalueController?.text =
                              _model.widthsize!.toString();
                        });

                        setState(() {});
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                    child: SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        controller: _model.widthvalueController,
                        focusNode: _model.widthvalueFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.widthvalueController',
                          const Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              _model.widthsliderValue = double.parse(
                                  _model.widthvalueController.text);
                            });
                          },
                        ),
                        onFieldSubmitted: (_) async {
                          setState(() {
                            _model.widthsliderValue =
                                double.parse(_model.widthvalueController.text);
                          });
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).bodyMedium,
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.widthvalueControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ju5c4eza' /* Height (px) */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'NotoSansThai',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'fpjsyedb' /* The heigth of the generated im... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'NotoSansThai',
                                    fontSize: 12.0,
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
                  child: SizedBox(
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
                          _model.heightvalueController?.text =
                              _model.heightsize!.toString();
                        });

                        setState(() {});
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                    child: SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        controller: _model.heightvalueController,
                        focusNode: _model.heightvalueFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.heightvalueController',
                          const Duration(milliseconds: 2000),
                          () async {
                            setState(() {
                              _model.heightsliderValue = double.parse(
                                  _model.heightvalueController.text);
                            });
                          },
                        ),
                        onFieldSubmitted: (_) async {
                          setState(() {
                            _model.heightsliderValue =
                                double.parse(_model.heightvalueController.text);
                          });
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          labelStyle: FlutterFlowTheme.of(context).labelMedium,
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        validator: _model.heightvalueControllerValidator
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
