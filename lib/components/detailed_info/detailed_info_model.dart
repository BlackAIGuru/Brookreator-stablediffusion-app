import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detailed_info_widget.dart' show DetailedInfoWidget;
import 'package:flutter/material.dart';

class DetailedInfoModel extends FlutterFlowModel<DetailedInfoWidget> {
  ///  Local state fields for this component.

  int imagecurrentindex = 0;

  ///  State fields for stateful widgets in this component.

  // Model for buttongroup_1 component.
  late Buttongroup1Model buttongroup1Model;

  @override
  void initState(BuildContext context) {
    buttongroup1Model = createModel(context, () => Buttongroup1Model());
  }

  @override
  void dispose() {
    buttongroup1Model.dispose();
  }
}
