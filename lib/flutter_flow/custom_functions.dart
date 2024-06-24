import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? getImageUrl(
  dynamic input,
  int? index,
) {
  return input["images"][index]["url"];
}

String? getImageId(
  dynamic input,
  int? index,
) {
  return input["images"][index]["imageId"];
}

int multiple(int input) {
  return input * 10;
}

int multipletwenty(int input) {
  return input * 20;
}

String? convertListToString(List<String>? inputList) {
  // Join the list elements with a comma
  return inputList?.join(',');
}

int minus(int input) {
  return input - 1;
}

String makingNestedList(List<String> inputList) {
  List<List<String>> resultList = [];

  // Iterate over each string in the input list
  for (String item in inputList) {
    // Remove the square brackets from the string and split it into a list
    String cleanedItem = item.replaceAll(RegExp(r'^\["|"\]$'), '');
    resultList.add([cleanedItem]);
  }

  // Convert the resulting list of lists to a JSON string
  return jsonEncode(resultList);
}
