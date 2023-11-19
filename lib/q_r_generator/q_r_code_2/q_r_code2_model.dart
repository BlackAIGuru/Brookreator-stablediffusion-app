import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_code2_widget.dart' show QRCode2Widget;
import 'package:flutter/material.dart';

class QRCode2Model extends FlutterFlowModel<QRCode2Widget> {
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
