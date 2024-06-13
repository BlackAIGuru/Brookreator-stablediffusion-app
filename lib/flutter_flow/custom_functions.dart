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
