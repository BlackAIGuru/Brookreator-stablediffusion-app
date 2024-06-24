import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'my_picture_widget.dart' show MyPictureWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyPictureModel extends FlutterFlowModel<MyPictureWidget> {
  ///  Local state fields for this page.

  String mypicturefiltervalue = '';

  String favouritefiltervalue = '';

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
  // State field(s) for StaggeredView widget.

  PagingController<ApiPagingParams, dynamic>? staggeredViewPagingController1;
  Function(ApiPagingParams nextPageMarker)? staggeredViewApiCall1;

  // State field(s) for favourite widget.
  FormFieldController<List<String>>? favouriteValueController;
  String? get favouriteValue => favouriteValueController?.value?.firstOrNull;
  set favouriteValue(String? val) =>
      favouriteValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    staggeredViewPagingController1?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setStaggeredViewController1(
    Function(ApiPagingParams) apiCall,
  ) {
    staggeredViewApiCall1 = apiCall;
    return staggeredViewPagingController1 ??=
        _createStaggeredViewController1(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createStaggeredViewController1(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller..addPageRequestListener(staggeredViewGetAllImagesPage1);
  }

  void staggeredViewGetAllImagesPage1(ApiPagingParams nextPageMarker) =>
      staggeredViewApiCall1!(nextPageMarker)
          .then((staggeredViewGetAllImagesResponse) {
        final pageItems = (BrookreatorGroup.getAllImagesCall
                    .url(
                      staggeredViewGetAllImagesResponse.jsonBody,
                    )!
                    .where((e) => (mypicturechoiceValue == 'All') ||
                            (mypicturechoiceValue == 'ทั้งหมด')
                        ? true
                        : (mypicturefiltervalue ==
                            getJsonField(
                              e,
                              r'''$.feature''',
                            ).toString().toString()))
                    .toList() ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        staggeredViewPagingController1?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: staggeredViewGetAllImagesResponse,
                )
              : null,
        );
      });
}
