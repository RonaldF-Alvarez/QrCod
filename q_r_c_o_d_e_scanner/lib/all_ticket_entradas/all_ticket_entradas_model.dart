import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'all_ticket_entradas_widget.dart' show AllTicketEntradasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllTicketEntradasModel extends FlutterFlowModel<AllTicketEntradasWidget> {
  ///  Local state fields for this page.

  bool entradasloading = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetEntradas)] action in AllTicketEntradas widget.
  ApiCallResponse? apiResult7zb;
  // State field(s) for Checkbox widget.
  Map<EntradasStruct, bool> checkboxValueMap = {};
  List<EntradasStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Backend Call - API (PostInserteColetorxEntrada)] action in Checkbox widget.
  ApiCallResponse? apiResultpix;
  // Stores action output result for [Backend Call - API (DeleteColetorxEntradas)] action in Checkbox widget.
  ApiCallResponse? apiResultsnb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
