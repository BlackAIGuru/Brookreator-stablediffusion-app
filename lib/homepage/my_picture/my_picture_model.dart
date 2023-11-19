import '/components/gallery/gallery_widget.dart';
import '/components/tabbar/tabbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_picture_widget.dart' show MyPictureWidget;
import 'package:flutter/material.dart';

class MyPictureModel extends FlutterFlowModel<MyPictureWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for gallery component.
  late GalleryModel galleryModel;
  // Model for tabbar component.
  late TabbarModel tabbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    galleryModel = createModel(context, () => GalleryModel());
    tabbarModel = createModel(context, () => TabbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    galleryModel.dispose();
    tabbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
