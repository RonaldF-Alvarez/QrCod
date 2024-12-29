import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_ticket_validacao_model.dart';
export 'all_ticket_validacao_model.dart';

class AllTicketValidacaoWidget extends StatefulWidget {
  const AllTicketValidacaoWidget({super.key});

  @override
  State<AllTicketValidacaoWidget> createState() =>
      _AllTicketValidacaoWidgetState();
}

class _AllTicketValidacaoWidgetState extends State<AllTicketValidacaoWidget> {
  late AllTicketValidacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTicketValidacaoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<EventoTicketRow>>(
      future: EventoTicketTable().queryRows(
        queryFn: (q) => q,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<EventoTicketRow> allTicketValidacaoEventoTicketRowList =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFFDF7D1D),
              automaticallyImplyLeading: false,
              title: Text(
                'AllTicketValidação',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Sora',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Text(
                      'Validação de entrada',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final entrada =
                          allTicketValidacaoEventoTicketRowList.toList();

                      return ListView.separated(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: entrada.length,
                        separatorBuilder: (_, __) => SizedBox(height: 8.0),
                        itemBuilder: (context, entradaIndex) {
                          final entradaItem = entrada[entradaIndex];
                          return Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                    child: Checkbox(
                                      value: _model
                                              .checkboxValueMap[entradaItem] ??=
                                          false,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                                .checkboxValueMap[entradaItem] =
                                            newValue!);
                                      },
                                      side: BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                  Text(
                                    entradaItem.tipoTicket,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'LeituraIngresso',
                              queryParameters: {
                                'eventotipo': serializeParam(
                                  '',
                                  ParamType.String,
                                ),
                                'conexao': serializeParam(
                                  false,
                                  ParamType.bool,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Definir entrada',
                          options: FFButtonOptions(
                            width: 272.0,
                            height: 54.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFDF7D1D),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
