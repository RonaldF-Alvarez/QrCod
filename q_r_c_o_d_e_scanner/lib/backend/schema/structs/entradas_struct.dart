// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntradasStruct extends BaseStruct {
  EntradasStruct({
    int? idEntrada,
    String? descricao,
    String? codigoAllticket,
  })  : _idEntrada = idEntrada,
        _descricao = descricao,
        _codigoAllticket = codigoAllticket;

  // "idEntrada" field.
  int? _idEntrada;
  int get idEntrada => _idEntrada ?? 0;
  set idEntrada(int? val) => _idEntrada = val;

  void incrementIdEntrada(int amount) => idEntrada = idEntrada + amount;

  bool hasIdEntrada() => _idEntrada != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "codigoAllticket" field.
  String? _codigoAllticket;
  String get codigoAllticket => _codigoAllticket ?? '';
  set codigoAllticket(String? val) => _codigoAllticket = val;

  bool hasCodigoAllticket() => _codigoAllticket != null;

  static EntradasStruct fromMap(Map<String, dynamic> data) => EntradasStruct(
        idEntrada: castToType<int>(data['idEntrada']),
        descricao: data['descricao'] as String?,
        codigoAllticket: data['codigoAllticket'] as String?,
      );

  static EntradasStruct? maybeFromMap(dynamic data) =>
      data is Map ? EntradasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idEntrada': _idEntrada,
        'descricao': _descricao,
        'codigoAllticket': _codigoAllticket,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idEntrada': serializeParam(
          _idEntrada,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'codigoAllticket': serializeParam(
          _codigoAllticket,
          ParamType.String,
        ),
      }.withoutNulls;

  static EntradasStruct fromSerializableMap(Map<String, dynamic> data) =>
      EntradasStruct(
        idEntrada: deserializeParam(
          data['idEntrada'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        codigoAllticket: deserializeParam(
          data['codigoAllticket'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EntradasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EntradasStruct &&
        idEntrada == other.idEntrada &&
        descricao == other.descricao &&
        codigoAllticket == other.codigoAllticket;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idEntrada, descricao, codigoAllticket]);
}

EntradasStruct createEntradasStruct({
  int? idEntrada,
  String? descricao,
  String? codigoAllticket,
}) =>
    EntradasStruct(
      idEntrada: idEntrada,
      descricao: descricao,
      codigoAllticket: codigoAllticket,
    );
