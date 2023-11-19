import '/components/gallery/gallery_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_pictures_open_widget.dart' show MyPicturesOpenWidget;
import 'package:flutter/material.dart';

class MyPicturesOpenModel extends FlutterFlowModel<MyPicturesOpenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for gallery component.
  late GalleryModel galleryModel1;
  // Model for gallery component.
  late GalleryModel galleryModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    galleryModel1 = createModel(context, () => GalleryModel());
    galleryModel2 = createModel(context, () => GalleryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    galleryModel1.dispose();
    galleryModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
