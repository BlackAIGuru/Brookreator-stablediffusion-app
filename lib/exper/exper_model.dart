import '/components/imagesize_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'exper_widget.dart' show ExperWidget;
import 'package:flutter/material.dart';

class ExperModel extends FlutterFlowModel<ExperWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for imagesize component.
  late ImagesizeModel imagesizeModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    imagesizeModel = createModel(context, () => ImagesizeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    imagesizeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
