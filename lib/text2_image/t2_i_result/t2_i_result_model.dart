import '/components/label60/label60_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/text2_image/imageresult/imageresult_widget.dart';
import 't2_i_result_widget.dart' show T2IResultWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class T2IResultModel extends FlutterFlowModel<T2IResultWidget> {
  ///  Local state fields for this page.

  bool toggleselected = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for label60 component.
  late Label60Model label60Model;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Model for Imageresult component.
  late ImageresultModel imageresultModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    label60Model = createModel(context, () => Label60Model());
    imageresultModel = createModel(context, () => ImageresultModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    label60Model.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    imageresultModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
