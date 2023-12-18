import '/components/credit/credit_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 't2_i_start_widget.dart' show T2IStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class T2IStartModel extends FlutterFlowModel<T2IStartWidget> {
  ///  Local state fields for this page.

  int? imagewidth;

  int? imageheight;

  int? selectsize;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for selectModel widget.
  CarouselController? selectModelController;

  int selectModelCurrentIndex = 2;

  // Stores action output result for [Custom Action - selectT2IThemePrompt] action in selectModel widget.
  String? prompt;
  // Stores action output result for [Custom Action - selectT2IThemeNegative] action in selectModel widget.
  String? negative;
  // State field(s) for prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptController;
  String? Function(BuildContext, String?)? promptControllerValidator;
  // State field(s) for negativeprompt widget.
  FocusNode? negativepromptFocusNode;
  TextEditingController? negativepromptController;
  String? Function(BuildContext, String?)? negativepromptControllerValidator;
  // State field(s) for manualswitch widget.
  bool? manualswitchValue;
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
  // State field(s) for t2islider widget.
  double? t2isliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in t2islider widget.
  int? imagenumber;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    promptFocusNode?.dispose();
    promptController?.dispose();

    negativepromptFocusNode?.dispose();
    negativepromptController?.dispose();

    widthvalueFocusNode?.dispose();
    widthvalueController?.dispose();

    heightvalueFocusNode?.dispose();
    heightvalueController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
