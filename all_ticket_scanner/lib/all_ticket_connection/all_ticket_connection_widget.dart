import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_ticket_connection_model.dart';
export 'all_ticket_connection_model.dart';

class AllTicketConnectionWidget extends StatefulWidget {
  const AllTicketConnectionWidget({
    super.key,
    String? teste,
  }) : this.teste = teste ?? 'true';

  final String teste;

  @override
  State<AllTicketConnectionWidget> createState() =>
      _AllTicketConnectionWidgetState();
}

class _AllTicketConnectionWidgetState extends State<AllTicketConnectionWidget> {
  late AllTicketConnectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllTicketConnectionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.textFieldDigitarSerialTextController?.text =
            FFAppState().ipState;
      });
      safeSetState(() {
        _model.textColetorTextController?.text = FFAppState().ColState;
      });
    });

    _model.textFieldDigitarSerialTextController ??= TextEditingController();
    _model.textFieldDigitarSerialFocusNode ??= FocusNode();

    _model.textColetorTextController ??= TextEditingController();
    _model.textColetorFocusNode ??= FocusNode();

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
            'AllTicket - Conexão',
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
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 0.0),
                child: Container(
                  width: double.infinity,
                  child: TextFormField(
                    controller: _model.textFieldDigitarSerialTextController,
                    focusNode: _model.textFieldDigitarSerialFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: ' ',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Digite  Serial ou IP.....',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).warning,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).secondaryText,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).alternate,
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.center,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model
                        .textFieldDigitarSerialTextControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(38.0, 32.0, 38.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).warning,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Conexão',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      value: _model.checkboxAValue ??= true,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.checkboxAValue = newValue!);
                                        if (newValue!) {
                                          safeSetState(() {
                                            _model.checkboxBValue = false;
                                          });
                                        }
                                      },
                                      side: BorderSide(
                                        width: 2,
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).warning,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                  Text(
                                    'Servidor Local (IP + Rota)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
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
                                          value: _model.checkboxBValue ??=
                                              false,
                                          onChanged: (_model.desativ == false)
                                              ? null
                                              : (newValue) async {
                                                  safeSetState(() =>
                                                      _model.checkboxBValue =
                                                          newValue!);
                                                  if (newValue!) {
                                                    safeSetState(() {
                                                      _model.checkboxAValue =
                                                          false;
                                                    });
                                                  }
                                                },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .warning,
                                          checkColor: (_model.desativ == false)
                                              ? null
                                              : FlutterFlowTheme.of(context)
                                                  .info,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Servidor On-line (serial)   ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Validação',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            checkboxTheme: CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).alternate,
                          ),
                          child: Checkbox(
                            value: _model.checkboxCValue ??= true,
                            onChanged: (newValue) async {
                              safeSetState(
                                  () => _model.checkboxCValue = newValue!);
                              if (newValue!) {
                                safeSetState(() {
                                  _model.checkboxDValue = false;
                                });
                                FFAppState().tipoValidacao = 1;
                                safeSetState(() {});
                              } else {
                                FFAppState().tipoValidacao = 0;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.checkboxDValue = true;
                                });
                              }
                            },
                            side: BorderSide(
                              width: 2,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            activeColor: FlutterFlowTheme.of(context).warning,
                            checkColor: FlutterFlowTheme.of(context).info,
                          ),
                        ),
                        Text(
                          'AllTicket',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                              child: Checkbox(
                                value: _model.checkboxDValue ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.checkboxDValue = newValue!);
                                  if (newValue!) {
                                    safeSetState(() {
                                      _model.checkboxCValue = false;
                                    });
                                    FFAppState().tipoValidacao = 0;
                                    safeSetState(() {});
                                  } else {
                                    FFAppState().tipoValidacao = 1;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.checkboxCValue = true;
                                    });
                                  }
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).warning,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'AllVip     ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 70.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      child: SwitchListTile.adaptive(
                        value: _model.switchListTileValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(
                              () => _model.switchListTileValue = newValue!);
                        },
                        title: Text(
                          'Validar',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Sora',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        subtitle: Text(
                          'Saída',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        tileColor: FlutterFlowTheme.of(context).warning,
                        activeColor: Color(0xFFF1F4F8),
                        activeTrackColor: FlutterFlowTheme.of(context).warning,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.textColetorTextController,
                        focusNode: _model.textColetorFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: ' ',
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Nome do Coletor',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).warning,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textColetorTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Release V 1.0',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                    ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        if ((_model.textFieldDigitarSerialTextController.text !=
                                '') &&
                            (_model.textColetorTextController.text != '') &&
                            (_model.textColetorTextController.text !=
                                'Erro ao acessar o nome do aparelho')) {
                          _model.apiAllVipResult =
                              await APIAllVipGroup.postGerarTokenCall.call(
                            api: _model
                                .textFieldDigitarSerialTextController.text,
                          );

                          _shouldSetState = true;
                          if ((_model.apiAllVipResult?.statusCode ?? 200) ==
                              200) {
                            FFAppState().ipadress = _model
                                .textFieldDigitarSerialTextController.text;
                            safeSetState(() {});
                            FFAppState().coletor =
                                _model.textColetorTextController.text;
                            safeSetState(() {});
                            _model.resultColetor =
                                await APIAllVipGroup.getColetorCall.call(
                              api: FFAppState().ipadress,
                              codColetor: FFAppState().coletor,
                            );

                            _shouldSetState = true;
                            if ((_model.resultColetor?.succeeded ?? true)) {
                              FFAppState()
                                  .idColetor = ColetorStruct.maybeFromMap(
                                      (_model.resultColetor?.jsonBody ?? ''))!
                                  .idColetor;
                              safeSetState(() {});
                            } else {
                              _model.apiResulttuv = await APIAllVipGroup
                                  .postInsereColetorCall
                                  .call(
                                api: FFAppState().ipadress,
                                codColetor: FFAppState().coletor,
                              );

                              _shouldSetState = true;
                              if ((_model.apiResulttuv?.succeeded ?? true)) {
                                _model.resultColetor2 =
                                    await APIAllVipGroup.getColetorCall.call(
                                  api: FFAppState().ipadress,
                                  codColetor: FFAppState().coletor,
                                );

                                _shouldSetState = true;
                                if ((_model.resultColetor2?.succeeded ??
                                    true)) {
                                  FFAppState().idColetor =
                                      ColetorStruct.maybeFromMap((_model
                                                  .resultColetor2?.jsonBody ??
                                              ''))!
                                          .idColetor;
                                  safeSetState(() {});
                                } else {
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }

                            FFAppState().ipState = _model
                                .textFieldDigitarSerialTextController.text;
                            safeSetState(() {});
                            FFAppState().ColState =
                                _model.textColetorTextController.text;
                            safeSetState(() {});
                            if (FFAppState().tipoValidacao == 1) {
                              context.pushNamed('AllTicketEntradas');
                            } else {
                              context.pushNamed('AllTicketValidacao');
                            }
                          } else {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Erro'),
                                  content: Text(
                                      'Por Favor, verifique os dados e tente novamente! Resposta da API: ${APIErrorStruct.maybeFromMap((_model.apiAllVipResult?.jsonBody ?? ''))?.result}'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Verifique os dados!'),
                                content: Text('Verifique o IP e o Coletor.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          if (_shouldSetState) safeSetState(() {});
                          return;
                        }

                        if (_shouldSetState) safeSetState(() {});
                      },
                      text: 'Conectar ao Servidor',
                      options: FFButtonOptions(
                        width: 272.0,
                        height: 54.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
