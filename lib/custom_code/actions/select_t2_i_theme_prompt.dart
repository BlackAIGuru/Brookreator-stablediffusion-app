// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> selectT2IThemePrompt(int? index) async {
  // Add your function code here!
  List<Map<String, dynamic>> themes = [
    {
      "title": "Flower Field",
      "template":
          "Anime, portrait of a person, light smile, with wind, masterpiece, best quality, movie poster illustration, an extremely delicate, beautifully detailed sunny sky, straw hat, clear sky, epic clouds, farm, beautiful detailed eyes, on the flower field, summer clothes, (fine fabric emphasis:1.4), (watercolor:0.6), (dark brown eyes colour)",
      "src": "flower",
      "negative":
          "EasyNegative, UnrealisticDream, BadDream, bad anatomy, natural skin, blemish, moles, skin spots, crooked teeth, ugly teeth, weird teeth, weird hands, weird arm​, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 4,
      "type": "character",
    },
    {
      "title": "Biker",
      "template":
          "a blonde woman biker in a black leather jacket and white tank top inside in a style of comic animation, colourful, chroma aberration, realism, romanticism, retro high saturated colour, Leica prime lenses, retro-futuristic",
      "src": "rider",
      "negative":
          "EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 4,
      "type": "character",
    },
    {
      "title": "Ancient Ruins",
      "template":
          "a tropical forest, humid air, cinematic shot, masterpiece, amazon, realistic, shooting game, vines, digital art, concept art, ancient temple ruins, with ((glowing blue colour ancient runes engraved on the temple)), light rain",
      "src": "ancient",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 30,
      "aesthetic": 7,
      "type": "sci-fi-fantasy",
    },
    {
      "title": "Aquatic Sci-Fi",
      "template":
          "jellyfish in science fiction, post cyberpunk in underwater world with futuristic aurora corals, concept art, fantasy, 8k",
      "src": "aquatic",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 25,
      "aesthetic": 12,
      "type": "sci-fi-fantasy",
    },
    {
      "title": "Bedroom in Rome",
      "template":
          "Italian stone wall style interior design bedroom, brick wall, masterpiece,ultra high res, bright, cinematic, volumetric lighting, intricate details, highly detailed, near the beach, saturated colour pastel",
      "src": "bedroom",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 25,
      "aesthetic": 7,
      "type": "interior",
    },
    {
      "title": "Birthday Cat",
      "template":
          "a fluffy cat animal, birthday card, cake, (pastel), realistic, masterpiece, 8k",
      "src": "birthday",
      "negative": "EasyNegative, human, people, women",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 30,
      "aesthetic": 10,
      "type": "holiday",
    },
    {
      "title": "Christmas",
      "template":
          "christmas holiday in the village with the mesmerizing display of the Aurora Borealis dances across the night sky, snowing, well-decorated Christmas tree with red and green bell colors, casting shimmering curtains of colours upon snow-covered peaks and evergreen forests. mistletoes, snow flakes",
      "src": "christmas",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 30,
      "aesthetic": 7,
      "type": "holiday",
    },
    {
      "title": "Dreamy Globe",
      "template":
          "a dreamy sceniery with a cat in a snow globe Inside there are elements of dreamy objects such as pink clouds, a yellow",
      "src": "dreamy",
      "negative":
          "EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, extra tails, extra limbs, deform, distorted, human, anime",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 30,
      "aesthetic": 7,
      "type": "product_shot",
    },
    {
      "title": "Futuristic Car",
      "template":
          "futuristic cars, Automotive photography, on the road, light trail, urban city, automotive advertisement, car advertisement, night time, hyper-realistic, high res, 8k, beautiful view, masterpiece, beautiful sky, a sky full of stars, futuristic lighting, cinematics shot, scifi cinematic lighting",
      "src": "futuristic",
      "negative":
          "EasyNegative, unrealistic, ugly, multiple shot, 2 cars, multiple cars, split images",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 10,
      "type": "product_shot",
    },
    {
      "title": "Hunter",
      "template":
          "a female monster hunter hunting monsters, baroque, close-up cinematic shot, golden hour, bokeh,  awestruck, concept art, epic,  (masterpiece, side lighting, finely detailed beautiful eyes: 1.2), Best quality, masterpiece, ultra high res",
      "src": "hunter",
      "negative":
          "EasyNegative, multiple bodies, extra heads, extra arms, extra legs, distorted, ugly, (morbid), ((mutilated)), bad anatomy, bad proportions, (cloned face), gross proportions, (malformed limbs), watermarks, nudity, nsfw, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 60,
      "aesthetic": 4,
      "type": "character",
    },
    {
      "title": "Lazy Peach",
      "template":
          "8k product shot of a peach iced tea, background is peach tree, digital photography, masterpiece, side lighting, finely detailed: 1.2, hdr, arrange sliced peaches, mint leaves, and other fresh ingredients into a visually appealing centerpiece around the rimmed glass containing the refreshing drink",
      "src": "peach",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 4,
      "type": "product_shot",
    },
    {
      "title": "Lunar Year",
      "template":
          "peony flowers in an ancient Japanese vase, with a cute white rabbit, natural materials, stunning detailed scene, window in the background, wide shot, bright soft diffused light, glow, concept art, intricate, highly detailed, volumetric lighting, masterpiece, hdr, 8k",
      "src": "lunar",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 60,
      "aesthetic": 7,
      "type": "holiday",
    },
    {
      "title": "Prototype Sketch",
      "template":
          "a 2D pencil blueprint line art sketch of a vintage car structure on brown paper, (ink:1.3), masterpiece",
      "src": "proto type",
      "negative": "EasyNegative, unrealistic, deform, morbid",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 4,
      "type": "art",
    },
    {
      "title": "Rainbow Hoodie",
      "template":
          "pastel chalk paint of a Close portrait of a beautiful woman with No Medium hair and Very Dark eyes, (finely detailed beautiful rainbow eyes: 1.2), wearing future funk hoodie, in a style of funky, rave auroracore background, in photorealism, ultra highres",
      "src": "rainbow",
      "negative":
          "EasyNegative, UnrealisticDream, BadDream, bad anatomy, natural skin, blemish, moles, skin spots, crooked teeth, ugly teeth, weird teeth, weird hands, weird arm​,multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 4,
      "type": "character",
    },
    {
      "title": "Space Explorer",
      "template":
          "spaceship parked in a wide dessert with a sky full of stars, Milky Way, vibrant retro style colour, small spacecraft, prehistoric art, art nouveau, intricately designed, lucid, mysterious, fantastic",
      "src": "space",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 25,
      "aesthetic": 7,
      "type": "sci-fi-fantasy",
    },
    {
      "title": "Thai Contemporary",
      "template":
          "The landscape of a Thai modern contemporary wood house surrounded by a lot of exotic flowers, near the brook, water-fall, photo-realistic style, ultra high res, bright, cinematic, concept art, volumetric lighting, intricate details, highly detailed",
      "src": "contemporary",
      "negative":
          "EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, extra tails, extra limbs, deform, distorted, human, anime",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 50,
      "aesthetic": 15,
      "type": "exterior",
    },
    {
      "title": "Utopia",
      "template":
          "Imagine a cutting-edge utopian society built among clouds and floating islands, powered by gleaming solar panels and bioluminescent, daytime",
      "src": "utopia",
      "negative": "",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 25,
      "aesthetic": 7,
      "type": "sci-fi-fantasy",
    },
    {
      "title": "Watercolor",
      "template":
          "watercolor of a landscape on white paper, pastel colors, (ink:1.3), autumn lights, 8k, best quality, (masterpiece:1.2), (best quality:1.0), (ultra highres:1.0)",
      "src": "watercolor",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 20,
      "aesthetic": 7,
      "type": "art",
    },
    {
      "title": "Wonderland",
      "template":
          "Enter a dreamlike realm where fantastical creatures frolic amidst ethereal landscapes, complete with towering mushrooms, sparkling fountains, and delicate steam punk-inspired details.",
      "src": "wonderland",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 30,
      "aesthetic": 7,
      "type": "sci-fi-fantasy",
    },
    {
      "title": "Homey Café",
      "template":
          "Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee",
      "src": "homey",
      "negative":
          "EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw",
      "model": "revAnimated_v122",
      "sampler": "k_euler_ancestral",
      "steps": 26,
      "aesthetic": 8,
      "type": "interior",
    }
  ];
  if (index != null && index >= 0 && index < themes.length) {
    return Future.value(themes[index - 1]["template"]);
  } else {
    // Return a default or handle the case where the index is out of bounds
    // ignore: null_argument_to_non_null_type
    return Future.value("");
  }
}
