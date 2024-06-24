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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 20,
      "themeIds": 93,
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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 20,
      "themeIds": 94,
      "width": 448,
      "height": 800
    },
    {
      "title": "Dune (Woman)",
      "cfgScale": 7,
      "template":
          "(dynamic pose:1.2),(dynamic camera), upper-body of a female, mid long hair, sword in one hand, ((perfect eyes)) , (in a worn mecha exosuit),(bokeh:1.2), intricate, (steel metal [rust]), elegant, sharp focus, soft lighting, vibrant colors, ((streets)), detailed face, RAW photo, full sharp, wallpapper 8k uhd, dslr, soft lighting, high quality, film grain, Fujifilm XT3, RAW Photograph, closeup of a beautiful girl who lives in a vast galactic empire, stunning blue within blue eyes that pierce your soul, wearing a rugged stillsuit, highly detailed skin with visible pores, she looks like a ancient goddess, specular highlights, future technology, dune motif, minimalist composition, insane intricate detail, award winning art, raytracing, sharp focus, 8k, hdr, masterpiece, photography, dslr, kodachrome, 35mm photograph, analog film, professional, highly detailed, dune in the background, orange sky, <lora:Dune_Style:1><lora:Dunefanart:0.7>",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, worst quality, Ugly, realistic, opaque fabrics, Compression artifacts, bad art, worst quality, low quality, plastic, fake, bad limbs, conjoined, featureless, bad features, incorrect objects, watermark, logo, bad-hands-5,3d, cartoon, anime, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, normal quality, ((monochrome)), ((grayscale)), skin spots, acnes, skin blemishes, bad anatomy, large breasts, red eyes, muscular, low quality,medium quality, 3d,frame,bw,watermark,logo,((letters)),paint,draw,(text),(worst quality:2), (low quality:2), (normal quality:2), lowres, bad anatomy, bad hands, normal quality, ((monochrome)), ((grayscale)), (deformed, distorted, disfigured:1.3), poorly drawn, bad anatomy, wrong anatomy, extra limb, missing limb, floating limbs, (mutated hands and fingers:1.4), disconnected limbs, mutation, mutated, ugly, disgusting, blurry, amputation",
      "adetailerPrompts": "",
      "negativeAdetailers": "",
      "clipSkips": 2,
      "model": "realcartoonRealistic_v14",
      "sampler": "DPM++ 2M Karras",
      "steps": 35,
      "themeIds": 2,
      "width": 640,
      "height": 800
    },
    {
      "title": "Dune (Man)",
      "cfgScale": 7,
      "template":
          "(dynamic pose:1.2),(dynamic camera), upper-body of a handsome male, ((Paul Atreides)), mid long hair, sword in one hand, ((perfect eyes)) , (in a worn mecha exosuit),(bokeh:1.2), intricate, (steel metal [rust]), elegant, sharp focus, soft lighting, vibrant colors, ((streets)), detailed face, RAW photo, full sharp, wallpapper 8k uhd, dslr, soft lighting, high quality, film grain, Fujifilm XT3, <lora:last:1>",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, worst quality, bad-hands-5,3d, cartoon, anime, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, normal quality, ((monochrome)), ((grayscale)), skin spots, acnes, skin blemishes, bad anatomy, large breasts, red eyes, muscular, low quality,medium quality, 3d,frame,bw,watermark,logo,((letters)),paint,draw,(text),(worst quality:2), (low quality:2), (normal quality:2), lowres, bad anatomy, bad hands, normal quality, ((monochrome)), ((grayscale)), (deformed, distorted, disfigured:1.3), poorly drawn, bad anatomy, wrong anatomy, extra limb, missing limb, floating limbs, (mutated hands and fingers:1.4), disconnected limbs, mutation, mutated, ugly, disgusting, blurry, amputation, Compression artifacts, bad art, worst quality, low quality, plastic, fake, bad limbs, conjoined, featureless, bad features, incorrect objects, watermark, logo",
      "adetailerPrompts":
          "(dynamic pose:1.2),(dynamic camera), upper-body of a handsome male, mid long hair, sword in one hand, ((perfect eyes)), (in a worn mecha exosuit),(bokeh:1.2), intricate, (steel metal [rust]), elegant, sharp focus, soft lighting, vibrant colors, ((streets)), detailed face, RAW photo, full sharp, wallpaper 8k uhd, dslr, soft lighting, high quality, film grain, Fujifilm XT3, <lora:last:0.8>  <lora:CustomModel:1>",
      "negativeAdetailers":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, worst quality, Ugly, realistic, opaque fabrics, Compression artifacts, bad art, worst quality, low quality, plastic, fake, bad limbs, conjoined, featureless, bad features, incorrect objects, watermark, logo, bad-hands-5,3d, cartoon, anime, sketches, (worst quality:2), (low quality:2), (normal quality:2), lowres, normal quality, ((monochrome)), ((grayscale)), skin spots, acnes, skin blemishes, bad anatomy, large breasts, red eyes, muscular, low quality,medium quality, 3d,frame,bw,watermark,logo,((letters)),paint,draw,(text),(worst quality:2), (low quality:2), (normal quality:2), lowres, bad anatomy, bad hands, normal quality, ((monochrome)), ((grayscale)), (deformed, distorted, disfigured:1.3), poorly drawn, bad anatomy, wrong anatomy, extra limb, missing limb, floating limbs, (mutated hands and fingers:1.4), disconnected limbs, mutation, mutated, ugly, disgusting, blurry, amputation",
      "clipSkips": 2,
      "model": "realcartoonRealistic_v14",
      "sampler": "DPM++ 2M Karras",
      "steps": 35,
      "themeIds": 3,
      "width": 640,
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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 25,
      "themeIds": 4,
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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 25,
      "themeIds": 5,
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
      "model": "magmix_v6",
      "sampler": "Euler a",
      "steps": 70,
      "themeIds": 6,
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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 25,
      "themeIds": 7,
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
      "model": "3dAnimationDiffusion_v10",
      "sampler": "DPM++ SDE Karras",
      "steps": 25,
      "themeIds": 8,
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
