import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
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
  // State field(s) for TextColetor widget.
  FocusNode? textColetorFocusNode;
  TextEditingController? textColetorTextController;
  String? Function(BuildContext, String?)? textColetorTextControllerValidator;
  // State field(s) for TextFieldAAA widget.
  FocusNode? textFieldAAAFocusNode;
  TextEditingController? textFieldAAATextController;
  String? Function(BuildContext, String?)? textFieldAAATextControllerValidator;
  // Stores action output result for [Backend Call - API (PostGerarToken)] action in Buttondeconectar widget.
  ApiCallResponse? apiAllVipResult;
  // Stores action output result for [Backend Call - API (GetColetor)] action in Buttondeconectar widget.
  ApiCallResponse? resultColetor;
  // Stores action output result for [Backend Call - API (PostInsereColetor)] action in Buttondeconectar widget.
  ApiCallResponse? apiResulttuv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldDigitarSerialFocusNode?.dispose();
    textFieldDigitarSerialTextController?.dispose();

    textColetorFocusNode?.dispose();
    textColetorTextController?.dispose();

    textFieldAAAFocusNode?.dispose();
    textFieldAAATextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
