// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EntradasStruct extends BaseStruct {
  EntradasStruct({
    int? idEntrada,
    String? descricao,
    String? codigoAllticket,
    int? mark,
    int? idColetor,
  })  : _idEntrada = idEntrada,
        _descricao = descricao,
        _codigoAllticket = codigoAllticket,
        _mark = mark,
        _idColetor = idColetor;

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

  // "mark" field.
  int? _mark;
  int get mark => _mark ?? 0;
  set mark(int? val) => _mark = val;

  void incrementMark(int amount) => mark = mark + amount;

  bool hasMark() => _mark != null;

  // "idColetor" field.
  int? _idColetor;
  int get idColetor => _idColetor ?? 0;
  set idColetor(int? val) => _idColetor = val;

  void incrementIdColetor(int amount) => idColetor = idColetor + amount;

  bool hasIdColetor() => _idColetor != null;

  static EntradasStruct fromMap(Map<String, dynamic> data) => EntradasStruct(
        idEntrada: castToType<int>(data['idEntrada']),
        descricao: data['descricao'] as String?,
        codigoAllticket: data['codigoAllticket'] as String?,
        mark: castToType<int>(data['mark']),
        idColetor: castToType<int>(data['idColetor']),
      );

  static EntradasStruct? maybeFromMap(dynamic data) =>
      data is Map ? EntradasStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idEntrada': _idEntrada,
        'descricao': _descricao,
        'codigoAllticket': _codigoAllticket,
        'mark': _mark,
        'idColetor': _idColetor,
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
        'mark': serializeParam(
          _mark,
          ParamType.int,
        ),
        'idColetor': serializeParam(
          _idColetor,
          ParamType.int,
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
        mark: deserializeParam(
          data['mark'],
          ParamType.int,
          false,
        ),
        idColetor: deserializeParam(
          data['idColetor'],
          ParamType.int,
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
        codigoAllticket == other.codigoAllticket &&
        mark == other.mark &&
        idColetor == other.idColetor;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idEntrada, descricao, codigoAllticket, mark, idColetor]);
}

EntradasStruct createEntradasStruct({
  int? idEntrada,
  String? descricao,
  String? codigoAllticket,
  int? mark,
  int? idColetor,
}) =>
    EntradasStruct(
      idEntrada: idEntrada,
      descricao: descricao,
      codigoAllticket: codigoAllticket,
      mark: mark,
      idColetor: idColetor,
    );
