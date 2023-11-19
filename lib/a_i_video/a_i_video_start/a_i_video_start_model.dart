import '/components/label60/label60_widget.dart';
import '/components/uploadvideobutton/uploadvideobutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_video_start_widget.dart' show AIVideoStartWidget;
import 'package:flutter/material.dart';

class AIVideoStartModel extends FlutterFlowModel<AIVideoStartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for label60 component.
  late Label60Model label60Model;
  // Model for uploadvideobutton component.
  late UploadvideobuttonModel uploadvideobuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    label60Model = createModel(context, () => Label60Model());
    uploadvideobuttonModel =
        createModel(context, () => UploadvideobuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    label60Model.dispose();
    uploadvideobuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
