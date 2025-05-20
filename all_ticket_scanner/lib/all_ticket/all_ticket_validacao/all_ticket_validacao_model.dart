import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'all_ticket_validacao_widget.dart' show AllTicketValidacaoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class AllTicketValidacaoModel
    extends FlutterFlowModel<AllTicketValidacaoWidget> {
  ///  Local state fields for this page.

  String evento = 'Selecione o Evento!';

  bool digitar = false;

  String codigo = '';

  Color ingressovalidado = Color(4291546059);

  Color? ingressoanterior = Color(4291546059);

  Color? textovalidacao = Color(4279506971);

  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
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
  // State field(s) for TextFieldTela widget.
  FocusNode? textFieldTelaFocusNode;
  TextEditingController? textFieldTelaTextController;
  String? Function(BuildContext, String?)? textFieldTelaTextControllerValidator;
  var scanOut = '';
  // Stores action output result for [Backend Call - API (GetIngrsso)] action in Button widget.
  ApiCallResponse? apiResultv1h;
  // Stores action output result for [Backend Call - API (GetColetorXEntradas)] action in Button widget.
  ApiCallResponse? colXEntradas;
  // Stores action output result for [Backend Call - API (GetEntrada)] action in Button widget.
  ApiCallResponse? getEntrada;
  AudioPlayer? soundPlayer1;
  // Stores action output result for [Backend Call - API (PutAtualizaIngressoValido)] action in Button widget.
  ApiCallResponse? apiResulto3c;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  // Stores action output result for [Backend Call - API (GetClientesCodigo)] action in Button widget.
  ApiCallResponse? clienteCodigo;
  // Stores action output result for [Backend Call - API (PostInsereClientePassagem)] action in Button widget.
  ApiCallResponse? apiResult5cl;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  AudioPlayer? soundPlayer7;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    columnController?.dispose();
    textFieldAFocusNode?.dispose();
    textFieldATextController?.dispose();

    textFieldTelaFocusNode?.dispose();
    textFieldTelaTextController?.dispose();

    listViewController?.dispose();
  }
}
