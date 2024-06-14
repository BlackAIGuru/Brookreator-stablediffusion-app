import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Brookreator Group Code

class BrookreatorGroup {
  static String getBaseUrl({
    String? accessToken = '',
  }) =>
      'https://apiv2.brookreator.ai';
  static Map<String, String> headers = {
    'Accept': 'application/json',
    'Authorization': 'Bearer [accessToken]',
  };
  static AccountCall accountCall = AccountCall();
  static GetAllImagesCall getAllImagesCall = GetAllImagesCall();
  static GetAllFavouritesCall getAllFavouritesCall = GetAllFavouritesCall();
  static AddFavouritesCall addFavouritesCall = AddFavouritesCall();
  static QRGenerateCall qRGenerateCall = QRGenerateCall();
  static PortraitUploaderCall portraitUploaderCall = PortraitUploaderCall();
  static PortraitTrainingImageCall portraitTrainingImageCall =
      PortraitTrainingImageCall();
  static PortraitGenerateCall portraitGenerateCall = PortraitGenerateCall();
  static FileUploaderCall fileUploaderCall = FileUploaderCall();
  static QRLogoGenerateCall qRLogoGenerateCall = QRLogoGenerateCall();
  static DeleteImageCall deleteImageCall = DeleteImageCall();
  static AIVideoGenerateCall aIVideoGenerateCall = AIVideoGenerateCall();
  static TextToImageCall textToImageCall = TextToImageCall();
  static ThemeCall themeCall = ThemeCall();
  static GetGeneratedContentsCall getGeneratedContentsCall =
      GetGeneratedContentsCall();
  static QueueStatusCall queueStatusCall = QueueStatusCall();
  static AllQueuesCall allQueuesCall = AllQueuesCall();
  static TrainingStatusCall trainingStatusCall = TrainingStatusCall();
  static GetModelsCall getModelsCall = GetModelsCall();
  static DeleteModelsCall deleteModelsCall = DeleteModelsCall();
  static DownloadImageCall downloadImageCall = DownloadImageCall();
  static DownloadBulkCall downloadBulkCall = DownloadBulkCall();
}

class AccountCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Account',
      apiUrl: '$baseUrl/account',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

  int? credit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result.credit''',
      ));
  int? used(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result.used''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.name''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.email''',
      ));
}

class GetAllImagesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllImages',
      apiUrl: '$baseUrl/account/images',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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
        r'''$.result.images[:].createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? prompt(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].prompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? height(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].height''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? width(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].width''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? negativePrompt(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].negativePrompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.message''',
      ));
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.result.images''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? imageid(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].imageId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? videofile(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].vdoFile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imagefeature(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].feature''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? qrcode(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].isQRCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? videourl(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].vdoUrl''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? groupid(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].groupId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? delete(dynamic response) => getJsonField(
        response,
        r'''$.result.images[:].deletedAt''',
        true,
      ) as List?;
}

class GetAllFavouritesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllFavourites',
      apiUrl: '$baseUrl/account/favorites?offset=0&limit=500',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

  String? success(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.result.images''',
        true,
      ) as List?;
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? imageid(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].imageId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? groupid(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].groupId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? prompt(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].prompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? height(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].height''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? width(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].width''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? negative(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].negativePrompt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? feature(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].feature''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? isQRcode(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result.images[:].isQRCode''',
      ));
  String? txID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.images[:].txID''',
      ));
}

class AddFavouritesCall {
  Future<ApiCallResponse> call({
    String? imageIds = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "imageIds": [
    "$imageIds"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddFavourites',
      apiUrl: '$baseUrl/account/favorites',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

class QRGenerateCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    int? samples,
    int? height,
    int? width,
    String? sampler = '',
    int? steps,
    double? cfgScale,
    String? negativePrompt = '',
    bool? isQRCode,
    String? initImageFilePath = '',
    String? qrCodeContent = '',
    String? qrCodeFilePath = '',
    double? controlNetScale,
    String? engine = '',
    int? themeId,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "prompt": "$prompt",
  "samples": $samples,
  "height": $height,
  "width": $width,
  "sampler": "$sampler",
  "steps": $steps,
  "cfgScale": $cfgScale,
  "negativePrompt": "$negativePrompt",
  "isQRCode": $isQRCode,
  "initImageFilePath": "$initImageFilePath",
  "qrCodeContent": "$qrCodeContent",
  "qrCodeFilePath": "$qrCodeFilePath",
  "controlNetScale": $controlNetScale,
  "engine": "$engine",
  "themeId": $themeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QRGenerate',
      apiUrl: '$baseUrl/t2i/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

  String? textID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.txID''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.param.feature''',
      ));
}

class PortraitUploaderCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? portraitupload,
    String? uuid = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'PortraitUploader',
      apiUrl: '$baseUrl/i2i/upload/$uuid',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'file': portraitupload,
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

class PortraitTrainingImageCall {
  Future<ApiCallResponse> call({
    String? uuid = '',
    List<String>? imagesList,
    List<String>? stylesList,
    String? modelKey = '',
    String? lang = '',
    List<String>? negativesList,
    List<String>? samplersList,
    List<int>? stepsList,
    List<String>? modelsList,
    List<int>? aestheticsList,
    int? width = 800,
    int? height = 640,
    String? seed = '',
    List<String>? posesList,
    List<int>? clipSkipsList,
    bool? isTrainingOnly,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );
    final images = _serializeList(imagesList);
    final styles = _serializeList(stylesList);
    final negatives = _serializeList(negativesList);
    final samplers = _serializeList(samplersList);
    final steps = _serializeList(stepsList);
    final models = _serializeList(modelsList);
    final aesthetics = _serializeList(aestheticsList);
    final poses = _serializeList(posesList);
    final clipSkips = _serializeList(clipSkipsList);

    final ffApiRequestBody = '''
{
  "images": $images,
  "styles": $styles,
  "modelKey": "$modelKey",
  "lang": "$lang",
  "negatives": $negatives,
  "samplers": $samplers,
  "steps": $steps,
  "models": $models,
  "aesthetics": $aesthetics,
  "width": $width,
  "height": $height,
  "seed": "$seed",
  "poses": $poses,
  "clip_skips": $clipSkips,
  "isTrainingOnly": $isTrainingOnly
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PortraitTrainingImage',
      apiUrl: '$baseUrl/i2i/trainingImage/$uuid',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

class PortraitGenerateCall {
  Future<ApiCallResponse> call({
    List<String>? adetailerPromptsList,
    List<int>? cfgScaleList,
    List<int>? clipSkipsList,
    List<int>? heightList,
    List<int>? widthList,
    List<String>? loraModelIdsList,
    List<String>? modelList,
    List<String>? negativeAdetailersList,
    List<String>? negativePromptList,
    List<String>? promptList,
    List<int>? sampleList,
    List<String>? samplerList,
    List<String>? seedList,
    List<int>? stepsList,
    List<int>? themeIdsList,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );
    final adetailerPrompts = _serializeList(adetailerPromptsList);
    final cfgScale = _serializeList(cfgScaleList);
    final clipSkips = _serializeList(clipSkipsList);
    final height = _serializeList(heightList);
    final width = _serializeList(widthList);
    final loraModelIds = _serializeList(loraModelIdsList);
    final model = _serializeList(modelList);
    final negativeAdetailers = _serializeList(negativeAdetailersList);
    final negativePrompt = _serializeList(negativePromptList);
    final prompt = _serializeList(promptList);
    final sample = _serializeList(sampleList);
    final sampler = _serializeList(samplerList);
    final seed = _serializeList(seedList);
    final steps = _serializeList(stepsList);
    final themeIds = _serializeList(themeIdsList);

    final ffApiRequestBody = '''
{
  "adetailerPrompts": $adetailerPrompts,
  "cfgScale": $cfgScale,
  "clipSkips": $clipSkips,
  "height": $height,
  "width": $width,
  "loraModelIds": $loraModelIds,
  "model": $model,
  "negativeAdetailers": $negativeAdetailers,
  "negativePrompt": $negativePrompt,
  "prompt": $prompt,
  "sample": $sample,
  "sampler": $sampler,
  "seed": $seed,
  "steps": $steps,
  "themeIds": $themeIds
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PortraitGenerate',
      apiUrl: '$baseUrl/t2i/generate/v2',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

  List? id(dynamic response) => getJsonField(
        response,
        r'''$.result.txIDs''',
        true,
      ) as List?;
}

class FileUploaderCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? uploadedfile,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'FileUploader',
      apiUrl: '$baseUrl/account/files',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'file': uploadedfile,
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

class QRLogoGenerateCall {
  Future<ApiCallResponse> call({
    String? qrCodeFilePath = '',
    String? qrCodeContent = '',
    String? logoImageFilePath = '',
    String? backgroundImageFilePath = '',
    int? qrScale,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "backgroundImageFilePath": "$backgroundImageFilePath",
  "logoImageFilePath": "$logoImageFilePath",
  "qrCodeFilePath": "$qrCodeFilePath",
  "qrCodeContent": "$qrCodeContent",
  "qrScale": $qrScale
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'QRLogoGenerate',
      apiUrl: '$baseUrl/qrlg/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

  String? imageid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.image.imageId''',
      ));
  bool? isQRCode(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result.image.isQRCode''',
      ));
  String? txID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.image.txID''',
      ));
  String? groupId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.image.groupId''',
      ));
}

class DeleteImageCall {
  Future<ApiCallResponse> call({
    String? imageid = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteImage',
      apiUrl: '$baseUrl/account/images/$imageid',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      params: {
        'imageid': imageid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AIVideoGenerateCall {
  Future<ApiCallResponse> call({
    int? cfgScale = 7,
    int? endPoint = 8525,
    String? loraModelID = '',
    String? model = '',
    String? nPrompt = '',
    String? prompt = '',
    String? samplers = '',
    int? startPoint,
    int? startTransitionPoint,
    String? txID = '',
    String? vdoPath = '',
    String? vdoToVdoSupType = '',
    String? vdoToVdoType = '',
    String? steps = '',
    int? themeId,
    int? clipSkips,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "cfgScale": $cfgScale,
  "endPoint": $endPoint,
  "clipSkips": $clipSkips,
  "loraModelID": "$loraModelID",
  "model": "$model",
  "nPrompt": "$nPrompt",
  "prompt": "$prompt",
  "samplers": "$samplers",
  "startPoint": $startPoint,
  "startTransitionPoint": $startTransitionPoint,
  "txID": "$txID",
  "vdoPath": "$vdoPath",
  "vdoToVdoSupType": "$vdoToVdoSupType",
  "vdoToVdoType": "$vdoToVdoType",
  "steps": "$steps",
  "themeId": $themeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AIVideoGenerate',
      apiUrl: '$baseUrl/v2v/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

  String? txID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.txID''',
      ));
}

class TextToImageCall {
  Future<ApiCallResponse> call({
    int? cfgScale,
    String? engine = '',
    int? width,
    int? height,
    String? prompt = '',
    String? negativePrompt = '',
    String? sampler = '',
    int? samples,
    int? steps,
    int? themeId,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    final ffApiRequestBody = '''
{
  "cfgScale": $cfgScale,
  "engine": "$engine",
  "width": $width,
  "height": $height,
  "prompt": "$prompt",
  "negativePrompt": "$negativePrompt",
  "sampler": "$sampler",
  "samples": $samples,
  "steps": $steps,
  "themeId": $themeId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TextToImage',
      apiUrl: '$baseUrl/t2i/generate',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

  String? textID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.txID''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.param.feature''',
      ));
}

class ThemeCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Theme',
      apiUrl: '$baseUrl/theme',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

class GetGeneratedContentsCall {
  Future<ApiCallResponse> call({
    String? txID = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetGeneratedContents',
      apiUrl: '$baseUrl/account/images?offset=0&txIDs=$txID',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

  List<String>? imageId(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].imageId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? txID(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].txID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? groupId(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].groupId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? fileName(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].fileName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? vdoFile(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].vdoFile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? isQRCode(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].isQRCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.result.images[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? vdoUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.images[:].vdoUrl''',
      ));
  List? images(dynamic response) => getJsonField(
        response,
        r'''$.result.images''',
        true,
      ) as List?;
}

class QueueStatusCall {
  Future<ApiCallResponse> call({
    String? txID = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'QueueStatus',
      apiUrl: '$baseUrl/account/queues/$txID',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

  String? queueId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.queueId''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.status''',
      ));
}

class AllQueuesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'AllQueues',
      apiUrl: '$baseUrl/progress/queues',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

class TrainingStatusCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'TrainingStatus',
      apiUrl: '$baseUrl/i2i/training',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

class GetModelsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'GetModels',
      apiUrl: '$baseUrl/account/models',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

  int? modelID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result[:].id''',
      ));
  String? trainingID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result[:].training_id''',
      ));
  String? modelName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result[:].name''',
      ));
  String? modelCoverImage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result[:].cover_image''',
      ));
  String? modelStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result[:].status''',
      ));
}

class DeleteModelsCall {
  Future<ApiCallResponse> call({
    String? modelId = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DeleteModels',
      apiUrl: '$baseUrl/account/models/$modelId',
      callType: ApiCallType.DELETE,
      headers: {
        'Accept': 'application/json',
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

class DownloadImageCall {
  Future<ApiCallResponse> call({
    String? imageId = '',
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'DownloadImage',
      apiUrl: '$baseUrl/downloads/image/$imageId',
      callType: ApiCallType.GET,
      headers: {
        'Accept': 'application/json',
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

class DownloadBulkCall {
  Future<ApiCallResponse> call({
    List<String>? imageIdsList,
    String? accessToken = '',
  }) async {
    final baseUrl = BrookreatorGroup.getBaseUrl(
      accessToken: accessToken,
    );
    final imageIds = _serializeList(imageIdsList);

    final ffApiRequestBody = '''
{
  "imageIds": $imageIds
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DownloadBulk',
      apiUrl: '$baseUrl/downloads/images',
      callType: ApiCallType.POST,
      headers: {
        'Accept': 'application/json',
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
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
