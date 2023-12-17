// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:amazon_cognito_identity_dart_2/cognito.dart';

Future<bool> confirmEmail(String? email, String? code) async {
  // Add your function code here!
  final userPool = CognitoUserPool(
    'eu-north-1_var9qEjgx',
    '6t53ud9fo1cqpbbpqvpbl05bbh',
  );
  final cognitoUser = CognitoUser(email, userPool);
  try {
    await cognitoUser.confirmRegistration(code!);
    return true;
  } catch (e) {
    return false;
    // Handle the confirmation error here.
  }
}
