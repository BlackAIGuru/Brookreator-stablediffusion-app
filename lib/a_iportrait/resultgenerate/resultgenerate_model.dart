import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/components/buttongroup_2/buttongroup2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resultgenerate_widget.dart' show ResultgenerateWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ResultgenerateModel extends FlutterFlowModel<ResultgenerateWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for buttongroup_1 component.
  late Buttongroup1Model buttongroup1Model;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for buttongroup_2 component.
  late Buttongroup2Model buttongroup2Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    buttongroup1Model = createModel(context, () => Buttongroup1Model());
    buttongroup2Model = createModel(context, () => Buttongroup2Model());
  }

  @override
  void dispose() {
    buttongroup1Model.dispose();
    buttongroup2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
