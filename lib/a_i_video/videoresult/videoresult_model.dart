import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'videoresult_widget.dart' show VideoresultWidget;
import 'package:flutter/material.dart';

class VideoresultModel extends FlutterFlowModel<VideoresultWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for buttongroup_1 component.
  late Buttongroup1Model buttongroup1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttongroup1Model = createModel(context, () => Buttongroup1Model());
  }

  @override
  void dispose() {
    buttongroup1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
