// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:amazon_cognito_identity_dart_2/cognito.dart';

Future<String> signIn(String? username, String? password) async {
  // Add your function code here!
  if (username == null || password == null) {
    return 'Username or password is null.'; // Or handle this scenario appropriately
  }

  final userPool = CognitoUserPool(
    'ap-southeast-1_EcXIqcvIo',
    '29vo110iettqelkvbfn4sdo8cl',
  );
  final cognitoUser = CognitoUser(username, userPool);
  final authDetails = AuthenticationDetails(
    username: username,
    password: password,
  );

  try {
    CognitoUserSession? session =
        await cognitoUser.authenticateUser(authDetails);

    if (session == null) {
      return 'Authentication failed, session is null.'; //Authentication failed, session is null
    }

    return session.getAccessToken().getJwtToken()!;
  } on CognitoClientException {
    // Handle client exceptions like wrong username/password
    return 'Incorrect username or password.'; //Wrong username or password
  } catch (e) {
    return 'User does not exist.'; //n unexpected error occurred
  }
}
