import '/flutter_flow/flutter_flow_util.dart';
import 'imagesize_widget.dart' show ImagesizeWidget;
import 'package:flutter/material.dart';

class ImagesizeModel extends FlutterFlowModel<ImagesizeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for widthslider widget.
  double? widthsliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in widthslider widget.
  int? widthsize;
  // State field(s) for widthvalue widget.
  FocusNode? widthvalueFocusNode;
  TextEditingController? widthvalueController;
  String? Function(BuildContext, String?)? widthvalueControllerValidator;
  // State field(s) for heightslider widget.
  double? heightsliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in heightslider widget.
  int? heightsize;
  // State field(s) for heightvalue widget.
  FocusNode? heightvalueFocusNode;
  TextEditingController? heightvalueController;
  String? Function(BuildContext, String?)? heightvalueControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    widthvalueFocusNode?.dispose();
    widthvalueController?.dispose();

    heightvalueFocusNode?.dispose();
    heightvalueController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
