import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_picture_widget.dart' show MyPictureWidget;
import 'package:flutter/material.dart';

class MyPictureModel extends FlutterFlowModel<MyPictureWidget> {
  ///  Local state fields for this page.

  String mypicturefiltervalue = '';

  String favouritefiltervalue = '';

  List<dynamic> imageurl = [];
  void addToImageurl(dynamic item) => imageurl.add(item);
  void removeFromImageurl(dynamic item) => imageurl.remove(item);
  void removeAtIndexFromImageurl(int index) => imageurl.removeAt(index);
  void insertAtIndexInImageurl(int index, dynamic item) =>
      imageurl.insert(index, item);
  void updateImageurlAtIndex(int index, Function(dynamic) updateFn) =>
      imageurl[index] = updateFn(imageurl[index]);

  List<ResultTypeStruct> resultimages = [];
  void addToResultimages(ResultTypeStruct item) => resultimages.add(item);
  void removeFromResultimages(ResultTypeStruct item) =>
      resultimages.remove(item);
  void removeAtIndexFromResultimages(int index) => resultimages.removeAt(index);
  void insertAtIndexInResultimages(int index, ResultTypeStruct item) =>
      resultimages.insert(index, item);
  void updateResultimagesAtIndex(
          int index, Function(ResultTypeStruct) updateFn) =>
      resultimages[index] = updateFn(resultimages[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for mypicturechoice widget.
  FormFieldController<List<String>>? mypicturechoiceValueController;
  String? get mypicturechoiceValue =>
      mypicturechoiceValueController?.value?.firstOrNull;
  set mypicturechoiceValue(String? val) =>
      mypicturechoiceValueController?.value = val != null ? [val] : [];
  // State field(s) for favouritechoice widget.
  FormFieldController<List<String>>? favouritechoiceValueController;
  String? get favouritechoiceValue =>
      favouritechoiceValueController?.value?.firstOrNull;
  set favouritechoiceValue(String? val) =>
      favouritechoiceValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
