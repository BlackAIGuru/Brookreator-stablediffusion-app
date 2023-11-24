import '/components/credit/credit_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_start_widget.dart' show QRStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRStartModel extends FlutterFlowModel<QRStartWidget> {
  ///  Local state fields for this page.

  int? linkqrscaleselected;

  int? uploadqrscaleselected;

  String linklogoselected = '';

  String? qrlogoselected;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
  String? _promptLinkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ypejhmwm' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3trskza2' /* URL not correct */,
      );
    }
    return null;
  }

  // State field(s) for link_selectmodel widget.
  CarouselController? linkSelectmodelController;

  int linkSelectmodelCurrentIndex = 1;

  // State field(s) for link_slider widget.
  double? linkSliderValue;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for qr_selectmodel widget.
  CarouselController? qrSelectmodelController;

  int qrSelectmodelCurrentIndex = 1;

  // State field(s) for qr_slider widget.
  double? qrSliderValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for upload_link widget.
  FocusNode? uploadLinkFocusNode;
  TextEditingController? uploadLinkController;
  String? Function(BuildContext, String?)? uploadLinkControllerValidator;
  String? _uploadLinkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3yj4wn8l' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'b47jys9w' /* URL not correct */,
      );
    }
    return null;
  }

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];

  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading5 = false;
  List<FFUploadedFile> uploadedLocalFiles5 = [];

  bool isDataUploading6 = false;
  List<FFUploadedFile> uploadedLocalFiles6 = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    creditModel = createModel(context, () => CreditModel());
    promptLinkControllerValidator = _promptLinkControllerValidator;
    uploadLinkControllerValidator = _uploadLinkControllerValidator;
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
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
