import '/a_i_video/video_result/video_result_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/done/done_widget.dart';
import '/components/message_error/message_error_widget.dart';
import '/components/message_success/message_success_widget.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'a_i_video_widget.dart' show AIVideoWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
  // Stores action output result for [Backend Call - API (AIVideoGenerate)] action in Button widget.
  ApiCallResponse? aiVideoGenerate;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfo;
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
