// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultTypeStruct extends FFFirebaseStruct {
  ResultTypeStruct({
    int? id,
    String? txID,
    String? createdAt,
    String? imageId,
    String? groupId,
    String? userId,
    String? vdoFile,
    String? prompt,
    String? engine,
    int? height,
    int? width,
    String? negativePrompt,
    String? feature,
    bool? isQRCode,
    String? qrCodeContent,
    String? url,
    String? vdoUrl,
    ParametersStruct? parameters,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _txID = txID,
        _createdAt = createdAt,
        _imageId = imageId,
        _groupId = groupId,
        _userId = userId,
        _vdoFile = vdoFile,
        _prompt = prompt,
        _engine = engine,
        _height = height,
        _width = width,
        _negativePrompt = negativePrompt,
        _feature = feature,
        _isQRCode = isQRCode,
        _qrCodeContent = qrCodeContent,
        _url = url,
        _vdoUrl = vdoUrl,
        _parameters = parameters,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "txID" field.
  String? _txID;
  String get txID => _txID ?? '';
  set txID(String? val) => _txID = val;

  bool hasTxID() => _txID != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "imageId" field.
  String? _imageId;
  String get imageId => _imageId ?? '';
  set imageId(String? val) => _imageId = val;

  bool hasImageId() => _imageId != null;

  // "groupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  set groupId(String? val) => _groupId = val;

  bool hasGroupId() => _groupId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "vdoFile" field.
  String? _vdoFile;
  String get vdoFile => _vdoFile ?? '';
  set vdoFile(String? val) => _vdoFile = val;

  bool hasVdoFile() => _vdoFile != null;

  // "prompt" field.
  String? _prompt;
  String get prompt => _prompt ?? '';
  set prompt(String? val) => _prompt = val;

  bool hasPrompt() => _prompt != null;

  // "engine" field.
  String? _engine;
  String get engine => _engine ?? '';
  set engine(String? val) => _engine = val;

  bool hasEngine() => _engine != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "width" field.
  int? _width;
  int get width => _width ?? 0;
  set width(int? val) => _width = val;

  void incrementWidth(int amount) => width = width + amount;

  bool hasWidth() => _width != null;

  // "negativePrompt" field.
  String? _negativePrompt;
  String get negativePrompt => _negativePrompt ?? '';
  set negativePrompt(String? val) => _negativePrompt = val;

  bool hasNegativePrompt() => _negativePrompt != null;

  // "feature" field.
  String? _feature;
  String get feature => _feature ?? '';
  set feature(String? val) => _feature = val;

  bool hasFeature() => _feature != null;

  // "isQRCode" field.
  bool? _isQRCode;
  bool get isQRCode => _isQRCode ?? false;
  set isQRCode(bool? val) => _isQRCode = val;

  bool hasIsQRCode() => _isQRCode != null;

  // "qrCodeContent" field.
  String? _qrCodeContent;
  String get qrCodeContent => _qrCodeContent ?? '';
  set qrCodeContent(String? val) => _qrCodeContent = val;

  bool hasQrCodeContent() => _qrCodeContent != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "vdoUrl" field.
  String? _vdoUrl;
  String get vdoUrl => _vdoUrl ?? '';
  set vdoUrl(String? val) => _vdoUrl = val;

  bool hasVdoUrl() => _vdoUrl != null;

  // "parameters" field.
  ParametersStruct? _parameters;
  ParametersStruct get parameters => _parameters ?? ParametersStruct();
  set parameters(ParametersStruct? val) => _parameters = val;

  void updateParameters(Function(ParametersStruct) updateFn) {
    updateFn(_parameters ??= ParametersStruct());
  }

  bool hasParameters() => _parameters != null;

  static ResultTypeStruct fromMap(Map<String, dynamic> data) =>
      ResultTypeStruct(
        id: castToType<int>(data['id']),
        txID: data['txID'] as String?,
        createdAt: data['createdAt'] as String?,
        imageId: data['imageId'] as String?,
        groupId: data['groupId'] as String?,
        userId: data['userId'] as String?,
        vdoFile: data['vdoFile'] as String?,
        prompt: data['prompt'] as String?,
        engine: data['engine'] as String?,
        height: castToType<int>(data['height']),
        width: castToType<int>(data['width']),
        negativePrompt: data['negativePrompt'] as String?,
        feature: data['feature'] as String?,
        isQRCode: data['isQRCode'] as bool?,
        qrCodeContent: data['qrCodeContent'] as String?,
        url: data['url'] as String?,
        vdoUrl: data['vdoUrl'] as String?,
        parameters: ParametersStruct.maybeFromMap(data['parameters']),
      );

  static ResultTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? ResultTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'txID': _txID,
        'createdAt': _createdAt,
        'imageId': _imageId,
        'groupId': _groupId,
        'userId': _userId,
        'vdoFile': _vdoFile,
        'prompt': _prompt,
        'engine': _engine,
        'height': _height,
        'width': _width,
        'negativePrompt': _negativePrompt,
        'feature': _feature,
        'isQRCode': _isQRCode,
        'qrCodeContent': _qrCodeContent,
        'url': _url,
        'vdoUrl': _vdoUrl,
        'parameters': _parameters?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'txID': serializeParam(
          _txID,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'imageId': serializeParam(
          _imageId,
          ParamType.String,
        ),
        'groupId': serializeParam(
          _groupId,
          ParamType.String,
        ),
        'userId': serializeParam(
          _userId,
          ParamType.String,
        ),
        'vdoFile': serializeParam(
          _vdoFile,
          ParamType.String,
        ),
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
        ),
        'engine': serializeParam(
          _engine,
          ParamType.String,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
        ),
        'negativePrompt': serializeParam(
          _negativePrompt,
          ParamType.String,
        ),
        'feature': serializeParam(
          _feature,
          ParamType.String,
        ),
        'isQRCode': serializeParam(
          _isQRCode,
          ParamType.bool,
        ),
        'qrCodeContent': serializeParam(
          _qrCodeContent,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'vdoUrl': serializeParam(
          _vdoUrl,
          ParamType.String,
        ),
        'parameters': serializeParam(
          _parameters,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ResultTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResultTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        txID: deserializeParam(
          data['txID'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        imageId: deserializeParam(
          data['imageId'],
          ParamType.String,
          false,
        ),
        groupId: deserializeParam(
          data['groupId'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['userId'],
          ParamType.String,
          false,
        ),
        vdoFile: deserializeParam(
          data['vdoFile'],
          ParamType.String,
          false,
        ),
        prompt: deserializeParam(
          data['prompt'],
          ParamType.String,
          false,
        ),
        engine: deserializeParam(
          data['engine'],
          ParamType.String,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        width: deserializeParam(
          data['width'],
          ParamType.int,
          false,
        ),
        negativePrompt: deserializeParam(
          data['negativePrompt'],
          ParamType.String,
          false,
        ),
        feature: deserializeParam(
          data['feature'],
          ParamType.String,
          false,
        ),
        isQRCode: deserializeParam(
          data['isQRCode'],
          ParamType.bool,
          false,
        ),
        qrCodeContent: deserializeParam(
          data['qrCodeContent'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        vdoUrl: deserializeParam(
          data['vdoUrl'],
          ParamType.String,
          false,
        ),
        parameters: deserializeStructParam(
          data['parameters'],
          ParamType.DataStruct,
          false,
          structBuilder: ParametersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ResultTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResultTypeStruct &&
        id == other.id &&
        txID == other.txID &&
        createdAt == other.createdAt &&
        imageId == other.imageId &&
        groupId == other.groupId &&
        userId == other.userId &&
        vdoFile == other.vdoFile &&
        prompt == other.prompt &&
        engine == other.engine &&
        height == other.height &&
        width == other.width &&
        negativePrompt == other.negativePrompt &&
        feature == other.feature &&
        isQRCode == other.isQRCode &&
        qrCodeContent == other.qrCodeContent &&
        url == other.url &&
        vdoUrl == other.vdoUrl &&
        parameters == other.parameters;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        txID,
        createdAt,
        imageId,
        groupId,
        userId,
        vdoFile,
        prompt,
        engine,
        height,
        width,
        negativePrompt,
        feature,
        isQRCode,
        qrCodeContent,
        url,
        vdoUrl,
        parameters
      ]);
}

ResultTypeStruct createResultTypeStruct({
  int? id,
  String? txID,
  String? createdAt,
  String? imageId,
  String? groupId,
  String? userId,
  String? vdoFile,
  String? prompt,
  String? engine,
  int? height,
  int? width,
  String? negativePrompt,
  String? feature,
  bool? isQRCode,
  String? qrCodeContent,
  String? url,
  String? vdoUrl,
  ParametersStruct? parameters,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResultTypeStruct(
      id: id,
      txID: txID,
      createdAt: createdAt,
      imageId: imageId,
      groupId: groupId,
      userId: userId,
      vdoFile: vdoFile,
      prompt: prompt,
      engine: engine,
      height: height,
      width: width,
      negativePrompt: negativePrompt,
      feature: feature,
      isQRCode: isQRCode,
      qrCodeContent: qrCodeContent,
      url: url,
      vdoUrl: vdoUrl,
      parameters: parameters ?? (clearUnsetFields ? ParametersStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResultTypeStruct? updateResultTypeStruct(
  ResultTypeStruct? resultType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resultType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResultTypeStructData(
  Map<String, dynamic> firestoreData,
  ResultTypeStruct? resultType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resultType == null) {
    return;
  }
  if (resultType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resultType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resultTypeData = getResultTypeFirestoreData(resultType, forFieldValue);
  final nestedData = resultTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resultType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResultTypeFirestoreData(
  ResultTypeStruct? resultType, [
  bool forFieldValue = false,
]) {
  if (resultType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resultType.toMap());

  // Handle nested data for "parameters" field.
  addParametersStructData(
    firestoreData,
    resultType.hasParameters() ? resultType.parameters : null,
    'parameters',
    forFieldValue,
  );

  // Add any Firestore field values
  resultType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResultTypeListFirestoreData(
  List<ResultTypeStruct>? resultTypes,
) =>
    resultTypes?.map((e) => getResultTypeFirestoreData(e, true)).toList() ?? [];
