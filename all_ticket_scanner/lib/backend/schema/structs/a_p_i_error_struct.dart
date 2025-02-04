// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class APIErrorStruct extends BaseStruct {
  APIErrorStruct({
    String? result,
  }) : _result = result;

  // "Result" field.
  String? _result;
  String get result => _result ?? '';
  set result(String? val) => _result = val;

  bool hasResult() => _result != null;

  static APIErrorStruct fromMap(Map<String, dynamic> data) => APIErrorStruct(
        result: data['Result'] as String?,
      );

  static APIErrorStruct? maybeFromMap(dynamic data) =>
      data is Map ? APIErrorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Result': _result,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Result': serializeParam(
          _result,
          ParamType.String,
        ),
      }.withoutNulls;

  static APIErrorStruct fromSerializableMap(Map<String, dynamic> data) =>
      APIErrorStruct(
        result: deserializeParam(
          data['Result'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'APIErrorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is APIErrorStruct && result == other.result;
  }

  @override
  int get hashCode => const ListEquality().hash([result]);
}

APIErrorStruct createAPIErrorStruct({
  String? result,
}) =>
    APIErrorStruct(
      result: result,
    );
