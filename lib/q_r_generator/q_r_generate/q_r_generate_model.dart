import '/backend/api_requests/api_calls.dart';
import '/components/done/done_widget.dart';
import '/components/message_error/message_error_widget.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/text2_image/image_result/image_result_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'q_r_generate_widget.dart' show QRGenerateWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QRGenerateModel extends FlutterFlowModel<QRGenerateWidget> {
  ///  Local state fields for this page.

  int qrscaleselected = 10;

  String logoselected = 'none';

  String? uploadedQRPath = '';

  String? uploadedBgPath = '';

  String? uploadedLogoPath = '';

  int themeId = 80;

  int qrPromptSample = 6;

  String? uploadedQRPathClassic;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for signinicon component.
  late SigniniconModel signiniconModel;
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
  TextEditingController? promptLinkTextController;
  String? Function(BuildContext, String?)? promptLinkTextControllerValidator;
  String? _promptLinkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'c0ps9n3t' /* Field is required */,
      );
    }

    if (!RegExp(
            '^(https:\\/\\/www\\.|http:\\/\\/www\\.)[a-zA-Z\\d]([a-zA-Z\\d-]*[a-zA-Z\\d])*(\\.[a-zA-Z]{2,})(:\\d+)?(\\/[-a-zA-Z\\d%_.~+]*)*(\\?[;&a-zA-Z\\d%_.~+=-]*)?(\\#[-a-zA-Z\\d_]*)?\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xsnj5w6b' /* URL not correct */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - deleteUploadedFile] action in Icon widget.
  bool? deleteresult1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (FileUploader)] action in qrprompt_qrupload widget.
  ApiCallResponse? awsupload1;
  // State field(s) for qr_selectmodel widget.
  CarouselController? qrSelectmodelController;
  int qrSelectmodelCurrentIndex = 1;

  // State field(s) for slider widget.
  double? sliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in slider widget.
  int? imagenumber;
  // Stores action output result for [Custom Action - selectQRTheme] action in Button widget.
  dynamic? qRTheme;
  // Stores action output result for [Backend Call - API (QRGenerate)] action in Button widget.
  ApiCallResponse? requestSent;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfoPrompt;
  // Stores action output result for [Backend Call - API (QueueStatus)] action in Button widget.
  ApiCallResponse? loopPrompt;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? qrResult;
  // State field(s) for UploadImage widget.
  TabController? uploadImageController;
  int get uploadImageCurrentIndex =>
      uploadImageController != null ? uploadImageController!.index : 0;

  // State field(s) for upload_link widget.
  FocusNode? uploadLinkFocusNode;
  TextEditingController? uploadLinkTextController;
  String? Function(BuildContext, String?)? uploadLinkTextControllerValidator;
  String? _uploadLinkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tizrmshi' /* Field is required */,
      );
    }

    if (!RegExp(
            '^(https:\\/\\/www\\.|http:\\/\\/www\\.)[a-zA-Z\\d]([a-zA-Z\\d-]*[a-zA-Z\\d])*(\\.[a-zA-Z]{2,})(:\\d+)?(\\/[-a-zA-Z\\d%_.~+]*)*(\\?[;&a-zA-Z\\d%_.~+=-]*)?(\\#[-a-zA-Z\\d_]*)?\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7ww4ggwo' /* URL not correct */,
      );
    }
    return null;
  }

  // Stores action output result for [Custom Action - deleteUploadedFile] action in Icon widget.
  bool? deleteresult2;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (FileUploader)] action in upload_qrupload widget.
  ApiCallResponse? awsupload2;
  // Stores action output result for [Custom Action - deleteUploadedFile] action in Icon widget.
  bool? deleteresult3;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (FileUploader)] action in upload_bgupload widget.
  ApiCallResponse? awsupload3;
  // Stores action output result for [Custom Action - deleteUploadedFile] action in Icon widget.
  bool? deleteresult4;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (FileUploader)] action in upload_logoupload widget.
  ApiCallResponse? awsupload4;
  // Stores action output result for [Backend Call - API (QRLogoGenerate)] action in Button widget.
  ApiCallResponse? requestSentlogo;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfoLogo;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? qrClassicResult;

  @override
  void initState(BuildContext context) {
    signiniconModel = createModel(context, () => SigniniconModel());
    promptLinkTextControllerValidator = _promptLinkTextControllerValidator;
    uploadLinkTextControllerValidator = _uploadLinkTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signiniconModel.dispose();
    qRgeneratorController?.dispose();
    qRPromptController?.dispose();
    promptLinkFocusNode?.dispose();
    promptLinkTextController?.dispose();

    uploadImageController?.dispose();
    uploadLinkFocusNode?.dispose();
    uploadLinkTextController?.dispose();
  }
}
