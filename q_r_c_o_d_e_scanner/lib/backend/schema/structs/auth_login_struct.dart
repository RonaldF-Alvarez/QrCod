// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthLoginStruct extends BaseStruct {
  AuthLoginStruct({
    String? nome,
    String? email,
    String? coletor,
    String? password,
  })  : _nome = nome,
        _email = email,
        _coletor = coletor,
        _password = password;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "coletor" field.
  String? _coletor;
  String get coletor => _coletor ?? '';
  set coletor(String? val) => _coletor = val;

  bool hasColetor() => _coletor != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  static AuthLoginStruct fromMap(Map<String, dynamic> data) => AuthLoginStruct(
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        coletor: data['coletor'] as String?,
        password: data['password'] as String?,
      );

  static AuthLoginStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthLoginStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'email': _email,
        'coletor': _coletor,
        'password': _password,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'coletor': serializeParam(
          _coletor,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthLoginStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthLoginStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        coletor: deserializeParam(
          data['coletor'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthLoginStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthLoginStruct &&
        nome == other.nome &&
        email == other.email &&
        coletor == other.coletor &&
        password == other.password;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, email, coletor, password]);
}

AuthLoginStruct createAuthLoginStruct({
  String? nome,
  String? email,
  String? coletor,
  String? password,
}) =>
    AuthLoginStruct(
      nome: nome,
      email: email,
      coletor: coletor,
      password: password,
    );
