// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngressoStruct extends BaseStruct {
  IngressoStruct({
    int? idIngresso,
    String? codigo,
    String? datahoraEntrada,
    String? processado,
    String? validadorIngresso,
    String? ingressogerado,
    String? diaingresso,
    int? idEntrada,
  })  : _idIngresso = idIngresso,
        _codigo = codigo,
        _datahoraEntrada = datahoraEntrada,
        _processado = processado,
        _validadorIngresso = validadorIngresso,
        _ingressogerado = ingressogerado,
        _diaingresso = diaingresso,
        _idEntrada = idEntrada;

  // "idIngresso" field.
  int? _idIngresso;
  int get idIngresso => _idIngresso ?? 0;
  set idIngresso(int? val) => _idIngresso = val;

  void incrementIdIngresso(int amount) => idIngresso = idIngresso + amount;

  bool hasIdIngresso() => _idIngresso != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "datahoraEntrada" field.
  String? _datahoraEntrada;
  String get datahoraEntrada => _datahoraEntrada ?? '';
  set datahoraEntrada(String? val) => _datahoraEntrada = val;

  bool hasDatahoraEntrada() => _datahoraEntrada != null;

  // "processado" field.
  String? _processado;
  String get processado => _processado ?? '';
  set processado(String? val) => _processado = val;

  bool hasProcessado() => _processado != null;

  // "validadorIngresso" field.
  String? _validadorIngresso;
  String get validadorIngresso => _validadorIngresso ?? '';
  set validadorIngresso(String? val) => _validadorIngresso = val;

  bool hasValidadorIngresso() => _validadorIngresso != null;

  // "ingressogerado" field.
  String? _ingressogerado;
  String get ingressogerado => _ingressogerado ?? '';
  set ingressogerado(String? val) => _ingressogerado = val;

  bool hasIngressogerado() => _ingressogerado != null;

  // "diaingresso" field.
  String? _diaingresso;
  String get diaingresso => _diaingresso ?? '';
  set diaingresso(String? val) => _diaingresso = val;

  bool hasDiaingresso() => _diaingresso != null;

  // "idEntrada" field.
  int? _idEntrada;
  int get idEntrada => _idEntrada ?? 0;
  set idEntrada(int? val) => _idEntrada = val;

  void incrementIdEntrada(int amount) => idEntrada = idEntrada + amount;

  bool hasIdEntrada() => _idEntrada != null;

  static IngressoStruct fromMap(Map<String, dynamic> data) => IngressoStruct(
        idIngresso: castToType<int>(data['idIngresso']),
        codigo: data['codigo'] as String?,
        datahoraEntrada: data['datahoraEntrada'] as String?,
        processado: data['processado'] as String?,
        validadorIngresso: data['validadorIngresso'] as String?,
        ingressogerado: data['ingressogerado'] as String?,
        diaingresso: data['diaingresso'] as String?,
        idEntrada: castToType<int>(data['idEntrada']),
      );

  static IngressoStruct? maybeFromMap(dynamic data) =>
      data is Map ? IngressoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idIngresso': _idIngresso,
        'codigo': _codigo,
        'datahoraEntrada': _datahoraEntrada,
        'processado': _processado,
        'validadorIngresso': _validadorIngresso,
        'ingressogerado': _ingressogerado,
        'diaingresso': _diaingresso,
        'idEntrada': _idEntrada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idIngresso': serializeParam(
          _idIngresso,
          ParamType.int,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'datahoraEntrada': serializeParam(
          _datahoraEntrada,
          ParamType.String,
        ),
        'processado': serializeParam(
          _processado,
          ParamType.String,
        ),
        'validadorIngresso': serializeParam(
          _validadorIngresso,
          ParamType.String,
        ),
        'ingressogerado': serializeParam(
          _ingressogerado,
          ParamType.String,
        ),
        'diaingresso': serializeParam(
          _diaingresso,
          ParamType.String,
        ),
        'idEntrada': serializeParam(
          _idEntrada,
          ParamType.int,
        ),
      }.withoutNulls;

  static IngressoStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngressoStruct(
        idIngresso: deserializeParam(
          data['idIngresso'],
          ParamType.int,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        datahoraEntrada: deserializeParam(
          data['datahoraEntrada'],
          ParamType.String,
          false,
        ),
        processado: deserializeParam(
          data['processado'],
          ParamType.String,
          false,
        ),
        validadorIngresso: deserializeParam(
          data['validadorIngresso'],
          ParamType.String,
          false,
        ),
        ingressogerado: deserializeParam(
          data['ingressogerado'],
          ParamType.String,
          false,
        ),
        diaingresso: deserializeParam(
          data['diaingresso'],
          ParamType.String,
          false,
        ),
        idEntrada: deserializeParam(
          data['idEntrada'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'IngressoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngressoStruct &&
        idIngresso == other.idIngresso &&
        codigo == other.codigo &&
        datahoraEntrada == other.datahoraEntrada &&
        processado == other.processado &&
        validadorIngresso == other.validadorIngresso &&
        ingressogerado == other.ingressogerado &&
        diaingresso == other.diaingresso &&
        idEntrada == other.idEntrada;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idIngresso,
        codigo,
        datahoraEntrada,
        processado,
        validadorIngresso,
        ingressogerado,
        diaingresso,
        idEntrada
      ]);
}

IngressoStruct createIngressoStruct({
  int? idIngresso,
  String? codigo,
  String? datahoraEntrada,
  String? processado,
  String? validadorIngresso,
  String? ingressogerado,
  String? diaingresso,
  int? idEntrada,
}) =>
    IngressoStruct(
      idIngresso: idIngresso,
      codigo: codigo,
      datahoraEntrada: datahoraEntrada,
      processado: processado,
      validadorIngresso: validadorIngresso,
      ingressogerado: ingressogerado,
      diaingresso: diaingresso,
      idEntrada: idEntrada,
    );
