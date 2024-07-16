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

Future<dynamic> selectPortraitTheme(int? index) async {
  // Add your function code here!
  List<Map<String, dynamic>> themes = [
    {
      "title": "Summer (Woman)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a woman wearing a flower print short sleeve shirt crop top, beautiful cloud, beautiful long hair, palm tree in the back, near the beach, scenic spot, beach bar, cocktail, (aloha), smiling in gratification, great composition, cinematic shot, amazing time, <lora:D stylization_20230812185107:0.5> <lora:watercolor_v1:0.4> <lora:KimYooJung-100V1_760-000001:0.15> <lora:CustomModel:0.85>",
      "negative":
          "(worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 20,
      "themeIds": 108,
      "width": 448,
      "height": 800
    },
    {
      "title": "Summer (Man)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a ((man)) with a upper cut hairstyle wearing an ((oversized flower print shirt)), beautiful cloud, palm tree in the back, near the beach, scenic spot, beach bar cocktail, (aloha), smiling in gratification, great composition, cinematic shot, feeling happy, <lora:D stylization_20230812185107:0.5> <lora:watercolor_v1:0.4> <lora:CustomModel:0.85>",
      "negative":
          "(worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 20,
      "themeIds": 109,
      "width": 448,
      "height": 800
    },
    {
      "title": "CEO (Woman)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a (woman) as a business CEO , wearing an oversized dark blue suit jacket with statement sleeves, paired with a dark blue shirt in a contrasting hue, relaxed and refreshed, smile, soft and warm lighting, smiling in gratification, great composition, cinematic shot, amazing time, <lora:CustomModel:0.85>",
      "negative":
          "(worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 25,
      "themeIds": 103,
      "width": 640,
      "height": 800
    },
    {
      "title": "CEO (Man)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a (man) as a business CEO , wearing an oversized dark blue suit jacket with statement sleeves, paired with a dark blue shirt in a contrasting hue, relaxed and refreshed, smile, soft and warm lighting, (under cut hair)  smiling in gratification, great composition, cinematic shot, amazing time, <lora:CustomModel:0.85>",
      "negative":
          "(worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 25,
      "themeIds": 104,
      "width": 640,
      "height": 800
    },
    {
      "title": "My Baby",
      "cfgScale": 4,
      "template":
          "a portrait of an adorable baby boy (((toddler))) having fun at the beach playing with shell, (((baby boy))), ((glowing skin)), hair highly detailed, digital photography, (masterpiece, side lighting, finely detailed beautiful eyes: 1.2), hdr, (best quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2), Best quality, masterpiece, ultra high res, blossom flower field, light smile, highly detailed, surreal photograph, wearing white clothes, ((baby)) <lora:CustomModel1:0.5><lora:CustomModel2:0.5>",
      "negative":
          "canvas frame, cartoon, 3d, disfigured, deformed, ((extra limbs)), ((close up)), weird colours, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, confused fingers, too many fingers, missing fingers, (((long neck))), signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), natural skin, blemish, moles, skin spots, crooked teeth, ugly teeth, weird teeth, weird hands, weird arms, easynegative, epiCNegative, FastNegativeEmbedding,FastNegativeV2, negative_hand-neg, NegfeetV2",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "magmix_v10",
      "sampler": "euler_ancestral",
      "steps": 70,
      "themeIds": 105,
      "width": 640,
      "height": 800
    },
    {
      "title": "Holiday (Woman)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a woman wearing a beautiful night dress, at a cocktail bar, rooftop, fireworks, beautiful long hair, fireworks in the night sky, deep in the city view, scenic spot to watch the New Year fireworks, festive atmosphere, smiling in gratification, great composition, cinematic shot, amazing time, <lora:CustomModel:0.85>",
      "negative":
          "(worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face, ((birthmarks)), blemish, skin spots",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 25,
      "themeIds": 106,
      "width": 448,
      "height": 800
    },
    {
      "title": "Holiday (Man)",
      "cfgScale": 7,
      "template":
          "a close-up portrait of a man, (undercut hair), at a whisky bar, rooftop, fireworks, fireworks in the night sky, deep in the city view, scenic spot to watch the New Year fireworks, festive atmosphere, smiling in gratification, great composition, cinematic shot, amazing time, <lora:CustomModel:0.85>",
      "negative":
          "((girl, woman, long hair)), (worst quality, low quality:1.4), watermark, signature, monochrome, bad anatomy, bad proportions, negative_hand-neg, disfigured, deformed, ((extra limbs)), ((close up)), weird colors, blurry, (duplicate), (morbid), ((mutilated)), (out of frame), extra fingers, mutated hands, poorly drawn hands, poorly drawn face, mutation, ugly, bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), (missing arms), missing legs, extra arms, extra legs, fused fingers, too many fingers, signature, video game, tiling, cross-eye, body out of frame, 3d render, necklace, ((earring)), watermark, signature, text, lace, two face, ((birthmarks)), blemish, skin spots",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "3dAnimationDiffusion_v10.safetensors",
      "sampler": "dpmpp_sde",
      "steps": 25,
      "themeIds": 107,
      "width": 448,
      "height": 800
    }
  ];

  if (index != null && index >= 0 && index < themes.length) {
    return Future.value(themes[index]);
  } else {
    // Return a default or handle the case where the index is out of bounds
    // ignore: null_argument_to_non_null_type
    return Future.value("");
  }
}
