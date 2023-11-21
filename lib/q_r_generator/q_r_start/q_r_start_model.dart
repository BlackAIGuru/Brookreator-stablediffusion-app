import '/components/credit/credit_widget.dart';
import '/components/uploadbutton/uploadbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_start_widget.dart' show QRStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRStartModel extends FlutterFlowModel<QRStartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for prompt_link widget.
  FocusNode? promptLinkFocusNode;
  TextEditingController? promptLinkController;
  String? Function(BuildContext, String?)? promptLinkControllerValidator;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;

  int carouselCurrentIndex1 = 1;

  // State field(s) for Slider widget.
  double? sliderValue1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;

  int carouselCurrentIndex2 = 1;

  // State field(s) for Slider widget.
  double? sliderValue2;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for upload_link widget.
  FocusNode? uploadLinkFocusNode;
  TextEditingController? uploadLinkController;
  String? Function(BuildContext, String?)? uploadLinkControllerValidator;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel1;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel2;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel3;
  // Model for uploadbutton component.
  late UploadbuttonModel uploadbuttonModel4;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    uploadbuttonModel1 = createModel(context, () => UploadbuttonModel());
    uploadbuttonModel2 = createModel(context, () => UploadbuttonModel());
    uploadbuttonModel3 = createModel(context, () => UploadbuttonModel());
    uploadbuttonModel4 = createModel(context, () => UploadbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    creditModel.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    promptLinkFocusNode?.dispose();
    promptLinkController?.dispose();

    tabBarController3?.dispose();
    uploadLinkFocusNode?.dispose();
    uploadLinkController?.dispose();

    uploadbuttonModel1.dispose();
    uploadbuttonModel2.dispose();
    uploadbuttonModel3.dispose();
    uploadbuttonModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
