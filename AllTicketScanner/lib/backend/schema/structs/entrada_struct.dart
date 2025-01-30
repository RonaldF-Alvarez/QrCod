// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntradaStruct extends BaseStruct {
  EntradaStruct({
    int? idEntrada,
    String? descricao,
  })  : _idEntrada = idEntrada,
        _descricao = descricao;

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

  static EntradaStruct fromMap(Map<String, dynamic> data) => EntradaStruct(
        idEntrada: castToType<int>(data['idEntrada']),
        descricao: data['descricao'] as String?,
      );

  static EntradaStruct? maybeFromMap(dynamic data) =>
      data is Map ? EntradaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idEntrada': _idEntrada,
        'descricao': _descricao,
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
      }.withoutNulls;

  static EntradaStruct fromSerializableMap(Map<String, dynamic> data) =>
      EntradaStruct(
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
      );

  @override
  String toString() => 'EntradaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EntradaStruct &&
        idEntrada == other.idEntrada &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality().hash([idEntrada, descricao]);
}

EntradaStruct createEntradaStruct({
  int? idEntrada,
  String? descricao,
}) =>
    EntradaStruct(
      idEntrada: idEntrada,
      descricao: descricao,
    );
