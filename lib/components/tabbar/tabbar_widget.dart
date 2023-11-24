import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tabbar_model.dart';
export 'tabbar_model.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  _TabbarWidgetState createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with TickerProviderStateMixin {
  late TabbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TabbarModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      children: [
        Align(
          alignment: const Alignment(0.0, 0),
          child: FlutterFlowButtonTabBar(
            useToggleButtonStyle: true,
            labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'NotoSansThai',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: false,
                ),
            unselectedLabelStyle: const TextStyle(),
            labelColor: FlutterFlowTheme.of(context).primaryBackground,
            unselectedLabelColor: FlutterFlowTheme.of(context).primaryText,
            backgroundColor: FlutterFlowTheme.of(context).primary,
            unselectedBackgroundColor: FlutterFlowTheme.of(context).alternate,
            borderColor: FlutterFlowTheme.of(context).primaryBackground,
            unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
            borderWidth: 5.0,
            borderRadius: 20.0,
            elevation: 0.0,
            buttonMargin: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            tabs: [
              Tab(
                text: FFLocalizations.of(context).getText(
                  '9mcftlua' /* All */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'ey2ii5pn' /* Text to Image */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'unj4zim0' /* AI portrait */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'zxesm7qp' /* AI Video */,
                ),
              ),
              Tab(
                text: FFLocalizations.of(context).getText(
                  'yh3v81af' /* QR Generator */,
                ),
              ),
            ],
            controller: _model.tabBarController,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _model.tabBarController,
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ],
    );
  }
}
