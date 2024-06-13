import '/backend/api_requests/api_calls.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_video_widget.dart' show AIVideoWidget;
import 'package:flutter/material.dart';

class AIVideoModel extends FlutterFlowModel<AIVideoWidget> {
  ///  Local state fields for this page.

  int? selectvideotype = 30;

  int? selectvideostyle = 1;

  String? uploadedvideopath;

  String? txID;

  String? uploadedvideoshow;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getUuid] action in AIVideo widget.
  String? uuid;
  // Model for signinicon component.
  late SigniniconModel signiniconModel;
  // Stores action output result for [Custom Action - deleteUploadedFile] action in Icon widget.
  bool? deleteresult3;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (FileUploader)] action in Container widget.
  ApiCallResponse? videoupload;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfo;
  // Stores action output result for [Backend Call - API (AIVideoGenerate)] action in Button widget.
  ApiCallResponse? aiVideoGenerate;
  // Stores action output result for [Backend Call - API (QueueStatus)] action in Button widget.
  ApiCallResponse? loop;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? gettingVideo;

  @override
  void initState(BuildContext context) {
    signiniconModel = createModel(context, () => SigniniconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signiniconModel.dispose();
  }
}
