import '/components/credit/credit_widget.dart';
import '/components/uploadvideobutton/uploadvideobutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_video_start_widget.dart' show AIVideoStartWidget;
import 'package:flutter/material.dart';

class AIVideoStartModel extends FlutterFlowModel<AIVideoStartWidget> {
  ///  Local state fields for this page.

  int? selectvideotype;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // Model for uploadvideobutton component.
  late UploadvideobuttonModel uploadvideobuttonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    uploadvideobuttonModel =
        createModel(context, () => UploadvideobuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    uploadvideobuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
