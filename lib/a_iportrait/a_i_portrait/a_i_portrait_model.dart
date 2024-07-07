import '/a_iportrait/uplodingguide/uplodingguide_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/done/done_widget.dart';
import '/components/info/info_widget.dart';
import '/components/message_error/message_error_widget.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/text2_image/image_result/image_result_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'a_i_portrait_widget.dart' show AIPortraitWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AIPortraitModel extends FlutterFlowModel<AIPortraitWidget> {
  ///  Local state fields for this page.

  int selectportraitstyle = 1;

  List<FFUploadedFile> uploadedimages = [];
  void addToUploadedimages(FFUploadedFile item) => uploadedimages.add(item);
  void removeFromUploadedimages(FFUploadedFile item) =>
      uploadedimages.remove(item);
  void removeAtIndexFromUploadedimages(int index) =>
      uploadedimages.removeAt(index);
  void insertAtIndexInUploadedimages(int index, FFUploadedFile item) =>
      uploadedimages.insert(index, item);
  void updateUploadedimagesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedimages[index] = updateFn(uploadedimages[index]);

  int uploadindex = 0;

  String uuid = 'a';

  List<String> awsuploadedimages = [];
  void addToAwsuploadedimages(String item) => awsuploadedimages.add(item);
  void removeFromAwsuploadedimages(String item) =>
      awsuploadedimages.remove(item);
  void removeAtIndexFromAwsuploadedimages(int index) =>
      awsuploadedimages.removeAt(index);
  void insertAtIndexInAwsuploadedimages(int index, String item) =>
      awsuploadedimages.insert(index, item);
  void updateAwsuploadedimagesAtIndex(int index, Function(String) updateFn) =>
      awsuploadedimages[index] = updateFn(awsuploadedimages[index]);

  int index = 0;

  int sampleNumber = 6;

  String? portraitTxID;

  List<String> adetailerPrompts = [];
  void addToAdetailerPrompts(String item) => adetailerPrompts.add(item);
  void removeFromAdetailerPrompts(String item) => adetailerPrompts.remove(item);
  void removeAtIndexFromAdetailerPrompts(int index) =>
      adetailerPrompts.removeAt(index);
  void insertAtIndexInAdetailerPrompts(int index, String item) =>
      adetailerPrompts.insert(index, item);
  void updateAdetailerPromptsAtIndex(int index, Function(String) updateFn) =>
      adetailerPrompts[index] = updateFn(adetailerPrompts[index]);

  List<int> cfgScale = [];
  void addToCfgScale(int item) => cfgScale.add(item);
  void removeFromCfgScale(int item) => cfgScale.remove(item);
  void removeAtIndexFromCfgScale(int index) => cfgScale.removeAt(index);
  void insertAtIndexInCfgScale(int index, int item) =>
      cfgScale.insert(index, item);
  void updateCfgScaleAtIndex(int index, Function(int) updateFn) =>
      cfgScale[index] = updateFn(cfgScale[index]);

  List<int> clipSkips = [];
  void addToClipSkips(int item) => clipSkips.add(item);
  void removeFromClipSkips(int item) => clipSkips.remove(item);
  void removeAtIndexFromClipSkips(int index) => clipSkips.removeAt(index);
  void insertAtIndexInClipSkips(int index, int item) =>
      clipSkips.insert(index, item);
  void updateClipSkipsAtIndex(int index, Function(int) updateFn) =>
      clipSkips[index] = updateFn(clipSkips[index]);

  List<int> height = [];
  void addToHeight(int item) => height.add(item);
  void removeFromHeight(int item) => height.remove(item);
  void removeAtIndexFromHeight(int index) => height.removeAt(index);
  void insertAtIndexInHeight(int index, int item) => height.insert(index, item);
  void updateHeightAtIndex(int index, Function(int) updateFn) =>
      height[index] = updateFn(height[index]);

  String? loraModelIds;

  List<String> model = [];
  void addToModel(String item) => model.add(item);
  void removeFromModel(String item) => model.remove(item);
  void removeAtIndexFromModel(int index) => model.removeAt(index);
  void insertAtIndexInModel(int index, String item) =>
      model.insert(index, item);
  void updateModelAtIndex(int index, Function(String) updateFn) =>
      model[index] = updateFn(model[index]);

  List<String> negativeAdetailers = [];
  void addToNegativeAdetailers(String item) => negativeAdetailers.add(item);
  void removeFromNegativeAdetailers(String item) =>
      negativeAdetailers.remove(item);
  void removeAtIndexFromNegativeAdetailers(int index) =>
      negativeAdetailers.removeAt(index);
  void insertAtIndexInNegativeAdetailers(int index, String item) =>
      negativeAdetailers.insert(index, item);
  void updateNegativeAdetailersAtIndex(int index, Function(String) updateFn) =>
      negativeAdetailers[index] = updateFn(negativeAdetailers[index]);

  List<String> negativePrompt = [];
  void addToNegativePrompt(String item) => negativePrompt.add(item);
  void removeFromNegativePrompt(String item) => negativePrompt.remove(item);
  void removeAtIndexFromNegativePrompt(int index) =>
      negativePrompt.removeAt(index);
  void insertAtIndexInNegativePrompt(int index, String item) =>
      negativePrompt.insert(index, item);
  void updateNegativePromptAtIndex(int index, Function(String) updateFn) =>
      negativePrompt[index] = updateFn(negativePrompt[index]);

  List<String> prompt = [];
  void addToPrompt(String item) => prompt.add(item);
  void removeFromPrompt(String item) => prompt.remove(item);
  void removeAtIndexFromPrompt(int index) => prompt.removeAt(index);
  void insertAtIndexInPrompt(int index, String item) =>
      prompt.insert(index, item);
  void updatePromptAtIndex(int index, Function(String) updateFn) =>
      prompt[index] = updateFn(prompt[index]);

  List<int> sample = [];
  void addToSample(int item) => sample.add(item);
  void removeFromSample(int item) => sample.remove(item);
  void removeAtIndexFromSample(int index) => sample.removeAt(index);
  void insertAtIndexInSample(int index, int item) => sample.insert(index, item);
  void updateSampleAtIndex(int index, Function(int) updateFn) =>
      sample[index] = updateFn(sample[index]);

  List<String> sampler = [];
  void addToSampler(String item) => sampler.add(item);
  void removeFromSampler(String item) => sampler.remove(item);
  void removeAtIndexFromSampler(int index) => sampler.removeAt(index);
  void insertAtIndexInSampler(int index, String item) =>
      sampler.insert(index, item);
  void updateSamplerAtIndex(int index, Function(String) updateFn) =>
      sampler[index] = updateFn(sampler[index]);

  List<int> steps = [];
  void addToSteps(int item) => steps.add(item);
  void removeFromSteps(int item) => steps.remove(item);
  void removeAtIndexFromSteps(int index) => steps.removeAt(index);
  void insertAtIndexInSteps(int index, int item) => steps.insert(index, item);
  void updateStepsAtIndex(int index, Function(int) updateFn) =>
      steps[index] = updateFn(steps[index]);

  List<int> themeIds = [];
  void addToThemeIds(int item) => themeIds.add(item);
  void removeFromThemeIds(int item) => themeIds.remove(item);
  void removeAtIndexFromThemeIds(int index) => themeIds.removeAt(index);
  void insertAtIndexInThemeIds(int index, int item) =>
      themeIds.insert(index, item);
  void updateThemeIdsAtIndex(int index, Function(int) updateFn) =>
      themeIds[index] = updateFn(themeIds[index]);

  List<int> width = [];
  void addToWidth(int item) => width.add(item);
  void removeFromWidth(int item) => width.remove(item);
  void removeAtIndexFromWidth(int index) => width.removeAt(index);
  void insertAtIndexInWidth(int index, int item) => width.insert(index, item);
  void updateWidthAtIndex(int index, Function(int) updateFn) =>
      width[index] = updateFn(width[index]);

  List<String> seed = [];
  void addToSeed(String item) => seed.add(item);
  void removeFromSeed(String item) => seed.remove(item);
  void removeAtIndexFromSeed(int index) => seed.removeAt(index);
  void insertAtIndexInSeed(int index, String item) => seed.insert(index, item);
  void updateSeedAtIndex(int index, Function(String) updateFn) =>
      seed[index] = updateFn(seed[index]);

  List<String> generatedID = [];
  void addToGeneratedID(String item) => generatedID.add(item);
  void removeFromGeneratedID(String item) => generatedID.remove(item);
  void removeAtIndexFromGeneratedID(int index) => generatedID.removeAt(index);
  void insertAtIndexInGeneratedID(int index, String item) =>
      generatedID.insert(index, item);
  void updateGeneratedIDAtIndex(int index, Function(String) updateFn) =>
      generatedID[index] = updateFn(generatedID[index]);

  List<String> loramodelid = [];
  void addToLoramodelid(String item) => loramodelid.add(item);
  void removeFromLoramodelid(String item) => loramodelid.remove(item);
  void removeAtIndexFromLoramodelid(int index) => loramodelid.removeAt(index);
  void insertAtIndexInLoramodelid(int index, String item) =>
      loramodelid.insert(index, item);
  void updateLoramodelidAtIndex(int index, Function(String) updateFn) =>
      loramodelid[index] = updateFn(loramodelid[index]);

  int position = 1;

  bool show = false;

  List<String> modelName = [];
  void addToModelName(String item) => modelName.add(item);
  void removeFromModelName(String item) => modelName.remove(item);
  void removeAtIndexFromModelName(int index) => modelName.removeAt(index);
  void insertAtIndexInModelName(int index, String item) =>
      modelName.insert(index, item);
  void updateModelNameAtIndex(int index, Function(String) updateFn) =>
      modelName[index] = updateFn(modelName[index]);

  List<String> modelTrainingId = [];
  void addToModelTrainingId(String item) => modelTrainingId.add(item);
  void removeFromModelTrainingId(String item) => modelTrainingId.remove(item);
  void removeAtIndexFromModelTrainingId(int index) =>
      modelTrainingId.removeAt(index);
  void insertAtIndexInModelTrainingId(int index, String item) =>
      modelTrainingId.insert(index, item);
  void updateModelTrainingIdAtIndex(int index, Function(String) updateFn) =>
      modelTrainingId[index] = updateFn(modelTrainingId[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getUuid] action in AIPortrait widget.
  String? getuuidresult;
  // Stores action output result for [Backend Call - API (GetModels)] action in AIPortrait widget.
  ApiCallResponse? gettingmodel;
  // Model for signinicon component.
  late SigniniconModel signiniconModel;
  // State field(s) for selectStyle widget.
  CarouselController? selectStyleController;
  int selectStyleCurrentIndex = 1;

  // State field(s) for modelname widget.
  FocusNode? modelnameFocusNode;
  TextEditingController? modelnameTextController;
  String? Function(BuildContext, String?)? modelnameTextControllerValidator;
  // Stores action output result for [Custom Action - deleteUploadedPortrait] action in IconButton widget.
  bool? delete;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  // Stores action output result for [Backend Call - API (PortraitUploader)] action in upload widget.
  ApiCallResponse? awsuploadresult;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for aiportraitslider widget.
  double? aiportraitsliderValue;
  // Stores action output result for [Custom Action - changeToIngeger] action in aiportraitslider widget.
  int? imagenumber;
  // Stores action output result for [Custom Action - selectPortraitTheme] action in Button widget.
  dynamic? portraitTheme;
  // Stores action output result for [Backend Call - API (PortraitTrainingImage)] action in Button widget.
  ApiCallResponse? trainingresult;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfo;
  // Stores action output result for [Backend Call - API (PortraitGenerate)] action in Button widget.
  ApiCallResponse? apiResultnk5;
  // Stores action output result for [Backend Call - API (QueueStatus)] action in Button widget.
  ApiCallResponse? loop;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? gettingImages;
  // Stores action output result for [Custom Action - getUuid] action in Button widget.
  String? getuuidresultAgain;
  // Stores action output result for [Custom Action - selectPortraitTheme] action in Button widget.
  dynamic? portraitThemeModel;
  // Stores action output result for [Backend Call - API (Account)] action in Button widget.
  ApiCallResponse? accountInfoModel;
  // Stores action output result for [Backend Call - API (PortraitGenerate)] action in Button widget.
  ApiCallResponse? apiResultnk5Model;
  // Stores action output result for [Backend Call - API (QueueStatus)] action in Button widget.
  ApiCallResponse? loopModel;
  // Stores action output result for [Backend Call - API (GetGeneratedContents)] action in Button widget.
  ApiCallResponse? gettingImagesModel;

  @override
  void initState(BuildContext context) {
    signiniconModel = createModel(context, () => SigniniconModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signiniconModel.dispose();
    modelnameFocusNode?.dispose();
    modelnameTextController?.dispose();
  }
}
