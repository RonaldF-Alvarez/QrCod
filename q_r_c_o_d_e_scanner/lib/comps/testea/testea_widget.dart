import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testea_model.dart';
export 'testea_model.dart';

class TesteaWidget extends StatefulWidget {
  const TesteaWidget({
    super.key,
    String? abobrinha,
    required this.act,
  }) : this.abobrinha = abobrinha ?? 'ounao';

  final String abobrinha;
  final Future Function()? act;

  @override
  State<TesteaWidget> createState() => _TesteaWidgetState();
}

class _TesteaWidgetState extends State<TesteaWidget> {
  late TesteaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TesteaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
      child: FFButtonWidget(
        onPressed: () async {
          _model.geraToken = await APIAllVipGroup.postGerarTokenCall.call();

          if ((_model.geraToken?.statusCode ?? 200) == 200) {
            await showDialog(
              context: context,
              builder: (alertDialogContext) {
                return AlertDialog(
                  title: Text('a'),
                  content: Text((_model.geraToken?.bodyText ?? '')),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(alertDialogContext),
                      child: Text('Ok'),
                    ),
                  ],
                );
              },
            );
          }

          safeSetState(() {});
        },
        text: 'Conectar ao Servidor',
        options: FFButtonOptions(
          width: 272.0,
          height: 54.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0xFFDF7D1D),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Inter',
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
          elevation: 2.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
