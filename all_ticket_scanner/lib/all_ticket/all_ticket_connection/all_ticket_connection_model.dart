import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'all_ticket_connection_widget.dart' show AllTicketConnectionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTicketConnectionModel
    extends FlutterFlowModel<AllTicketConnectionWidget> {
  ///  Local state fields for this page.

  String? atestea;

  bool desativ = false;

  int? validaindex = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getDevice] action in AllTicketConnection widget.
  String? deviceName;
  // State field(s) for TextFieldDigitarSerial widget.
  FocusNode? textFieldDigitarSerialFocusNode;
  TextEditingController? textFieldDigitarSerialTextController;
  String? Function(BuildContext, String?)?
      textFieldDigitarSerialTextControllerValidator;
  // State field(s) for CheckboxA widget.
  bool? checkboxAValue;
  // State field(s) for CheckboxB widget.
  bool? checkboxBValue;
  // State field(s) for CheckboxC widget.
  bool? checkboxCValue;
  // State field(s) for CheckboxD widget.
  bool? checkboxDValue;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for TextColetor widget.
  FocusNode? textColetorFocusNode;
  TextEditingController? textColetorTextController;
  String? Function(BuildContext, String?)? textColetorTextControllerValidator;
  // Stores action output result for [Backend Call - API (PostGerarToken)] action in Buttondeconectar widget.
  ApiCallResponse? apiAllVipResult;
  // Stores action output result for [Backend Call - API (GetColetor)] action in Buttondeconectar widget.
  ApiCallResponse? resultColetor;
  // Stores action output result for [Backend Call - API (PostInsereColetor)] action in Buttondeconectar widget.
  ApiCallResponse? apiResulttuv;
  // Stores action output result for [Backend Call - API (GetColetor)] action in Buttondeconectar widget.
  ApiCallResponse? resultColetor2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldDigitarSerialFocusNode?.dispose();
    textFieldDigitarSerialTextController?.dispose();

    textColetorFocusNode?.dispose();
    textColetorTextController?.dispose();
  }
}
