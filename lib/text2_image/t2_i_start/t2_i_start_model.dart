import '/components/credit/credit_widget.dart';
import '/components/imagesize/imagesize_widget.dart';
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
  // Model for imagesize component.
  late ImagesizeModel imagesizeModel;
  // State field(s) for t2islider widget.
  double? t2isliderValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    imagesizeModel = createModel(context, () => ImagesizeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    promptFocusNode?.dispose();
    promptController?.dispose();

    negativepromptFocusNode?.dispose();
    negativepromptController?.dispose();

    imagesizeModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
