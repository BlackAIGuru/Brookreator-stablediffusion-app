import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exper_widget.dart' show ExperWidget;
import 'package:flutter/material.dart';

class ExperModel extends FlutterFlowModel<ExperWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    uploadbuttonModel = createModel(context, () => UploadbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    uploadbuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
