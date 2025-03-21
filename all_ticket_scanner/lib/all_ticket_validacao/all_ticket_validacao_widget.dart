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
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'all_ticket_validacao_model.dart';
export 'all_ticket_validacao_model.dart';

class AllTicketValidacaoWidget extends StatefulWidget {
  const AllTicketValidacaoWidget({super.key});

  static String routeName = 'AllTicketValidacao';
  static String routePath = '/allTicketValidacao';

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

    _model.switchValue1 = false;
    _model.switchValue2 = false;
    _model.switchValue3 = false;
    _model.textFieldATextController ??= TextEditingController();
    _model.textFieldAFocusNode ??= FocusNode();

    _model.textFieldTelaTextController ??=
        TextEditingController(text: 'AGUARDANDO LEITURA!');
    _model.textFieldTelaFocusNode ??= FocusNode();

    _model.textFieldZTextController ??=
        TextEditingController(text: 'AGUARDANDO LEITURA!');
    _model.textFieldZFocusNode ??= FocusNode();

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFDF7D1D),
        automaticallyImplyLeading: false,
        title: Text(
          'AllTicket  - Validação',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w600,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 8.0, 8.0, 8.0),
                          child: AutoSizeText(
                            'Conectado',
                            textAlign: TextAlign.center,
                            minFontSize: 14.0,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Color(0xFF2DAE40),
                                  fontSize: 26.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 16.0,
                            buttonSize: 38.0,
                            fillColor: Color(0xFFDF7D1D),
                            icon: Icon(
                              Icons.build_rounded,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              safeSetState(() {
                                _model.textFieldTelaTextController?.text =
                                    'AGUARDANDO LEITURA!';
                              });
                              _model.ingressovalidado = Color(0xFFCBCBCB);
                              safeSetState(() {});

                              context.pushNamed(
                                  AllTicketConnectionWidget.routeName);
                            },
                          ),
                        ),
                      ),
                    ),
                  ].addToEnd(SizedBox(width: 8.0)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: AutoSizeText(
                      FFAppState().tipoValidacao == 0
                          ? 'Validação: AllVip'
                          : 'Validação: AllTicket',
                      textAlign: TextAlign.center,
                      minFontSize: 14.0,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Digitar \nCódigo',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Switch.adaptive(
                          value: _model.switchValue1!,
                          onChanged: (newValue) async {
                            safeSetState(() => _model.switchValue1 = newValue!);
                            if (newValue!) {
                              _model.digitar = true;
                              safeSetState(() {});
                            } else {
                              _model.digitar = false;
                              safeSetState(() {});
                            }
                          },
                          activeColor: FlutterFlowTheme.of(context).warning,
                          activeTrackColor: Color(0x4EEC9C4B),
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).warning,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Mostrar \nImagem',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Switch.adaptive(
                          value: _model.switchValue2!,
                          onChanged: (newValue) async {
                            safeSetState(() => _model.switchValue2 = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).warning,
                          activeTrackColor: Color(0x4EEC9C4B),
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).warning,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Lanterna',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Switch.adaptive(
                          value: _model.switchValue3!,
                          onChanged: (newValue) async {
                            safeSetState(() => _model.switchValue3 = newValue!);
                            if (newValue!) {
                              await actions.onFlashlight();
                            } else {
                              await actions.offFlashlight();
                            }
                          },
                          activeColor: FlutterFlowTheme.of(context).warning,
                          activeTrackColor: Color(0x4EEC9C4B),
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          inactiveThumbColor:
                              FlutterFlowTheme.of(context).warning,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (_model.digitar != false)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    child: TextFormField(
                      controller: _model.textFieldATextController,
                      focusNode: _model.textFieldAFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        isDense: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Digitar Código',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).warning,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 22.0,
                            letterSpacing: 0.0,
                          ),
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator: _model.textFieldATextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.181,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                3.0, 8.0, 3.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.textFieldTelaTextController,
                                focusNode: _model.textFieldTelaFocusNode,
                                autofocus: false,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: _model.ingressovalidado,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: _model.textovalidacao,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                    ),
                                textAlign: TextAlign.center,
                                maxLines: null,
                                minLines: 3,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .textFieldTelaTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (_model.digitar) {
                              if (_model.textFieldATextController.text == '') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('ERRO!'),
                                      content: Text(
                                          'Por favor, insira o número do Ingresso!'),
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
                              } else {
                                _model.codigo =
                                    _model.textFieldATextController.text;
                                safeSetState(() {});
                              }
                            } else {
                              _model.scanOut =
                                  await FlutterBarcodeScanner.scanBarcode(
                                '#C62828', // scanning line color
                                'Cancel', // cancel button text
                                true, // whether to show the flash icon
                                ScanMode.QR,
                              );

                              _shouldSetState = true;
                              _model.codigo = _model.scanOut!;
                              safeSetState(() {});
                            }

                            if (FFAppState().tipoValidacao == 1) {
                              _model.apiResultv1h =
                                  await APIAllVipGroup.getIngrssoCall.call(
                                api: FFAppState().ipadress,
                                codIngresso: _model.codigo,
                              );

                              _shouldSetState = true;
                              if ((_model.apiResultv1h?.succeeded ?? true)) {
                                FFAppState().DataHoraIngresso =
                                    functions.formatarDataHora(
                                        IngressoStruct.maybeFromMap((_model
                                                    .apiResultv1h?.jsonBody ??
                                                ''))
                                            ?.datahoraEntrada)!;
                                safeSetState(() {});
                                FFAppState()
                                    .idEntrad = IngressoStruct.maybeFromMap(
                                        (_model.apiResultv1h?.jsonBody ?? ''))!
                                    .idEntrada;
                                safeSetState(() {});
                                if (FFAppState().DataHoraIngresso == '') {
                                  _model.colXEntradas = await APIAllVipGroup
                                      .getColetorXEntradasCall
                                      .call(
                                    api: FFAppState().ipadress,
                                    idCol: FFAppState().idColetor,
                                    idEntrada: FFAppState().idEntrad,
                                  );

                                  _shouldSetState = true;
                                  if (!(_model.colXEntradas?.succeeded ??
                                      true)) {
                                    if (FFAppState().tipoValidacao != 0) {
                                      _model.getEntrada = await APIAllVipGroup
                                          .getEntradaCall
                                          .call(
                                        api: FFAppState().ipadress,
                                        idEntra: FFAppState().idEntrad,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.getEntrada?.succeeded ??
                                          true)) {
                                        _model.ingressovalidado =
                                            Color(0xFFF9FF00);
                                        _model.textovalidacao =
                                            Color(4279506971);
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.textFieldTelaTextController
                                                  ?.text =
                                              'Dirija-se à entrada: ${EntradaStruct.maybeFromMap((_model.getEntrada?.jsonBody ?? ''))?.descricao}';
                                        });
                                        safeSetState(() {
                                          _model.textFieldATextController
                                              ?.clear();
                                        });
                                        await Future.delayed(
                                            const Duration(milliseconds: 3000));
                                        safeSetState(() {
                                          _model.textFieldTelaTextController
                                              ?.text = 'AGUARDANDO LEITURA!';
                                        });
                                        _model.ingressovalidado =
                                            Color(0xFFCBCBCB);
                                        safeSetState(() {});
                                        _model.ingressoanterior =
                                            Color(0xFFF9FF00);
                                        _model.textovalidacao =
                                            Color(4279506971);
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.textFieldZTextController
                                                  ?.text =
                                              'Dirija-se à entrada: ${EntradaStruct.maybeFromMap((_model.getEntrada?.jsonBody ?? ''))?.descricao}';
                                        });
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      } else {
                                        if (_shouldSetState)
                                          safeSetState(() {});
                                        return;
                                      }
                                    }
                                  }
                                  _model.apiResulto3c = await APIAllVipGroup
                                      .putAtualizaIngressoValidoCall
                                      .call(
                                    api: FFAppState().ipadress,
                                    idIngresso: IngressoStruct.maybeFromMap(
                                            (_model.apiResultv1h?.jsonBody ??
                                                ''))
                                        ?.idIngresso
                                        ?.toString(),
                                    dataHoraValidaIngresso:
                                        getCurrentTimestamp.toString(),
                                  );

                                  _shouldSetState = true;
                                  if ((_model.apiResulto3c?.succeeded ??
                                      true)) {
                                    _model.ingressovalidado = Color(0xFF00B21D);
                                    _model.textovalidacao = Color(4279506971);
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textFieldTelaTextController?.text =
                                          'BEM-VINDO!';
                                    });
                                    safeSetState(() {
                                      _model.textFieldATextController?.clear();
                                    });
                                    await Future.delayed(
                                        const Duration(milliseconds: 3000));
                                    safeSetState(() {
                                      _model.textFieldTelaTextController?.text =
                                          'AGUARDANDO LEITURA!';
                                    });
                                    _model.ingressovalidado = Color(0xFFCBCBCB);
                                    safeSetState(() {});
                                    _model.ingressoanterior = Color(0xFF00B21D);
                                    _model.textovalidacao = Color(4279506971);
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textFieldZTextController?.text =
                                          'BEM-VINDO!';
                                    });
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  } else {
                                    if (_shouldSetState) safeSetState(() {});
                                    return;
                                  }
                                } else {
                                  _model.ingressovalidado = Color(0xFFEC0000);
                                  _model.textovalidacao = Colors.white;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'INGRESSO JÁ VALIDADO: ${FFAppState().DataHoraIngresso}';
                                  });
                                  safeSetState(() {
                                    _model.textFieldATextController?.clear();
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 3000));
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'AGUARDANDO LEITURA!';
                                  });
                                  _model.ingressovalidado = Color(0xFFCBCBCB);
                                  safeSetState(() {});
                                  _model.ingressoanterior = Color(0xFFEC0000);
                                  _model.textovalidacao =
                                      FlutterFlowTheme.of(context)
                                          .secondaryText;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldZTextController?.text =
                                        'Ingresso já validado: ${FFAppState().DataHoraIngresso}';
                                  });
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                _model.ingressovalidado = Color(0xFFEC0000);
                                _model.textovalidacao = Colors.white;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textFieldTelaTextController?.text =
                                      'INGRESSO INVÁLIDO!';
                                });
                                safeSetState(() {
                                  _model.textFieldATextController?.clear();
                                });
                                await Future.delayed(
                                    const Duration(milliseconds: 3000));
                                safeSetState(() {
                                  _model.textFieldTelaTextController?.text =
                                      'AGUARDANDO LEITURA!';
                                });
                                _model.ingressovalidado = Color(0xFFCBCBCB);
                                safeSetState(() {});
                                _model.ingressoanterior = Color(0xFFEC0000);
                                _model.textovalidacao =
                                    FlutterFlowTheme.of(context).secondaryText;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textFieldZTextController?.text =
                                      'INGRESSO INVÁLIDO!';
                                });
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            } else {
                              _model.clienteCodigo = await APIAllVipGroup
                                  .getClientesCodigoCall
                                  .call(
                                api: FFAppState().ipadress,
                                codigo: _model.codigo,
                              );

                              _shouldSetState = true;
                              if ((_model.clienteCodigo?.succeeded ?? true)) {
                                _model.apiResult5cl = await APIAllVipGroup
                                    .postInsereClientePassagemCall
                                    .call(
                                  api: FFAppState().ipadress,
                                  clienteId: ClienteStruct.maybeFromMap(
                                          (_model.clienteCodigo?.jsonBody ??
                                              ''))
                                      ?.idCliente,
                                  clienteid: ClienteStruct.maybeFromMap(
                                          (_model.clienteCodigo?.jsonBody ??
                                              ''))
                                      ?.id,
                                  id: ClienteStruct.maybeFromMap(
                                          (_model.clienteCodigo?.jsonBody ??
                                              ''))
                                      ?.id,
                                );

                                _shouldSetState = true;
                                if ((_model.apiResult5cl?.succeeded ?? true)) {
                                  _model.ingressovalidado = Color(0xFF00B21D);
                                  _model.textovalidacao = Color(4279506971);
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'BEM-VINDO!';
                                  });
                                  safeSetState(() {
                                    _model.textFieldATextController?.clear();
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 3000));
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'AGUARDANDO LEITURA!';
                                  });
                                  _model.ingressovalidado = Color(0xFFCBCBCB);
                                  safeSetState(() {});
                                  _model.ingressoanterior = Color(0xFF00B21D);
                                  _model.textovalidacao = Color(4279506971);
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldZTextController?.text =
                                        'BEM-VINDO!';
                                  });
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                } else {
                                  _model.ingressovalidado = Color(0xFFEC0000);
                                  _model.textovalidacao = Colors.white;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'Erro ao validar passagem!';
                                  });
                                  safeSetState(() {
                                    _model.textFieldATextController?.clear();
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 3000));
                                  safeSetState(() {
                                    _model.textFieldTelaTextController?.text =
                                        'AGUARDANDO LEITURA!';
                                  });
                                  _model.ingressovalidado = Color(0xFFCBCBCB);
                                  safeSetState(() {});
                                  _model.ingressoanterior = Color(0xFFEC0000);
                                  _model.textovalidacao =
                                      FlutterFlowTheme.of(context)
                                          .secondaryText;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.textFieldZTextController?.text =
                                        'Erro ao validar passagem!';
                                  });
                                  if (_shouldSetState) safeSetState(() {});
                                  return;
                                }
                              } else {
                                _model.ingressovalidado = Color(0xFFEC0000);
                                _model.textovalidacao = Colors.white;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textFieldTelaTextController?.text =
                                      'INGRESSO INVÁLIDO!';
                                });
                                safeSetState(() {
                                  _model.textFieldATextController?.clear();
                                });
                                await Future.delayed(
                                    const Duration(milliseconds: 3000));
                                safeSetState(() {
                                  _model.textFieldTelaTextController?.text =
                                      'AGUARDANDO LEITURA!';
                                });
                                _model.ingressovalidado = Color(0xFFCBCBCB);
                                safeSetState(() {});
                                _model.ingressoanterior = Color(0xFFEC0000);
                                _model.textovalidacao =
                                    FlutterFlowTheme.of(context).secondaryText;
                                safeSetState(() {});
                                safeSetState(() {
                                  _model.textFieldZTextController?.text =
                                      'INGRESSO INVÁLIDO!';
                                });
                                if (_shouldSetState) safeSetState(() {});
                                return;
                              }
                            }

                            if (_shouldSetState) safeSetState(() {});
                          },
                          text: 'Validar',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 200.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFDF7D1D),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 42.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Ingresso Anterior:',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(3.0, 2.0, 3.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textFieldZTextController,
                            focusNode: _model.textFieldZFocusNode,
                            autofocus: false,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).warning,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: valueOrDefault<Color>(
                                _model.ingressoanterior,
                                Color(0xFFCBCBCB),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: _model.textovalidacao,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            textAlign: TextAlign.center,
                            maxLines: null,
                            minLines: 1,
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textFieldZTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
