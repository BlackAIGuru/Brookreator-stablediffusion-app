import 'package:flutter/material.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _AccessToken = '';
  String get AccessToken => _AccessToken;
  set AccessToken(String value) {
    _AccessToken = value;
  }

  String _Prompt = '';
  String get Prompt => _Prompt;
  set Prompt(String value) {
    _Prompt = value;
  }

  String _NegativePrompt = '';
  String get NegativePrompt => _NegativePrompt;
  set NegativePrompt(String value) {
    _NegativePrompt = value;
  }

  int _ImageWidth = 0;
  int get ImageWidth => _ImageWidth;
  set ImageWidth(int value) {
    _ImageWidth = value;
  }

  int _ImageHeight = 0;
  int get ImageHeight => _ImageHeight;
  set ImageHeight(int value) {
    _ImageHeight = value;
  }

  bool _Logined = false;
  bool get Logined => _Logined;
  set Logined(bool value) {
    _Logined = value;
  }

  String _Email = '';
  String get Email => _Email;
  set Email(String value) {
    _Email = value;
  }

  int _Credit = 0;
  int get Credit => _Credit;
  set Credit(int value) {
    _Credit = value;
  }

  String _ImageId = '';
  String get ImageId => _ImageId;
  set ImageId(String value) {
    _ImageId = value;
  }

  bool _isFavourite = false;
  bool get isFavourite => _isFavourite;
  set isFavourite(bool value) {
    _isFavourite = value;
  }

  dynamic _PortraitStyle = jsonDecode(
      '{\"title\":\"Korean\",\"src\":\"koreanAI\",\"template\":\"((8k half body)) portrait of person, ponytail hair, short hair, long hair, ((shiny skin)), with makeup, colored lip gloss, highly detailed, digital photography, art by artgerm and ruan jia and greg rutkowski surreal photograph, (masterpiece, soft light, finely detailed beautiful eyes: 1.2), hdr, (high quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2),(portrait shot:1.3), intricate, highly detailed, surreal photograph, wearing Uniqlo, (light​ grey blue pastel color background), <lora:KimYooJung:0.7> <lora:CustomModel:0.7>\",\"negative\":\"canvas frame, cartoon, 3d, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, (((long neck))), signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace​\",\"model\":\"magmix_v6\",\"sampler\":\"Euler\",\"steps\":50,\"aesthetic\":4,\"poses\":[],\"numRandoms\":0,\"numPersons\":1,\"selectTheme\":true}');
  dynamic get PortraitStyle => _PortraitStyle;
  set PortraitStyle(dynamic value) {
    _PortraitStyle = value;
  }

  String _T2ITxID = '';
  String get T2ITxID => _T2ITxID;
  set T2ITxID(String value) {
    _T2ITxID = value;
  }

  String _QRTxID = '';
  String get QRTxID => _QRTxID;
  set QRTxID(String value) {
    _QRTxID = value;
  }
}
