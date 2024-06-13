// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> selectQRTheme(int? index) async {
  // Add your function code here!
  List<Map<String, dynamic>> themes = [
    {
      "title": "Christmas Tree",
      "template": "Christmas Tree",
      "src": "QRThemes13",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.6,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Maneki Neko",
      "template":
          "a portrait of maneki neko surrounded with glistening gold in a style of art nouveau and modernism, volumetric lighting, hdr, (masterpiece, soft light, finely detailed, hdr, (high quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2), depth of field",
      "src": "QRThemes9",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.65,
      "steps": 35,
      "aesthetic": 7,
    },
    {
      "title": "Cyberpunk",
      "template":
          "Portrait of a Cyberpunk woman with outfit on neon tokyo rooftop by Greg Rutkowski, Sung Choi, Mitchell Mohrhauser, Maciej Kuciara, Johnson Ting, Maxim Verehin, Peter Konig, final fantasy, mythical, 8k photorealistic, cinematic lighting, HD, high details, atmospheric",
      "src": "QRThemes11",
      "negative":
          "cartoon, 3d, ((disfigured)), ((bad art)), ((deformed)), ((extra limbs)), ((extra barrel)),((close up)),((b&w)), weird colors, blurry, (((duplicate))), ((morbid)), ((mutilated)), [out of frame], extra fingers, mutated hands, ((poorly drawn hands)), ((poorly drawn face)), (((mutation))), (((deformed))), ((ugly)), blurry, ((bad anatomy)), (((bad proportions))), ((extra limbs)), cloned face, (((disfigured))), out of frame, ugly, extra limbs, (bad anatomy),gross proportions, (malformed limbs), ((missing arms)), ((missing legs)), (((extra arms))), (((extra legs))), mutated hands, (fused fingers), (too many fingers), (((long neck))), (((tripod))), (((tube))), Photoshop, video game, ugly, tiling, poorly drawn hands, poorly drawn feet, poorly drawn face, out of frame, mutation, mutated, extra limbs, extra legs, extra arms, disfigured, deformed,cross-eye, body out of frame, blurry, bad art, bad anatomy, 3d render, (((umbrella))), (((nsfw))),((Wireframe)),Polygons,Screenshot,Character design,Software,UI,watermark,signature",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.6,
      "steps": 20,
      "aesthetic": 6,
    },
    {
      "title": "Foodies",
      "template":
          "isometric view of a beef cheesy burger and french fries in abstract combined with art nouveau art style surreal, (masterpiece, soft light, finely detailed, hdr, (high quality:1.4)",
      "src": "QRThemes5",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.45,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Galaxy",
      "template":
          "The night sky is reimagined as a canvas for celestial stained glass art, with constellations and galaxies shining bright like diamonds",
      "src": "QRThemes7",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, cartoon, anime, sketches, (worst quality:2), (low quality: 2),(KHFB, AuroraNegative),(Worst Quality, Low Quality:1.4), human",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.95,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Jade Dragon",
      "template":
          "a mesmerizing mixed media artwork that intricately put together traditional 'aesthetic's of Chinese beautiful nature. a combination that deliberately indicate peace and equilibium. the building's details exudes with elegance, while traditional elements such as an eminent detail of carved wall add a touch of jade, ethereal shiny glow, enveloping the scene in a magical ambiance that blurs the boundaries between dragon and imagination, surreal, (masterpiece, soft light, finely detailed, hdr, (high quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2), intricate, highly detailed, jade on dark background",
      "src": "QRThemes1",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.8,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Joan Miro",
      "template":
          "surrealist painting by Joan Miro, abstract shapes, contrast color, primary colors, light color background, 4k resolution, high detailed, Digital painting, art by clive barker, h, r, Giger, and brom,  digital painting, volumetric lighting",
      "src": "QRThemes2",
      "negative":
          "neon color, watermark, signature, text, two people, two faces, extra fingers, mutated hands, poorly drawn eyes, mutation, deformed, dehydrated, bad anatomy, bad proportions, cloned face, disfigured, gross proportions, malformed limbs, missing arms, missing legs, missing fingers, extra arms, extra legs, fused fingers, too many fingers, long neck, incoherent, draw, logo, text, watermark, signature",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.95,
      "steps": 25,
      "aesthetic": 13,
    },
    {
      "title": "Low Poly",
      "template":
          "a cute little matte low poly isometric {tropical island}, erupting volcano, mist, lat lighting, soft shadows, trending on artstation, 3d render, fez video game",
      "src": "QRThemes8",
      "negative": "ugly, disfigured, low quality, blurry, nsfw",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.6,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Neon Camouflage",
      "template":
          "Neon lights reflect off the sleek, angular surfaces of a cyberpunk metropolis, casting a kaleidoscope of colors across the dark night sky",
      "src": "QRThemes3",
      "negative":
          "(worst quality:2), (low quality: 2),(KHFB, AuroraNegative),(Worst Quality, Low Quality:1.4), human",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.95,
      "steps": 25,
      "aesthetic": 7,
    },
    {
      "title": "Neon Sci-fi Lady",
      "template":
          "a portrait of an astonishing goddess wearing futuristic robot iridescent neon lacy clothes, a perfect face, dark eyes, oil on canvas, masterpiece, expert, insanely detailed, 4k resolution, Stanley Lau Artgerm, high res, hyper-realistic, enchanted, delicate face, with neon hair",
      "src": "QRThemes12",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.65,
      "steps": 30,
      "aesthetic": 7,
    },
    {
      "title": "Stormy Night",
      "template":
          "stormy night with lightning exudes fear and yet fascination of nature, a combination of 'aesthetic's from nature and the unpredictability of what's coming, surreal, (masterpiece, soft light, finely detailed, hdr, (high quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2), intricate, highly detailed",
      "src": "QRThemes4",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.45,
      "steps": 30,
      "aesthetic": 7,
    },
    {
      "title": "Tree house",
      "template":
          "a well design magical massive tree house in the heart of a tropical forest, fascination, intricate design, autumn, golden hour, beautiful and gracious animals around the tree house, birds singing, antlers with the golden horn walking peacefully below the tree house,(masterpiece, soft light, finely detailed, hdr, (high quality:1.4), (ultra highres:1.2), (photorealistic:1.4), (8k, RAW photo:1.2), depth of field",
      "src": "QRThemes6",
      "negative":
          "((nudity)), bad_pictures, (bad_prompt_version2:0.8), EasyNegative, 3D, cartoon, anime, sketches, (worst quality:2), (low quality: 2), people, hand, head, blur, blurry, out of frame, duplicate, watermark, signature, text, (((person))), (((human))), (((woman))), bad framing, out of frame, cropped, deformed, ugly, bad quality, error, watermark",
      "model": "RevAnimated_v122",
      "sampler": "k_euler_ancestral",
      "control_weight": 1.55,
      "steps": 25,
      "aesthetic": 7,
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
