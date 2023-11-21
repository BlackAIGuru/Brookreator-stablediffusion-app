import '/components/credit/credit_widget.dart';
import '/components/qrtoggle/qrtoggle_widget.dart';
import '/components/slidebar/slidebar_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_startdemo_widget.dart' show QRStartdemoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRStartdemoModel extends FlutterFlowModel<QRStartdemoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for qrtoggle component.
  late QrtoggleModel qrtoggleModel1;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for slidebar component.
  late SlidebarModel slidebarModel;
  // Model for qrtoggle component.
  late QrtoggleModel qrtoggleModel2;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel1;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    qrtoggleModel1 = createModel(context, () => QrtoggleModel());
    slidebarModel = createModel(context, () => SlidebarModel());
    qrtoggleModel2 = createModel(context, () => QrtoggleModel());
    uploadbuttonModel1 = createModel(context, () => UploadbuttonModel());
    uploadbuttonModel2 = createModel(context, () => UploadbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    tabBarController?.dispose();
    qrtoggleModel1.dispose();
    slidebarModel.dispose();
    qrtoggleModel2.dispose();
    uploadbuttonModel1.dispose();
    uploadbuttonModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
