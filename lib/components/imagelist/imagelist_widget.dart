import '/components/detailed_info/detailed_info_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'imagelist_model.dart';
export 'imagelist_model.dart';

class ImagelistWidget extends StatefulWidget {
  const ImagelistWidget({
    super.key,
    required this.imageUrl,
    required this.type,
    required this.imageId,
    required this.title,
    required this.isImage,
    required this.prompt,
    required this.negativePrompt,
    required this.width,
    required this.height,
    required this.createdDate,
    required this.isVideo,
  });

  final String? imageUrl;
  final String? type;
  final String? imageId;
  final String? title;
  final bool? isImage;
  final String? prompt;
  final String? negativePrompt;
  final int? width;
  final int? height;
  final String? createdDate;
  final bool? isVideo;

  @override
  State<ImagelistWidget> createState() => _ImagelistWidgetState();
}

class _ImagelistWidgetState extends State<ImagelistWidget> {
  late ImagelistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagelistModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: DetailedInfoWidget(
                imageUrl: widget.imageUrl!,
                imageID: widget.imageId!,
                title: widget.title!,
                isImage: widget.isImage!,
                prompt: widget.prompt!,
                negativePrompt: widget.negativePrompt!,
                width: widget.width!,
                height: widget.height!,
                createdDate: functions.getDate(widget.createdDate)!,
                isVideo: widget.isVideo!,
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      },
      child: Container(
        width: double.infinity,
        height: random_data.randomInteger(100, 200).toDouble(),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                valueOrDefault<String>(
                  '${widget.imageUrl}',
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/brookreator-m6m4o6/assets/028aej8qd29b/Wonderland.jpg',
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            if ((widget.type == 'AI-QRCODE') ||
                (widget.type == 'QRCODE-LOGO'))
              const Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 5.0),
                  child: Icon(
                    Icons.qr_code_rounded,
                    color: Color(0xE6FFFFFF),
                    size: 24.0,
                  ),
                ),
              ),
            if (widget.type == 'AI-PORTRAIT')
              const Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 5.0),
                  child: Icon(
                    Icons.portrait_outlined,
                    color: Color(0xE6FFFFFF),
                    size: 24.0,
                  ),
                ),
              ),
            if (widget.type == 'VDO-TO-VDO')
              const Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 5.0),
                  child: Icon(
                    Icons.ondemand_video_rounded,
                    color: Color(0xE6FFFFFF),
                    size: 24.0,
                  ),
                ),
              ),
            if (widget.type == 'TEXT-TO-IMAGE')
              const Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 5.0),
                  child: Icon(
                    Icons.draw_outlined,
                    color: Color(0xE6FFFFFF),
                    size: 24.0,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
