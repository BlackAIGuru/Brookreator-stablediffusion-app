import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/components/buttongroup_2/buttongroup2_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'image_result_widget.dart' show ImageResultWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ImageResultModel extends FlutterFlowModel<ImageResultWidget> {
  ///  Local state fields for this component.

  int imagecurrentindex = 0;

  ///  State fields for stateful widgets in this component.

  // Model for buttongroup_1 component.
  late Buttongroup1Model buttongroup1Model;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 0;

  // Model for buttongroup_2 component.
  late Buttongroup2Model buttongroup2Model;

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
}
