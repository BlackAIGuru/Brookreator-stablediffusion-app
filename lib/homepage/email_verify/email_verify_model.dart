import '/components/message_error/message_error_widget.dart';
import '/components/message_success/message_success_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homepage/confirm_success/confirm_success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'email_verify_widget.dart' show EmailVerifyWidget;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailVerifyModel extends FlutterFlowModel<EmailVerifyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Custom Action - confirmEmail] action in send_link widget.
  bool? confirmResult;
  // Stores action output result for [Custom Action - resendCode] action in Text widget.
  bool? resendresult;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }
}
