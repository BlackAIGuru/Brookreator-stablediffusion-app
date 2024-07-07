import '/components/buttongroup_1/buttongroup1_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'detailed_info_widget.dart' show DetailedInfoWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class DetailedInfoModel extends FlutterFlowModel<DetailedInfoWidget> {
  ///  Local state fields for this component.

  int imagecurrentindex = 0;

  ///  State fields for stateful widgets in this component.

  // Model for buttongroup_1 component.
  late Buttongroup1Model buttongroup1Model;

  @override
  void initState(BuildContext context) {
    buttongroup1Model = createModel(context, () => Buttongroup1Model());
  }

  @override
  void dispose() {
    buttongroup1Model.dispose();
  }
}
