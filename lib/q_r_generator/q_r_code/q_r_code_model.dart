import '/backend/api_requests/api_calls.dart';
import '/components/buttongroup_2/buttongroup2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'q_r_code_widget.dart' show QRCodeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class QRCodeModel extends FlutterFlowModel<QRCodeWidget> {
  ///  Local state fields for this component.

  int imagecurrentindex = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (AddFavourites)] action in Container widget.
  ApiCallResponse? apiResultvco;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for buttongroup_2 component.
  late Buttongroup2Model buttongroup2Model;

  @override
  void initState(BuildContext context) {
    buttongroup2Model = createModel(context, () => Buttongroup2Model());
  }

  @override
  void dispose() {
    buttongroup2Model.dispose();
  }
}
