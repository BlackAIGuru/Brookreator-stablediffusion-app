import '/flutter_flow/flutter_flow_util.dart';
import 'email_verify_widget.dart' show EmailVerifyWidget;
import 'package:flutter/material.dart';

class EmailVerifyModel extends FlutterFlowModel<EmailVerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - confirmEmail] action in send_link widget.
  bool? confirmResult;
  // Stores action output result for [Custom Action - signIn] action in send_link widget.
  String? token;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
