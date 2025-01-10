// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColetorStruct extends BaseStruct {
  ColetorStruct({
    int? idColetor,
    String? codColetor,
    String? modelo,
    String? refColetor,
  })  : _idColetor = idColetor,
        _codColetor = codColetor,
        _modelo = modelo,
        _refColetor = refColetor;

  // "idColetor" field.
  int? _idColetor;
  int get idColetor => _idColetor ?? 0;
  set idColetor(int? val) => _idColetor = val;

  void incrementIdColetor(int amount) => idColetor = idColetor + amount;

  bool hasIdColetor() => _idColetor != null;

  // "codColetor" field.
  String? _codColetor;
  String get codColetor => _codColetor ?? '';
  set codColetor(String? val) => _codColetor = val;

  bool hasCodColetor() => _codColetor != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;

  bool hasModelo() => _modelo != null;

  // "refColetor" field.
  String? _refColetor;
  String get refColetor => _refColetor ?? '';
  set refColetor(String? val) => _refColetor = val;

  bool hasRefColetor() => _refColetor != null;

  static ColetorStruct fromMap(Map<String, dynamic> data) => ColetorStruct(
        idColetor: castToType<int>(data['idColetor']),
        codColetor: data['codColetor'] as String?,
        modelo: data['modelo'] as String?,
        refColetor: data['refColetor'] as String?,
      );

  static ColetorStruct? maybeFromMap(dynamic data) =>
      data is Map ? ColetorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idColetor': _idColetor,
        'codColetor': _codColetor,
        'modelo': _modelo,
        'refColetor': _refColetor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idColetor': serializeParam(
          _idColetor,
          ParamType.int,
        ),
        'codColetor': serializeParam(
          _codColetor,
          ParamType.String,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'refColetor': serializeParam(
          _refColetor,
          ParamType.String,
        ),
      }.withoutNulls;

  static ColetorStruct fromSerializableMap(Map<String, dynamic> data) =>
      ColetorStruct(
        idColetor: deserializeParam(
          data['idColetor'],
          ParamType.int,
          false,
        ),
        codColetor: deserializeParam(
          data['codColetor'],
          ParamType.String,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        refColetor: deserializeParam(
          data['refColetor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ColetorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ColetorStruct &&
        idColetor == other.idColetor &&
        codColetor == other.codColetor &&
        modelo == other.modelo &&
        refColetor == other.refColetor;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idColetor, codColetor, modelo, refColetor]);
}

ColetorStruct createColetorStruct({
  int? idColetor,
  String? codColetor,
  String? modelo,
  String? refColetor,
}) =>
    ColetorStruct(
      idColetor: idColetor,
      codColetor: codColetor,
      modelo: modelo,
      refColetor: refColetor,
    );
