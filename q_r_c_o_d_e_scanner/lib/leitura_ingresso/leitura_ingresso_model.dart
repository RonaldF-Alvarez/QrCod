import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'leitura_ingresso_widget.dart' show LeituraIngressoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeituraIngressoModel extends FlutterFlowModel<LeituraIngressoWidget> {
  ///  Local state fields for this page.

  String evento = 'Selecione o Evento!';

  bool digitar = false;

  String? testecod;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for TextFieldA widget.
  FocusNode? textFieldAFocusNode;
  TextEditingController? textFieldATextController;
  String? Function(BuildContext, String?)? textFieldATextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  var scanOut = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldAFocusNode?.dispose();
    textFieldATextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
