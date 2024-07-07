import '/backend/api_requests/api_calls.dart';
import '/components/done/done_widget.dart';
import '/components/message_error/message_error_widget.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/text2_image/image_result/image_result_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:sticky_headers/sticky_headers.dart';
import 't2i_widget.dart' show T2iWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class T2iModel extends FlutterFlowModel<T2iWidget> {
  ///  Local state fields for this page.

  int? imagewidth;

  int? imageheight;

  int selectsize = 1;

  int themeId = 29;

  String loopValue = 'FAILED';

  int sample = 6;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for signinicon component.
  late SigniniconModel signiniconModel;
  // State field(s) for selectModel widget.
  CarouselController? selectModelController;
  int selectModelCurrentIndex = 1;

  // Stores action output result for [Custom Action - selectT2IThemePrompt] action in selectModel widget.
  String? prompt;
  // Stores action output result for [Custom Action - selectT2IThemeNegative] action in selectModel widget.
  String? negative;
  // State field(s) for prompt widget.
  FocusNode? promptFocusNode;
  TextEditingController? promptTextController;
  String? Function(BuildContext, String?)? promptTextControllerValidator;
  // State field(s) for negativeprompt widget.
  FocusNode? negativepromptFocusNode;
  TextEditingController? negativepromptTextController;
  String? Function(BuildContext, String?)?
      negativepromptTextControllerValidator;
  // State field(s) for manualswitch widget.
  bool? manualswitchValue;
  // State field(s) for widthslider widget.
  double? widthsliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in widthslider widget.
  int? widthsize;
  // State field(s) for widthvalue widget.
  FocusNode? widthvalueFocusNode;
  TextEditingController? widthvalueTextController;
  String? Function(BuildContext, String?)? widthvalueTextControllerValidator;
  // State field(s) for heightslider widget.
  double? heightsliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in heightslider widget.
  int? heightsize;
  // State field(s) for heightvalue widget.
  FocusNode? heightvalueFocusNode;
  TextEditingController? heightvalueTextController;
  String? Function(BuildContext, String?)? heightvalueTextControllerValidator;
  // State field(s) for t2islider widget.
  double? t2isliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in t2islider widget.
  int? imagenumber;
  // Stores action output result for [Custom Action - selectT2ITheme] action in Button widget.
  dynamic? theme;
  // Stores action output result for [Backend Call - API (TextToImage)] action in Button widget.
  ApiCallResponse? requestSent;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfo;
  // Stores action output result for [Backend Call - API (QueueStatus)] action in Button widget.
  ApiCallResponse? loop;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? gettingImages;

  @override
  void initState(BuildContext context) {
    signiniconModel = createModel(context, () => SigniniconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signiniconModel.dispose();
    promptFocusNode?.dispose();
    promptTextController?.dispose();

    negativepromptFocusNode?.dispose();
    negativepromptTextController?.dispose();

    widthvalueFocusNode?.dispose();
    widthvalueTextController?.dispose();

    heightvalueFocusNode?.dispose();
    heightvalueTextController?.dispose();
  }
}
