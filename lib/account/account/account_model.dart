import '/components/card/card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/material.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for card component.
  late CardModel cardModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    cardModel = createModel(context, () => CardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cardModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
