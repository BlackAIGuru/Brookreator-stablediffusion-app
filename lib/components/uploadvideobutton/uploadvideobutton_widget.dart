import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'uploadvideobutton_model.dart';
export 'uploadvideobutton_model.dart';

class UploadvideobuttonWidget extends StatefulWidget {
  const UploadvideobuttonWidget({super.key});

  @override
  _UploadvideobuttonWidgetState createState() =>
      _UploadvideobuttonWidgetState();
}

class _UploadvideobuttonWidgetState extends State<UploadvideobuttonWidget> {
  late UploadvideobuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadvideobuttonModel());
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
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          final selectedMedia = await selectMediaWithSourceBottomSheet(
            context: context,
            allowPhoto: false,
            allowVideo: true,
          );
          if (selectedMedia != null &&
              selectedMedia
                  .every((m) => validateFileFormat(m.storagePath, context))) {
            setState(() => _model.isDataUploading = true);
            var selectedUploadedFiles = <FFUploadedFile>[];

            try {
              selectedUploadedFiles = selectedMedia
                  .map((m) => FFUploadedFile(
                        name: m.storagePath.split('/').last,
                        bytes: m.bytes,
                        height: m.dimensions?.height,
                        width: m.dimensions?.width,
                        blurHash: m.blurHash,
                      ))
                  .toList();
            } finally {
              _model.isDataUploading = false;
            }
            if (selectedUploadedFiles.length == selectedMedia.length) {
              setState(() {
                _model.uploadedLocalFile = selectedUploadedFiles.first;
              });
            } else {
              setState(() {});
              return;
            }
          }
        },
        child: Container(
          width: 310.0,
          height: 140.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/Rectangle_165.png',
                      width: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/icons8-upload-to-cloud.gif',
                        width: 35.0,
                        height: 30.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'yjsp19vf' /* Upload Videos */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'efgv49la' /* File types : MP4/MOV/HEVC, max... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 10.0,
                          ),
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
