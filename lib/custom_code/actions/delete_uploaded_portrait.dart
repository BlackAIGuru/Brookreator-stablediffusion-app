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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> deleteUploadedPortrait(
  String accessToken,
  String? filePath,
  String? uuid,
) async {
  // Add your function code here!
  var url = Uri.parse('https://apiv2.brookreator.ai/i2i/deleteImage/$uuid');

  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Authorization": "Bearer $accessToken", // Dynamic API token
  };

  Map<String, dynamic> requestBody = {
    "files": ["$filePath"]
  };

  String body = json.encode(requestBody);

  try {
    // Making the DELETE request
    final response = await http.delete(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      // Successfully deleted the item
      print("Item deleted successfully.");
      return true;
    } else {
      // If the server did not return a "200 OK" response,
      // then throw an exception.
      print(
          "Failed to delete the item: ${response.statusCode} - ${response.body}");
      return false;
    }
  } catch (e) {
    // Handle any errors here
    print("An error occurred: $e");
    return false;
  }
}
