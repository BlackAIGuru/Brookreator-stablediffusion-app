import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Brookreator Group Code

class BrookreatorGroup {
  static String baseUrl = 'https://apiv2.brookreator.ai';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static AccountCall accountCall = AccountCall();
  static GetAllImagesCall getAllImagesCall = GetAllImagesCall();
  static GetAllFavouritesCall getAllFavouritesCall = GetAllFavouritesCall();
  static AddFavouritesCall addFavouritesCall = AddFavouritesCall();
  static RemoveFavouritesCall removeFavouritesCall = RemoveFavouritesCall();
  static TextToImageCall textToImageCall = TextToImageCall();
  static PortraitUploadCall portraitUploadCall = PortraitUploadCall();
  static TrainImageCall trainImageCall = TrainImageCall();
  static PortraitGenerateCall portraitGenerateCall = PortraitGenerateCall();
  static QRUploadCall qRUploadCall = QRUploadCall();
  static QRGenerateCall qRGenerateCall = QRGenerateCall();
}

class AccountCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account',
      apiUrl: '${BrookreatorGroup.baseUrl}/account',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic credit(dynamic response) => getJsonField(
        response,
        r'''$.credit''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

class GetAllImagesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllImages',
      apiUrl: '${BrookreatorGroup.baseUrl}/account/images?offset=0&limit=500',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? createdate(dynamic response) => (getJsonField(
        response,
        r'''$.images[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<String>();
  List? delete(dynamic response) => getJsonField(
        response,
        r'''$.images[:].deletedAt''',
        true,
      ) as List?;
  List<String>? prompt(dynamic response) => (getJsonField(
        response,
        r'''$.images[:].prompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<String>();
  List<int>? height(dynamic response) => (getJsonField(
        response,
        r'''$.images[:].height''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<int>();
  List<int>? width(dynamic response) => (getJsonField(
        response,
        r'''$.images[:].width''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<int>();
  List<String>? negativePrompt(dynamic response) => (getJsonField(
        response,
        r'''$.images[:].negativePrompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .cast<String>();
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class GetAllFavouritesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllFavourites',
      apiUrl:
          '${BrookreatorGroup.baseUrl}/account/favorites?offset=0&limit=500',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class AddFavouritesCall {
  Future<ApiCallResponse> call({
    String? imageIds = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "imageIds": [
    "$imageIds"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddFavourites',
      apiUrl: '${BrookreatorGroup.baseUrl}/account/favorites',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RemoveFavouritesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'RemoveFavourites',
      apiUrl: '${BrookreatorGroup.baseUrl}/account/favorites',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TextToImageCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    int? samples,
    int? height,
    int? width,
    String? sampler = '',
    int? steps,
    double? cfgScale,
    String? seed = '',
    String? negativePrompt = '',
    String? accessToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "prompt": "$prompt",
  "samples": $samples,
  "height": $height,
  "width": $width,
  "sampler": "$sampler",
  "steps": $steps,
  "cfgScale": $cfgScale,
  "seed": "$seed",
  "negativePrompt": "$negativePrompt"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TextToImage',
      apiUrl: '${BrookreatorGroup.baseUrl}/t2i/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PortraitUploadCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? portraitupload,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PortraitUpload',
      apiUrl: '${BrookreatorGroup.baseUrl}/i2i/trainingImage/:transactionID',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'portraitupload': portraitupload,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TrainImageCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'TrainImage',
      apiUrl: '${BrookreatorGroup.baseUrl}/i2i/training',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PortraitGenerateCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    const ffApiRequestBody = '''
''';
    return ApiManager.instance.makeApiCall(
      callName: 'PortraitGenerate',
      apiUrl: '${BrookreatorGroup.baseUrl}/i2i/generateImage',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class QRUploadCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? qrupload,
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'QRUpload',
      apiUrl: '${BrookreatorGroup.baseUrl}/account/files',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'qrupload': qrupload,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class QRGenerateCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'QRGenerate',
      apiUrl: '${BrookreatorGroup.baseUrl}/qrlg/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Brookreator Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
