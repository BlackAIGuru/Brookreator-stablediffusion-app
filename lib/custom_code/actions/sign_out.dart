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

Future<bool> signOut(String? username) async {
  // Add your function code here!
  final userPool = CognitoUserPool(
    'ap-southeast-1_EcXIqcvIo',
    '29vo110iettqelkvbfn4sdo8cl',
  );
  final cognitoUser = CognitoUser(username, userPool);

  try {
    if (cognitoUser != null) {
      await cognitoUser.signOut();
      return true; // Successfully signed out
    }
    return false; // No user is currently signed in
  } catch (e) {
    print(e); // Optionally handle the error in a more sophisticated way
    return false; // An error occurred during sign out
  }
}
