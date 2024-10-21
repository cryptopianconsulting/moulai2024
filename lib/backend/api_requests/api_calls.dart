import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GenerateDeductibleExpensesCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
     "model": "gpt-3.5-turbo",
     "messages": [{"role": "user", "content": "'asre,afafas,asdfasfads,adfasdf,a,asdfasdfafas,asdfasfa,asdfasfas' among these words, return me top five words in order that has long length"}],
     "temperature": 0.7
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateDeductibleExpenses ',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetOauthTokenCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}",
  "client_id": "zr_YCgSJum6ziULn2KX-ICAGX977Ue_2Z2KCY_lleWE",
  "grant_type": "password",
  "domain": "frollolabs"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getOauthToken',
      apiUrl: 'https://frollolabs-staging.frollo.us/oauth/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserRegisterToFrolloCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? givenName = '',
    String? familyName = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}",
  "given_name": "${givenName}",
  "family_name": "${familyName}",
  "client_id": "zr_YCgSJum6ziULn2KX-ICAGX977Ue_2Z2KCY_lleWE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userRegisterToFrollo',
      apiUrl: 'https://frollolabs-staging.frollo.us/api/v2/user/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Api-Version': '2.21',
        'X-Bundle-Id': 'FLW V1.177.1',
        'X-Device-Version': 'web2.0.0',
        'X-Software-Version': '1.177.1',
        'Accept': '*/*',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBasiqTokenCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        'Yzk4ZTFiOTAtNzAyZC00MDQyLTliMDgtOGYwODU5MzQwYjY2OjVmMjQxMDJjLWYzMjAtNDg4My1iZWNkLTkyNDFkN2UzYzFkYw==',
  }) {
    final body = '''
{
  "scope": "SERVER_ACCESS"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBasiqToken',
      apiUrl: 'https://au-api.basiq.io/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic ${apiKey}',
        'Content-Type': 'application/x-www-form-urlencoded',
        'basiq-version': '3.0',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetClientAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? apiKey =
        'Yzk4ZTFiOTAtNzAyZC00MDQyLTliMDgtOGYwODU5MzQwYjY2OjVmMjQxMDJjLWYzMjAtNDg4My1iZWNkLTkyNDFkN2UzYzFkYw==',
  }) {
    final body = '''
{
  "scope": "CLIENT_ACCESS",
  "userId": "${userID}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getClientAccessToken',
      apiUrl: 'https://au-api.basiq.io/token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Basic ${apiKey}',
        'Content-Type': 'application/x-www-form-urlencoded',
        'basiq-version': '3.0',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBasiqUserCall {
  static Future<ApiCallResponse> call({
    String? token = '\"\"',
    String? email = '',
    String? mobile = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "mobile": "${mobile}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getBasiqUser',
      apiUrl: 'https://au-api.basiq.io/users',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBasiqDataCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? type = '',
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getBasiqData',
      apiUrl: 'https://au-api.basiq.io/users/${userID}/${type}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
        'Accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
