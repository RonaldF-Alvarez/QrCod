import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_ticket_entradas_model.dart';
export 'all_ticket_entradas_model.dart';

class AllTicketEntradasWidget extends StatefulWidget {
  const AllTicketEntradasWidget({super.key});

  @override
  State<AllTicketEntradasWidget> createState() =>
      _AllTicketEntradasWidgetState();
}

class _AllTicketEntradasWidgetState extends State<AllTicketEntradasWidget> {
  late AllTicketEntradasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTicketEntradasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult7zb = await APIAllVipGroup.getEntradasCall.call(
        api: FFAppState().ipadress,
        idcoletorentradas: FFAppState().idColetor,
      );

      if ((_model.apiResult7zb?.succeeded ?? true)) {
        FFAppState().entradasSelecionadas =
            ((_model.apiResult7zb?.jsonBody ?? '')
                    .toList()
                    .map<EntradasStruct?>(EntradasStruct.maybeFromMap)
                    .toList() as Iterable<EntradasStruct?>)
                .withoutNulls
                .where((e) => e.mark == 1)
                .toList()
                .toList()
                .cast<EntradasStruct>();
        safeSetState(() {});
      }
      _model.entradasloading = false;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            'AllTicket - Entradas',
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
          child: Visibility(
            visible: !_model.entradasloading,
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
                FutureBuilder<ApiCallResponse>(
                  future: APIAllVipGroup.getEntradasCall.call(
                    api: FFAppState().ipadress,
                    idcoletorentradas: FFAppState().idColetor,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    final listViewGetEntradasResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final entrada = (listViewGetEntradasResponse.jsonBody
                                    .toList()
                                    .map<EntradasStruct?>(
                                        EntradasStruct.maybeFromMap)
                                    .toList() as Iterable<EntradasStruct?>)
                                .withoutNulls
                                ?.toList() ??
                            [];

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
                                        value: _model.checkboxValueMap[
                                                entradaItem] ??=
                                            entradaItem.mark == 1,
                                        onChanged: (newValue) async {
                                          safeSetState(() =>
                                              _model.checkboxValueMap[
                                                  entradaItem] = newValue!);
                                          if (newValue!) {
                                            FFAppState()
                                                .addToEntradasSelecionadas(
                                                    EntradasStruct(
                                              idEntrada: entradaItem.idEntrada,
                                              descricao: entradaItem.descricao,
                                            ));
                                            safeSetState(() {});
                                            _model.apiResultpix =
                                                await APIAllVipGroup
                                                    .postInserteColetorxEntradaCall
                                                    .call(
                                              api: FFAppState().ipadress,
                                              idColetor: FFAppState().idColetor,
                                              idEntrada: entradaItem.idEntrada,
                                            );

                                            safeSetState(() {});
                                          } else {
                                            FFAppState()
                                                .removeFromEntradasSelecionadas(
                                                    EntradasStruct(
                                              idEntrada: entradaItem.idEntrada,
                                              descricao: entradaItem.descricao,
                                            ));
                                            safeSetState(() {});
                                            _model.apiResultsnb =
                                                await APIAllVipGroup
                                                    .deleteColetorxEntradasCall
                                                    .call(
                                              api: FFAppState().ipadress,
                                              idColetor: FFAppState().idColetor,
                                              idEntrada: entradaItem.idEntrada,
                                            );

                                            safeSetState(() {});
                                          }
                                        },
                                        side: BorderSide(
                                          width: 2,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                    Text(
                                      entradaItem.descricao,
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
                          context.pushNamed('AllTicketValidacao');

                          _model.colEntr =
                              await APIAllVipGroup.getEntradasCall.call(
                            idcoletorentradas: FFAppState().idColetor,
                            api: FFAppState().ipadress,
                          );

                          FFAppState().idEntrad =
                              ((_model.colEntr?.jsonBody ?? '')
                                      .toList()
                                      .map<EntradasStruct?>(
                                          EntradasStruct.maybeFromMap)
                                      .toList() as Iterable<EntradasStruct?>)
                                  .withoutNulls
                                  .firstOrNull!
                                  .idEntrada;
                          safeSetState(() {});

                          safeSetState(() {});
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
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
      ),
    );
  }
}
