import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'tela_cadastro_widget.dart' show TelaCadastroWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TelaCadastroModel extends FlutterFlowModel<TelaCadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Usuario widget.
  FocusNode? usuarioFocusNode;
  TextEditingController? usuarioTextController;
  String? Function(BuildContext, String?)? usuarioTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for Coletor widget.
  FocusNode? coletorFocusNode;
  TextEditingController? coletorTextController;
  String? Function(BuildContext, String?)? coletorTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    usuarioFocusNode?.dispose();
    usuarioTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    coletorFocusNode?.dispose();
    coletorTextController?.dispose();
  }
}
