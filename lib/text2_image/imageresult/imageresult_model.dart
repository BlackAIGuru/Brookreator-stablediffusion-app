import '/components/buttongroup_2/buttongroup2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'imageresult_widget.dart' show ImageresultWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageresultModel extends FlutterFlowModel<ImageresultWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for buttongroup_2 component.
  late Buttongroup2Model buttongroup2Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttongroup2Model = createModel(context, () => Buttongroup2Model());
  }

  @override
  void dispose() {
    buttongroup2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
