import '/components/footbar/footbar_widget.dart';
import '/components/signinicon/signinicon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for signinicon component.
  late SigniniconModel signiniconModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for footbar component.
  late FootbarModel footbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    signiniconModel = createModel(context, () => SigniniconModel());
    footbarModel = createModel(context, () => FootbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signiniconModel.dispose();
    tabBarController?.dispose();
    footbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
