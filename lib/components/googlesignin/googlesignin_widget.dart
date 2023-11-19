import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'googlesignin_model.dart';
export 'googlesignin_model.dart';

class GooglesigninWidget extends StatefulWidget {
  const GooglesigninWidget({super.key});

  @override
  _GooglesigninWidgetState createState() => _GooglesigninWidgetState();
}

class _GooglesigninWidgetState extends State<GooglesigninWidget> {
  late GooglesigninModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GooglesigninModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.00, 0.00),
      child: SizedBox(
        width: 230.0,
        height: 44.0,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: FFButtonWidget(
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  final user = await authManager.signInWithGoogle(context);
                  if (user == null) {
                    return;
                  }

                  context.goNamedAuth('HomePage', context.mounted);
                },
                text: FFLocalizations.of(context).getText(
                  'n1rj6vvv' /* Sign in with Google */,
                ),
                icon: const Icon(
                  Icons.add,
                  color: Colors.transparent,
                  size: 20.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  color: Colors.white,
                  textStyle: GoogleFonts.getFont(
                    'Roboto',
                    color: const Color(0xFF606060),
                    fontSize: 17.0,
                  ),
                  elevation: 4.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.83, 0.00),
              child: Container(
                width: 22.0,
                height: 22.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/google.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
