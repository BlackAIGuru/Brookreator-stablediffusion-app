import '/backend/api_requests/api_calls.dart';
import '/components/deleteconfirm/deleteconfirm_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'buttongroup1_widget.dart' show Buttongroup1Widget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Buttongroup1Model extends FlutterFlowModel<Buttongroup1Widget> {
  ///  Local state fields for this component.

  bool toggleselected = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (AddFavourites)] action in Container widget.
  ApiCallResponse? apiResultvco;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
