import '/components/credit/credit_widget.dart';
import '/components/slidebar/slidebar_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_portrait_start_widget.dart' show AIPortraitStartWidget;
import 'package:flutter/material.dart';

class AIPortraitStartModel extends FlutterFlowModel<AIPortraitStartWidget> {
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
  // Model for slidebar component.
  late SlidebarModel slidebarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    uploadbuttonModel = createModel(context, () => UploadbuttonModel());
    slidebarModel = createModel(context, () => SlidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    uploadbuttonModel.dispose();
    slidebarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
