import '/components/credit/credit_widget.dart';
import '/components/imagesize/imagesize_widget.dart';
import '/components/slidebar/slidebar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 't2_i_start_widget.dart' show T2IStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class T2IStartModel extends FlutterFlowModel<T2IStartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 2;

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
  // Model for imagesize component.
  late ImagesizeModel imagesizeModel;
  // Model for slidebar component.
  late SlidebarModel slidebarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    imagesizeModel = createModel(context, () => ImagesizeModel());
    slidebarModel = createModel(context, () => SlidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    imagesizeModel.dispose();
    slidebarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
