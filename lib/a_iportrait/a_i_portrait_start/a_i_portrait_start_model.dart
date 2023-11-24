import '/components/credit/credit_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_portrait_start_widget.dart' show AIPortraitStartWidget;
import 'package:flutter/material.dart';

class AIPortraitStartModel extends FlutterFlowModel<AIPortraitStartWidget> {
  ///  Local state fields for this page.

  int? selectportraitstyle;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel;
  // State field(s) for aiportraitslider widget.
  double? aiportraitsliderValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    uploadbuttonModel = createModel(context, () => UploadbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    uploadbuttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
