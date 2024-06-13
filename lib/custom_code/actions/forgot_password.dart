// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:amazon_cognito_identity_dart_2/cognito.dart';

Future<bool?> forgotPassword(String? email) async {
  // Add your function code here!
  final userPool = CognitoUserPool(
    'ap-southeast-1_EcXIqcvIo',
    '29vo110iettqelkvbfn4sdo8cl',
  );
  final cognitoUser = CognitoUser(email, userPool);
  var data;
  try {
    data = await cognitoUser.forgotPassword();
  } catch (e) {
    print(e);
    return false;
  }
  return true;
}
