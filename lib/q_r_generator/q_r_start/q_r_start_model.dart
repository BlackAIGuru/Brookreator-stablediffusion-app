import '/components/credit/credit_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_start_widget.dart' show QRStartWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRStartModel extends FlutterFlowModel<QRStartWidget> {
  ///  Local state fields for this page.

  int? qrscaleselected;

  String logoselected = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for credit component.
  late CreditModel creditModel;
  // State field(s) for QRgenerator widget.
  TabController? qRgeneratorController;
  int get qRgeneratorCurrentIndex =>
      qRgeneratorController != null ? qRgeneratorController!.index : 0;

  // State field(s) for QRPrompt widget.
  TabController? qRPromptController;
  int get qRPromptCurrentIndex =>
      qRPromptController != null ? qRPromptController!.index : 0;

  // State field(s) for prompt_link widget.
  FocusNode? promptLinkFocusNode;
  TextEditingController? promptLinkController;
  String? Function(BuildContext, String?)? promptLinkControllerValidator;
  String? _promptLinkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c0ps9n3t' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xsnj5w6b' /* URL not correct */,
      );
    }
    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for qr_selectmodel widget.
  CarouselController? qrSelectmodelController;

  int qrSelectmodelCurrentIndex = 1;

  // State field(s) for slider widget.
  double? sliderValue;
  // State field(s) for UploadImage widget.
  TabController? uploadImageController;
  int get uploadImageCurrentIndex =>
      uploadImageController != null ? uploadImageController!.index : 0;

  // State field(s) for upload_link widget.
  FocusNode? uploadLinkFocusNode;
  TextEditingController? uploadLinkController;
  String? Function(BuildContext, String?)? uploadLinkControllerValidator;
  String? _uploadLinkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tizrmshi' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7ww4ggwo' /* URL not correct */,
      );
    }
    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];

  bool isDataUploading4 = false;
  List<FFUploadedFile> uploadedLocalFiles4 = [];

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
    qRgeneratorController?.dispose();
    qRPromptController?.dispose();
    promptLinkFocusNode?.dispose();
    promptLinkController?.dispose();

    uploadImageController?.dispose();
    uploadLinkFocusNode?.dispose();
    uploadLinkController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
