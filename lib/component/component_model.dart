import '/flutter_flow/flutter_flow_util.dart';
import 'component_widget.dart' show ComponentWidget;
import 'package:flutter/material.dart';

class ComponentModel extends FlutterFlowModel<ComponentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
