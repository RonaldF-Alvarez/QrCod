import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start APIAllVip Group Code

class APIAllVipGroup {
  static String getBaseUrl({
    String? api = '',
  }) =>
      'http://${api}';
  static Map<String, String> headers = {};
  static PostGerarTokenCall postGerarTokenCall = PostGerarTokenCall();
  static GetEntradasCall getEntradasCall = GetEntradasCall();
  static GetIngrssoCall getIngrssoCall = GetIngrssoCall();
  static PutAtualizaIngressoValidoCall putAtualizaIngressoValidoCall =
      PutAtualizaIngressoValidoCall();
  static GetColetorCall getColetorCall = GetColetorCall();
  static PostInsereColetorCall postInsereColetorCall = PostInsereColetorCall();
  static GetColetorXEntradasCall getColetorXEntradasCall =
      GetColetorXEntradasCall();
  static GetEntradaCall getEntradaCall = GetEntradaCall();
  static PostInserteColetorxEntradaCall postInserteColetorxEntradaCall =
      PostInserteColetorxEntradaCall();
  static DeleteColetorxEntradasCall deleteColetorxEntradasCall =
      DeleteColetorxEntradasCall();
}

class PostGerarTokenCall {
  Future<ApiCallResponse> call({
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    final ffApiRequestBody = '''
{
  "ipporta": "${escapeStringForJson(api)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostGerarToken',
      apiUrl: '${baseUrl}/GerarToken/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEntradasCall {
  Future<ApiCallResponse> call({
    int? idcoletorentradas,
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetEntradas',
      apiUrl: '${baseUrl}/Entradas/${idcoletorentradas}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetIngrssoCall {
  Future<ApiCallResponse> call({
    String? codIngresso = '',
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetIngrsso',
      apiUrl: '${baseUrl}/Ingresso/${codIngresso}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PutAtualizaIngressoValidoCall {
  Future<ApiCallResponse> call({
    String? idIngresso = '',
    String? dataHoraValidaIngresso = '',
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    final ffApiRequestBody = '''
{
  "DataHoraValidaIngresso": "${escapeStringForJson(dataHoraValidaIngresso)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PutAtualizaIngressoValido',
      apiUrl: '${baseUrl}/AtualizaIngressoValido/${idIngresso}',
      callType: ApiCallType.PUT,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetColetorCall {
  Future<ApiCallResponse> call({
    String? codColetor = '',
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetColetor',
      apiUrl: '${baseUrl}/GetColetor/${codColetor}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostInsereColetorCall {
  Future<ApiCallResponse> call({
    String? codColetor = '',
    String? modelo = '',
    String? refColetor = '',
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    final ffApiRequestBody = '''
{
  "COD_COLETOR": "${escapeStringForJson(codColetor)}",
  "MODELO": "${escapeStringForJson(modelo)}",
  "REF_COLETOR": "${escapeStringForJson(refColetor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostInsereColetor',
      apiUrl: '${baseUrl}/PostInsereColetor',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetColetorXEntradasCall {
  Future<ApiCallResponse> call({
    int? idCol,
    int? idEntrada,
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetColetorXEntradas',
      apiUrl: '${baseUrl}/GetColetorXEntradas/${idCol}/${idEntrada}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEntradaCall {
  Future<ApiCallResponse> call({
    int? idEntra,
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetEntrada',
      apiUrl: '${baseUrl}/GetEntrada/${idEntra}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostInserteColetorxEntradaCall {
  Future<ApiCallResponse> call({
    int? idColetor,
    int? idEntrada,
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    final ffApiRequestBody = '''
{
  "ID_COLETOR": ${idColetor},
  "ID_ENTRADA": ${idEntrada}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostInserteColetorxEntrada',
      apiUrl: '${baseUrl}/PostInserteColetorxEntrada',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteColetorxEntradasCall {
  Future<ApiCallResponse> call({
    int? idColetor,
    int? idEntrada,
    String? api = '',
  }) async {
    final baseUrl = APIAllVipGroup.getBaseUrl(
      api: api,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteColetorxEntradas',
      apiUrl: '${baseUrl}/DeleteColetorxEntradas/${idColetor}/${idEntrada}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End APIAllVip Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
