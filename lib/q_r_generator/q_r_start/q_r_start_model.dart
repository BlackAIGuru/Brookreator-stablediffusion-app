import '/components/label60/label60_widget.dart';
import '/components/qrtoggle/qrtoggle_widget.dart';
import '/components/slidebar/slidebar_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_start_widget.dart' show QRStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRStartModel extends FlutterFlowModel<QRStartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for label60 component.
  late Label60Model label60Model;
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
    label60Model = createModel(context, () => Label60Model());
    qrtoggleModel1 = createModel(context, () => QrtoggleModel());
    slidebarModel = createModel(context, () => SlidebarModel());
    qrtoggleModel2 = createModel(context, () => QrtoggleModel());
    uploadbuttonModel1 = createModel(context, () => UploadbuttonModel());
    uploadbuttonModel2 = createModel(context, () => UploadbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    label60Model.dispose();
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
