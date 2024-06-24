// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DfsfsStruct extends FFFirebaseStruct {
  DfsfsStruct({
    List<String>? prompt,
    List<String>? negativePrompt,
    List<String>? adetailerPrompts,
    List<String>? negativeAdetailers,
    List<int>? sample,
    List<String>? model,
    List<int>? height,
    List<int>? width,
    List<String>? sampler,
    List<int>? steps,
    List<int>? cfgScale,
    List<int>? clipSkips,
    List<String>? poses,
    List<String>? seed,
    List<String>? loraModelIds,
    List<int>? themeIds,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prompt = prompt,
        _negativePrompt = negativePrompt,
        _adetailerPrompts = adetailerPrompts,
        _negativeAdetailers = negativeAdetailers,
        _sample = sample,
        _model = model,
        _height = height,
        _width = width,
        _sampler = sampler,
        _steps = steps,
        _cfgScale = cfgScale,
        _clipSkips = clipSkips,
        _poses = poses,
        _seed = seed,
        _loraModelIds = loraModelIds,
        _themeIds = themeIds,
        super(firestoreUtilData);

  // "prompt" field.
  List<String>? _prompt;
  List<String> get prompt => _prompt ?? const [];
  set prompt(List<String>? val) => _prompt = val;

  void updatePrompt(Function(List<String>) updateFn) {
    updateFn(prompt ??= []);
  }

  bool hasPrompt() => _prompt != null;

  // "negativePrompt" field.
  List<String>? _negativePrompt;
  List<String> get negativePrompt => _negativePrompt ?? const [];
  set negativePrompt(List<String>? val) => _negativePrompt = val;

  void updateNegativePrompt(Function(List<String>) updateFn) {
    updateFn(negativePrompt ??= []);
  }

  bool hasNegativePrompt() => _negativePrompt != null;

  // "adetailerPrompts" field.
  List<String>? _adetailerPrompts;
  List<String> get adetailerPrompts => _adetailerPrompts ?? const [];
  set adetailerPrompts(List<String>? val) => _adetailerPrompts = val;

  void updateAdetailerPrompts(Function(List<String>) updateFn) {
    updateFn(adetailerPrompts ??= []);
  }

  bool hasAdetailerPrompts() => _adetailerPrompts != null;

  // "negativeAdetailers" field.
  List<String>? _negativeAdetailers;
  List<String> get negativeAdetailers => _negativeAdetailers ?? const [];
  set negativeAdetailers(List<String>? val) => _negativeAdetailers = val;

  void updateNegativeAdetailers(Function(List<String>) updateFn) {
    updateFn(negativeAdetailers ??= []);
  }

  bool hasNegativeAdetailers() => _negativeAdetailers != null;

  // "sample" field.
  List<int>? _sample;
  List<int> get sample => _sample ?? const [];
  set sample(List<int>? val) => _sample = val;

  void updateSample(Function(List<int>) updateFn) {
    updateFn(sample ??= []);
  }

  bool hasSample() => _sample != null;

  // "model" field.
  List<String>? _model;
  List<String> get model => _model ?? const [];
  set model(List<String>? val) => _model = val;

  void updateModel(Function(List<String>) updateFn) {
    updateFn(model ??= []);
  }

  bool hasModel() => _model != null;

  // "height" field.
  List<int>? _height;
  List<int> get height => _height ?? const [];
  set height(List<int>? val) => _height = val;

  void updateHeight(Function(List<int>) updateFn) {
    updateFn(height ??= []);
  }

  bool hasHeight() => _height != null;

  // "width" field.
  List<int>? _width;
  List<int> get width => _width ?? const [];
  set width(List<int>? val) => _width = val;

  void updateWidth(Function(List<int>) updateFn) {
    updateFn(width ??= []);
  }

  bool hasWidth() => _width != null;

  // "sampler" field.
  List<String>? _sampler;
  List<String> get sampler => _sampler ?? const [];
  set sampler(List<String>? val) => _sampler = val;

  void updateSampler(Function(List<String>) updateFn) {
    updateFn(sampler ??= []);
  }

  bool hasSampler() => _sampler != null;

  // "steps" field.
  List<int>? _steps;
  List<int> get steps => _steps ?? const [];
  set steps(List<int>? val) => _steps = val;

  void updateSteps(Function(List<int>) updateFn) {
    updateFn(steps ??= []);
  }

  bool hasSteps() => _steps != null;

  // "cfgScale" field.
  List<int>? _cfgScale;
  List<int> get cfgScale => _cfgScale ?? const [];
  set cfgScale(List<int>? val) => _cfgScale = val;

  void updateCfgScale(Function(List<int>) updateFn) {
    updateFn(cfgScale ??= []);
  }

  bool hasCfgScale() => _cfgScale != null;

  // "clipSkips" field.
  List<int>? _clipSkips;
  List<int> get clipSkips => _clipSkips ?? const [];
  set clipSkips(List<int>? val) => _clipSkips = val;

  void updateClipSkips(Function(List<int>) updateFn) {
    updateFn(clipSkips ??= []);
  }

  bool hasClipSkips() => _clipSkips != null;

  // "poses" field.
  List<String>? _poses;
  List<String> get poses => _poses ?? const [];
  set poses(List<String>? val) => _poses = val;

  void updatePoses(Function(List<String>) updateFn) {
    updateFn(poses ??= []);
  }

  bool hasPoses() => _poses != null;

  // "seed" field.
  List<String>? _seed;
  List<String> get seed => _seed ?? const [];
  set seed(List<String>? val) => _seed = val;

  void updateSeed(Function(List<String>) updateFn) {
    updateFn(seed ??= []);
  }

  bool hasSeed() => _seed != null;

  // "loraModelIds" field.
  List<String>? _loraModelIds;
  List<String> get loraModelIds => _loraModelIds ?? const [];
  set loraModelIds(List<String>? val) => _loraModelIds = val;

  void updateLoraModelIds(Function(List<String>) updateFn) {
    updateFn(loraModelIds ??= []);
  }

  bool hasLoraModelIds() => _loraModelIds != null;

  // "themeIds" field.
  List<int>? _themeIds;
  List<int> get themeIds => _themeIds ?? const [];
  set themeIds(List<int>? val) => _themeIds = val;

  void updateThemeIds(Function(List<int>) updateFn) {
    updateFn(themeIds ??= []);
  }

  bool hasThemeIds() => _themeIds != null;

  static DfsfsStruct fromMap(Map<String, dynamic> data) => DfsfsStruct(
        prompt: getDataList(data['prompt']),
        negativePrompt: getDataList(data['negativePrompt']),
        adetailerPrompts: getDataList(data['adetailerPrompts']),
        negativeAdetailers: getDataList(data['negativeAdetailers']),
        sample: getDataList(data['sample']),
        model: getDataList(data['model']),
        height: getDataList(data['height']),
        width: getDataList(data['width']),
        sampler: getDataList(data['sampler']),
        steps: getDataList(data['steps']),
        cfgScale: getDataList(data['cfgScale']),
        clipSkips: getDataList(data['clipSkips']),
        poses: getDataList(data['poses']),
        seed: getDataList(data['seed']),
        loraModelIds: getDataList(data['loraModelIds']),
        themeIds: getDataList(data['themeIds']),
      );

  static DfsfsStruct? maybeFromMap(dynamic data) =>
      data is Map ? DfsfsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'prompt': _prompt,
        'negativePrompt': _negativePrompt,
        'adetailerPrompts': _adetailerPrompts,
        'negativeAdetailers': _negativeAdetailers,
        'sample': _sample,
        'model': _model,
        'height': _height,
        'width': _width,
        'sampler': _sampler,
        'steps': _steps,
        'cfgScale': _cfgScale,
        'clipSkips': _clipSkips,
        'poses': _poses,
        'seed': _seed,
        'loraModelIds': _loraModelIds,
        'themeIds': _themeIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prompt': serializeParam(
          _prompt,
          ParamType.String,
          isList: true,
        ),
        'negativePrompt': serializeParam(
          _negativePrompt,
          ParamType.String,
          isList: true,
        ),
        'adetailerPrompts': serializeParam(
          _adetailerPrompts,
          ParamType.String,
          isList: true,
        ),
        'negativeAdetailers': serializeParam(
          _negativeAdetailers,
          ParamType.String,
          isList: true,
        ),
        'sample': serializeParam(
          _sample,
          ParamType.int,
          isList: true,
        ),
        'model': serializeParam(
          _model,
          ParamType.String,
          isList: true,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
          isList: true,
        ),
        'width': serializeParam(
          _width,
          ParamType.int,
          isList: true,
        ),
        'sampler': serializeParam(
          _sampler,
          ParamType.String,
          isList: true,
        ),
        'steps': serializeParam(
          _steps,
          ParamType.int,
          isList: true,
        ),
        'cfgScale': serializeParam(
          _cfgScale,
          ParamType.int,
          isList: true,
        ),
        'clipSkips': serializeParam(
          _clipSkips,
          ParamType.int,
          isList: true,
        ),
        'poses': serializeParam(
          _poses,
          ParamType.String,
          isList: true,
        ),
        'seed': serializeParam(
          _seed,
          ParamType.String,
          isList: true,
        ),
        'loraModelIds': serializeParam(
          _loraModelIds,
          ParamType.String,
          isList: true,
        ),
        'themeIds': serializeParam(
          _themeIds,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static DfsfsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DfsfsStruct(
        prompt: deserializeParam<String>(
          data['prompt'],
          ParamType.String,
          true,
        ),
        negativePrompt: deserializeParam<String>(
          data['negativePrompt'],
          ParamType.String,
          true,
        ),
        adetailerPrompts: deserializeParam<String>(
          data['adetailerPrompts'],
          ParamType.String,
          true,
        ),
        negativeAdetailers: deserializeParam<String>(
          data['negativeAdetailers'],
          ParamType.String,
          true,
        ),
        sample: deserializeParam<int>(
          data['sample'],
          ParamType.int,
          true,
        ),
        model: deserializeParam<String>(
          data['model'],
          ParamType.String,
          true,
        ),
        height: deserializeParam<int>(
          data['height'],
          ParamType.int,
          true,
        ),
        width: deserializeParam<int>(
          data['width'],
          ParamType.int,
          true,
        ),
        sampler: deserializeParam<String>(
          data['sampler'],
          ParamType.String,
          true,
        ),
        steps: deserializeParam<int>(
          data['steps'],
          ParamType.int,
          true,
        ),
        cfgScale: deserializeParam<int>(
          data['cfgScale'],
          ParamType.int,
          true,
        ),
        clipSkips: deserializeParam<int>(
          data['clipSkips'],
          ParamType.int,
          true,
        ),
        poses: deserializeParam<String>(
          data['poses'],
          ParamType.String,
          true,
        ),
        seed: deserializeParam<String>(
          data['seed'],
          ParamType.String,
          true,
        ),
        loraModelIds: deserializeParam<String>(
          data['loraModelIds'],
          ParamType.String,
          true,
        ),
        themeIds: deserializeParam<int>(
          data['themeIds'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'DfsfsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DfsfsStruct &&
        listEquality.equals(prompt, other.prompt) &&
        listEquality.equals(negativePrompt, other.negativePrompt) &&
        listEquality.equals(adetailerPrompts, other.adetailerPrompts) &&
        listEquality.equals(negativeAdetailers, other.negativeAdetailers) &&
        listEquality.equals(sample, other.sample) &&
        listEquality.equals(model, other.model) &&
        listEquality.equals(height, other.height) &&
        listEquality.equals(width, other.width) &&
        listEquality.equals(sampler, other.sampler) &&
        listEquality.equals(steps, other.steps) &&
        listEquality.equals(cfgScale, other.cfgScale) &&
        listEquality.equals(clipSkips, other.clipSkips) &&
        listEquality.equals(poses, other.poses) &&
        listEquality.equals(seed, other.seed) &&
        listEquality.equals(loraModelIds, other.loraModelIds) &&
        listEquality.equals(themeIds, other.themeIds);
  }

  @override
  int get hashCode => const ListEquality().hash([
        prompt,
        negativePrompt,
        adetailerPrompts,
        negativeAdetailers,
        sample,
        model,
        height,
        width,
        sampler,
        steps,
        cfgScale,
        clipSkips,
        poses,
        seed,
        loraModelIds,
        themeIds
      ]);
}

DfsfsStruct createDfsfsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DfsfsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DfsfsStruct? updateDfsfsStruct(
  DfsfsStruct? dfsfs, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dfsfs
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDfsfsStructData(
  Map<String, dynamic> firestoreData,
  DfsfsStruct? dfsfs,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dfsfs == null) {
    return;
  }
  if (dfsfs.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dfsfs.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dfsfsData = getDfsfsFirestoreData(dfsfs, forFieldValue);
  final nestedData = dfsfsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dfsfs.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDfsfsFirestoreData(
  DfsfsStruct? dfsfs, [
  bool forFieldValue = false,
]) {
  if (dfsfs == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dfsfs.toMap());

  // Add any Firestore field values
  dfsfs.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDfsfsListFirestoreData(
  List<DfsfsStruct>? dfsfss,
) =>
    dfsfss?.map((e) => getDfsfsFirestoreData(e, true)).toList() ?? [];
