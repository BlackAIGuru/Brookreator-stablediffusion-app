import '/flutter_flow/flutter_flow_util.dart';
import 'buy_credit_widget.dart' show BuyCreditWidget;
import 'package:flutter/material.dart';

class BuyCreditModel extends FlutterFlowModel<BuyCreditWidget> {
  ///  Local state fields for this page.

  int? selectpackage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
