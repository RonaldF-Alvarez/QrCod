import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'all_ticket_connection_widget.dart' show AllTicketConnectionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTicketConnectionModel
    extends FlutterFlowModel<AllTicketConnectionWidget> {
  ///  Local state fields for this page.

  String? atestea;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldDigitarSerial widget.
  FocusNode? textFieldDigitarSerialFocusNode;
  TextEditingController? textFieldDigitarSerialTextController;
  String? Function(BuildContext, String?)?
      textFieldDigitarSerialTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (PostGerarToken)] action in Buttondeconectar widget.
  ApiCallResponse? apiAllVipResult;
  // Stores action output result for [Backend Call - API (GetEntradas)] action in Buttondeconectar widget.
  ApiCallResponse? getEntradaResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldDigitarSerialFocusNode?.dispose();
    textFieldDigitarSerialTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
