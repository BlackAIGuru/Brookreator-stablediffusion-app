// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:amazon_cognito_identity_dart_2/cognito.dart';

Future<String> signIn(String? username, String? password) async {
  // Add your function code here!
  if (username == null || password == null) {
    return 'Username or password is null'; // Or handle this scenario appropriately
  }

  final userPool = CognitoUserPool(
    'eu-north-1_var9qEjgx',
    '6t53ud9fo1cqpbbpqvpbl05bbh',
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
      return 'Authentication failed, session is null';
    }

    return session.getAccessToken().getJwtToken()!;
  } on CognitoClientException catch (e) {
    // Handle client exceptions like wrong username/password
    return 'Wrong username or password';
  } catch (e) {
    return 'An unexpected error occurred';
  }
}
