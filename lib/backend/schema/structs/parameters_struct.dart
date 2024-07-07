// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParametersStruct extends FFFirebaseStruct {
  ParametersStruct({
    String? modelName,
    String? themeName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _modelName = modelName,
        _themeName = themeName,
        super(firestoreUtilData);

  // "modelName" field.
  String? _modelName;
  String get modelName => _modelName ?? '';
  set modelName(String? val) => _modelName = val;

  bool hasModelName() => _modelName != null;

  // "themeName" field.
  String? _themeName;
  String get themeName => _themeName ?? '';
  set themeName(String? val) => _themeName = val;

  bool hasThemeName() => _themeName != null;

  static ParametersStruct fromMap(Map<String, dynamic> data) =>
      ParametersStruct(
        modelName: data['modelName'] as String?,
        themeName: data['themeName'] as String?,
      );

  static ParametersStruct? maybeFromMap(dynamic data) => data is Map
      ? ParametersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'modelName': _modelName,
        'themeName': _themeName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'modelName': serializeParam(
          _modelName,
          ParamType.String,
        ),
        'themeName': serializeParam(
          _themeName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ParametersStruct fromSerializableMap(Map<String, dynamic> data) =>
      ParametersStruct(
        modelName: deserializeParam(
          data['modelName'],
          ParamType.String,
          false,
        ),
        themeName: deserializeParam(
          data['themeName'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ParametersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ParametersStruct &&
        modelName == other.modelName &&
        themeName == other.themeName;
  }

  @override
  int get hashCode => const ListEquality().hash([modelName, themeName]);
}

ParametersStruct createParametersStruct({
  String? modelName,
  String? themeName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ParametersStruct(
      modelName: modelName,
      themeName: themeName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ParametersStruct? updateParametersStruct(
  ParametersStruct? parameters, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    parameters
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addParametersStructData(
  Map<String, dynamic> firestoreData,
  ParametersStruct? parameters,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (parameters == null) {
    return;
  }
  if (parameters.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && parameters.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final parametersData = getParametersFirestoreData(parameters, forFieldValue);
  final nestedData = parametersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = parameters.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getParametersFirestoreData(
  ParametersStruct? parameters, [
  bool forFieldValue = false,
]) {
  if (parameters == null) {
    return {};
  }
  final firestoreData = mapToFirestore(parameters.toMap());

  // Add any Firestore field values
  parameters.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getParametersListFirestoreData(
  List<ParametersStruct>? parameterss,
) =>
    parameterss?.map((e) => getParametersFirestoreData(e, true)).toList() ?? [];
