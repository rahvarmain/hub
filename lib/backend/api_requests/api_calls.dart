import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateDocketCall {
  static Future<ApiCallResponse> call({
    String? loadNumber = '',
    String? docketNumber = '',
    String? senderId = '',
  }) {
    final body = '''
{
  "loadNumber": "${loadNumber}",
  "senderId": "${senderId}",
  "docketDetails": []
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createDocket',
      apiUrl: 'localhost:8080/v1/docket',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class GetLoadDetailsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getLoadDetails',
      apiUrl: 'localhost:8080/v1/docket',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetRefDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getRefData',
      apiUrl: 'localhost:8080/v1/refData',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
