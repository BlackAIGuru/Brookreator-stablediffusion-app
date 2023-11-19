import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'th'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? thText = '',
  }) =>
      [enText, thText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'l5y8412s': {
      'en': '60',
      'th': '60',
    },
    'nc3tpiea': {
      'en': 'NA',
      'th': 'นา',
    },
    'mshdin1z': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'emib5i2u': {
      'en': 'Easily create an image from scratch with our AI image',
      'th': 'สร้างภาพตั้งแต่เริ่มต้นได้อย่างง่ายดายด้วยภาพ AI ของเรา',
    },
    'sspot7wp': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'feixv45l': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'mu01rbzp': {
      'en':
          'Train your own AI model to create limitless personalized portraits',
      'th': 'ฝึกฝนโมเดล AI ของคุณเองเพื่อสร้างภาพบุคคลแบบไม่จำกัด',
    },
    'gkwte3gx': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'nrou638o': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    'vv81bldm': {
      'en': 'Change your video to your favorite style',
      'th': 'เปลี่ยนวิดีโอของคุณให้เป็นสไตล์ที่คุณชื่นชอบ',
    },
    'dgawiuee': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'p4ozrslq': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'a0560dw7': {
      'en': 'Create custom QR Codes interated with any image you want!',
      'th': 'สร้างรหัส QR ที่กำหนดเองโดยเชื่อมโยงกับภาพที่คุณต้องการ!',
    },
    'iydj44zk': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    '1he967gc': {
      'en': 'Templates Generate',
      'th': 'เทมเพลตสร้าง',
    },
    'y6z8192x': {
      'en': 'For You',
      'th': 'สำหรับคุณ',
    },
    'kitm7mky': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'aukpmr1r': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'yl2kunmk': {
      'en': 'Korean',
      'th': 'เกาหลี',
    },
    'sg63pj91': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'upn9f2g0': {
      'en': 'Rainbow',
      'th': 'รุ้ง',
    },
    'nfal42c1': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'ies6kcpx': {
      'en': 'Cartoon',
      'th': 'การ์ตูน',
    },
    'scpvdjvk': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    'rzzjbe44': {
      'en': 'Anime',
      'th': 'อะนิเมะ',
    },
    '3mvkdvii': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'g25yp6yy': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '61nc1i0v': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    '1r96kyfq': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '4k3bqxyp': {
      'en': 'Lunar Year',
      'th': 'ปีจันทรคติ',
    },
    '69swsm0m': {
      'en': 'Homey Cafe​',
      'th': 'โฮมมี คาเฟ่',
    },
    '8du52u19': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '2fodz4al': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'bsfqbfv6': {
      'en': 'Birthday Cat',
      'th': 'วันเกิดแมว',
    },
    'yz49borw': {
      'en': 'Peach',
      'th': 'ลูกพีช',
    },
    'ojm57vos': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'nsjceu15': {
      'en': 'Aquatic Sci-Fi',
      'th': 'ไซไฟทางน้ำ',
    },
    'ao3lik1s': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '8i10o2pq': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'qn83r3q8': {
      'en': 'Neon Sci-fi Lady',
      'th': 'นีออนไซไฟเลดี้',
    },
    '61mnzeyp': {
      'en': 'Halloween',
      'th': 'วันฮาโลวีน',
    },
    'p8ogj9kw': {
      'en': 'Christmas',
      'th': 'คริสต์มาส',
    },
    'h2di10ml': {
      'en': 'Studio',
      'th': 'สตูดิโอ',
    },
    'e143zi4o': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // AIPortrait_Start
  {
    'rccsnfz6': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    '3mid1w8i': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'psw26b31': {
      'en': ' : Select Style',
      'th': ': เลือกสไตล์',
    },
    '07uufh2g': {
      'en': 'Korean',
      'th': 'เกาหลี',
    },
    'f1q9nnrg': {
      'en': 'Anime',
      'th': 'อะนิเมะ',
    },
    '71t0r68g': {
      'en': 'Retro',
      'th': 'ย้อนยุค',
    },
    'dhnw8k6a': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'h1ilowlq': {
      'en': ' : Generate Image',
      'th': ': สร้างภาพ',
    },
    'a6tsobka': {
      'en': 'Model Name',
      'th': 'ชื่อรุ่น',
    },
    '1j4hh3r9': {
      'en': '',
      'th': '',
    },
    '9a1lqnh3': {
      'en': 'E.g. (Alice, Belle, Emma01)',
      'th': 'E.g. (Alice, Belle, Emma01)',
    },
    'm0cck5at': {
      'en': 'Model1',
      'th': 'รุ่น1',
    },
    't5nyf6qg': {
      'en': 'Upload',
      'th': 'ที่อัพโหลด',
    },
    '8upy2nko': {
      'en': ' 0 / 12 ',
      'th': '0 / 12',
    },
    'd5a3ufv7': {
      'en': 'images',
      'th': 'ภาพ',
    },
    'g4dhzt2q': {
      'en': 'Please select 12 photos of your face to build model.',
      'th': 'โปรดเลือกรูปถ่ายใบหน้าของคุณ 12 รูปเพื่อสร้างแบบจำลอง',
    },
    'nl3j3qva': {
      'en': 'Uploading Guide',
      'th': 'คู่มือการอัพโหลด',
    },
    'p1hmi326': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    'sxg9hpj8': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // MyPictures_Open
  {
    '9swlsfwi': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
    'v9k14iff': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
    'nvbd0m04': {
      'en': 'Favourite',
      'th': 'ที่ชื่นชอบ',
    },
    '0xixxexq': {
      'en': 'Anime',
      'th': 'อะนิเมะ',
    },
    'xcnvxys3': {
      'en': 'Download',
      'th': 'ดาวน์โหลด',
    },
    '4d6lcm9h': {
      'en': 'Image description',
      'th': 'คำอธิบายรูปภาพ',
    },
    'scxh9ved': {
      'en':
          'Anime, portrait of a person, light smile, with wind, masterpiece, best quality, movie poster illustration, an extremely delicate, beautifully detailed sunny sky, straw hat, clear sky, epic clouds, farm, beautiful detailed eyes, on the flower field, summer clothes, (fine fabric emphasis:1.4), (watercolor:0.6), (dark brown eyes colour)',
      'th':
          'Anime, portrait of a person, light smile, with wind, masterpiece, best quality, movie poster illustration, an extremely delicate, beautifully detailed sunny sky, straw hat, clear sky, epic clouds, farm, beautiful detailed eyes, on the flower field, summer clothes, (fine fabric emphasis:1.4), (watercolor:0.6), (dark brown eyes colour)',
    },
    'dex6h1xd': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    '455dwobd': {
      'en':
          'EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    'n5rho1s6': {
      'en': 'Dimensions',
      'th': 'ขนาด',
    },
    'vm7h4jyh': {
      'en': 'Created',
      'th': 'สร้าง',
    },
    'gmilmd4b': {
      'en': '640X640',
      'th': '640X640',
    },
    '9bxnk3za': {
      'en': '05/11/2023',
      'th': '05/11/2023',
    },
    'b1d78gqe': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Buy_Credit
  {
    'h28j8xmv': {
      'en': 'Buy Credit',
      'th': 'ซื้อเครดิต',
    },
    'bycdemw8': {
      'en': 'Choose a package that fits your needs',
      'th': 'เลือกแพ็คเกจที่เหมาะกับความต้องการของคุณ',
    },
    'oihwok9s': {
      'en': 'Starter',
      'th': 'สตาร์ทเตอร์',
    },
    'rb8fnomz': {
      'en': '199',
      'th': '199',
    },
    '0562251r': {
      'en': ' THB',
      'th': 'บาท',
    },
    'fggs6k94': {
      'en': '200 credits',
      'th': '200 หน่วยกิต',
    },
    'vo4t7f6x': {
      'en': 'Standard',
      'th': 'มาตรฐาน',
    },
    '1wneynnl': {
      'en': '449',
      'th': '449',
    },
    'nrio6a1h': {
      'en': ' THB',
      'th': 'บาท',
    },
    'dpobhju6': {
      'en': '497 THB',
      'th': '497 บาท',
    },
    'ufevgb07': {
      'en': ' Save 10%',
      'th': 'ประหยัด 10%',
    },
    '2b15eog9': {
      'en': '500 credits',
      'th': '500 หน่วยกิต',
    },
    '37tnx018': {
      'en': 'Value Pack',
      'th': 'แพ็กสุดคุ้ม',
    },
    'o26esquy': {
      'en': '599',
      'th': '599',
    },
    '0fn8rm9s': {
      'en': ' THB',
      'th': 'บาท',
    },
    'mkng8rqa': {
      'en': '1200 THB',
      'th': '1200 บาท',
    },
    '4ukxfhmk': {
      'en': ' Save 50%',
      'th': 'ประหยัด 50%',
    },
    'lc42w9yf': {
      'en': '1200 credits',
      'th': '1200 หน่วยกิต',
    },
    'hj0ndkrb': {
      'en': 'Continue',
      'th': 'ดำเนินการต่อ',
    },
    'jclvhvmn': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Account
  {
    'b5lrz3hz': {
      'en': 'Account',
      'th': 'บัญชี',
    },
    'y8tngjsd': {
      'en': 'Language',
      'th': 'ภาษา',
    },
    'mcli42k0': {
      'en': 'About Us',
      'th': 'เกี่ยวกับเรา',
    },
    'fotjn88n': {
      'en': 'Privacy Policy',
      'th': 'นโยบายความเป็นส่วนตัว',
    },
    '9m7lnz0v': {
      'en': 'Log Out',
      'th': 'ออกจากระบบ',
    },
    'qyqrqumg': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // About_Us
  {
    'dtl6adx5': {
      'en': 'About Us',
      'th': 'เกี่ยวกับเรา',
    },
    '5vl143aj': {
      'en': 'Elevating Creativity with AI: Free Your Mind',
      'th': 'ยกระดับความคิดสร้างสรรค์ด้วย AI: ปลดปล่อยจิตใจของคุณ',
    },
    'x0w7d5he': {
      'en':
          'Welcome to Brookreator, where we break down the barriers between thought and visual expression. We are at the exciting juncture where artificial intelligence has matured to a point of unprecedented efficiency, quality, and accessibility. Thanks to the AI open-source community, countries like Thailand can harness this innovative technology to explore new frontiers in creativity, expression, and communication. This image model generation is made freely available under the CCO 1.0 Creative Commons license.',
      'th':
          'ยินดีต้อนรับสู่ Brookreator ที่ซึ่งเราจะทำลายอุปสรรคระหว่างความคิดและการแสดงออกทางภาพ เราอยู่ในช่วงหัวเลี้ยวหัวต่อที่น่าตื่นเต้นซึ่งปัญญาประดิษฐ์ได้เติบโตถึงจุดที่มีประสิทธิภาพ คุณภาพ และการเข้าถึงอย่างที่ไม่เคยมีมาก่อน ต้องขอบคุณชุมชนโอเพ่นซอร์ส AI ประเทศต่างๆ เช่น ประเทศไทยสามารถควบคุมเทคโนโลยีที่เป็นนวัตกรรมนี้เพื่อสำรวจขอบเขตใหม่ๆ ในด้านความคิดสร้างสรรค์ การแสดงออก และการสื่อสาร การสร้างโมเดลรูปภาพนี้จัดทำขึ้นโดยเสรีภายใต้ใบอนุญาต CCO 1.0 Creative Commons',
    },
    '37tqbdm8': {
      'en': 'Our Mission: Powering a Creative Renaissance',
      'th': 'ภารกิจของเรา: ขับเคลื่อนยุคฟื้นฟูศิลปวิทยาที่สร้างสรรค์',
    },
    '3jf64n8f': {
      'en':
          'We are thrilled to offer a cutting-edge image generator for the Thai community and share best practices as public resource to upskill talent. Whether you\'re a professional designer or someone who simply loves to play and experiment, Brookreator invites you to transform your ideas into captivating visuals. You don\'t need to be an artist or tech guru to join this new era of digital creativity; all you need is your imagination.',
      'th':
          'เรารู้สึกตื่นเต้นที่จะนำเสนอเครื่องมือสร้างภาพลักษณ์ที่ล้ำสมัยสำหรับชุมชนชาวไทยและแบ่งปันแนวปฏิบัติที่ดีที่สุดเพื่อเป็นทรัพยากรสาธารณะในการยกระดับทักษะความสามารถ ไม่ว่าคุณจะเป็นนักออกแบบมืออาชีพหรือผู้ที่รักการเล่นและทดลอง Brookreator ขอเชิญชวนให้คุณเปลี่ยนความคิดของคุณให้เป็นภาพที่น่าหลงใหล คุณไม่จำเป็นต้องเป็นศิลปินหรือกูรูด้านเทคโนโลยีเพื่อเข้าร่วมยุคใหม่ของความคิดสร้างสรรค์ดิจิทัล สิ่งที่คุณต้องการคือจินตนาการของคุณ',
    },
    'jjodsaun': {
      'en': 'How it Works: Turn Text into Visual Wonders',
      'th': 'วิธีการทำงาน: เปลี่ยนข้อความให้เป็นสิ่งมหัศจรรย์ทางสายตา',
    },
    'x46eqxsm': {
      'en':
          'Brookreator makes it as simple as typing a prompt or choosing our prefilled templates to generate eye-catching images. For optimal quality, we recommend you visit our Prompt Guide for tips on crafting effective prompts. To connect with a community of like-minded individuals, share ideas, and get inspired, join our Discord channel.',
      'th':
          'Brookreator ช่วยให้การพิมพ์ข้อความแจ้งหรือเลือกเทมเพลตที่กรอกไว้ล่วงหน้าเพื่อสร้างภาพที่สะดุดตา เพื่อคุณภาพที่ดีที่สุด เราขอแนะนำให้คุณไปที่คำแนะนำพร้อมท์ของเราเพื่อดูเคล็ดลับในการสร้างการแจ้งเตือนที่มีประสิทธิภาพ หากต้องการเชื่อมต่อกับชุมชนที่มีความคิดเหมือนกัน แบ่งปันแนวคิด และรับแรงบันดาลใจ เข้าร่วมช่อง Discord ของเรา',
    },
    'pmugm47o': {
      'en': 'Infinite Potential: Bridging the Gap Between Art and Commerce',
      'th':
          'ศักยภาพอันไม่มีที่สิ้นสุด: การเชื่อมช่องว่างระหว่างศิลปะและการพาณิชย์',
    },
    '6h37jje3': {
      'en':
          'The reach of Brookreator\'s platform is virtually unlimited, serving a broad spectrum of industries and creative avenues—from the realms of abstract and modern art to multimedia productions like films and memes. Picture crafting bespoke greeting cards, scripting inventive movie plots, designing unique game elements, or creating compelling visuals for marketing campaigns. With Brookreator, the only limitation is the scope of your imagination.',
      'th':
          'แพลตฟอร์มของ Brookreator เข้าถึงได้ไม่จำกัด โดยให้บริการในอุตสาหกรรมและช่องทางการสร้างสรรค์ที่หลากหลาย ตั้งแต่อาณาจักรแห่งศิลปะนามธรรมและสมัยใหม่ ไปจนถึงการผลิตมัลติมีเดีย เช่น ภาพยนตร์และมีม การสร้างภาพการ์ดอวยพรตามสั่ง การสร้างสคริปต์เนื้อเรื่องที่สร้างสรรค์ การออกแบบองค์ประกอบของเกมที่มีเอกลักษณ์ หรือการสร้างภาพที่น่าสนใจสำหรับแคมเปญการตลาด ด้วย Brookreator ข้อจำกัดเพียงอย่างเดียวคือขอบเขตของจินตนาการของคุณ',
    },
    'lc7z0kku': {
      'en':
          'Thank you for being part of our mission to redefine the landscape of creative expression. We invite you to embark on this fascinating journey and help color the world with your imagination.',
      'th':
          'ขอขอบคุณที่เป็นส่วนหนึ่งของภารกิจของเราในการกำหนดขอบเขตของการแสดงออกที่สร้างสรรค์ใหม่ เราขอเชิญชวนคุณให้เริ่มต้นการเดินทางอันน่าทึ่งนี้และช่วยเติมสีสันให้โลกด้วยจินตนาการของคุณ',
    },
    'uabxztc1': {
      'en': 'Contact information',
      'th': 'ข้อมูลติดต่อ',
    },
    'a854535s': {
      'en': 'Brooker Business Development Co.,Ltd',
      'th': 'Brooker Business Development Co.,Ltd',
    },
    'hn2enthf': {
      'en': 'Address',
      'th': 'ที่อยู่',
    },
    '8twglkck': {
      'en':
          ': 26th Floor, The Trendy Office Building, 10/190-193, Soi Sukhumvit 13, Khlong Toei Nuea, Watthana, Bangkok 10110',
      'th':
          ': ชั้น 26 อาคารสำนักงานเดอะเทรนดี้ 10/190-193 ซอยสุขุมวิท 13 คลองเตยเหนือ วัฒนา กรุงเทพฯ 10110',
    },
    '5c4olrab': {
      'en': 'Tel',
      'th': 'โทร',
    },
    'lkn10nsq': {
      'en': ': 095-685-5841',
      'th': ': 095-685-5841',
    },
    'ur3hgknk': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    'moq04e34': {
      'en': ': info@brookreator.ai',
      'th': ': info@brookreator.ai',
    },
    'z1t9zg5s': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Privacy_Policy
  {
    'k6grmgv5': {
      'en': 'Privacy Policy',
      'th': 'นโยบายความเป็นส่วนตัว',
    },
    '7vcmqs2q': {
      'en': '1. Introduction',
      'th': '1. บทนำ',
    },
    'n5izt6mh': {
      'en':
          'This privacy policy applies to personal data of natural persons such as customers, service users, suppliers, business partners, and other third parties collected by Brookreator (we, us, Brooker Business Development Co.,Ltd). When developing and updating our privacy program, we consider the Personal Data Protection Act B.E. 2562 (2019) (\'PDPA\'), as well as laws and practices that have generally been in effect at present.',
      'th':
          'นโยบายความเป็นส่วนตัวนี้ใช้กับข้อมูลส่วนบุคคลของบุคคลธรรมดา เช่น ลูกค้า ผู้ใช้บริการ ซัพพลายเออร์ พันธมิตรทางธุรกิจ และบุคคลที่สามอื่น ๆ ที่รวบรวมโดย Brookreator (เรา เรา บริษัท Brooker Business Development Co.,Ltd) ในการพัฒนาและปรับปรุงโปรแกรมความเป็นส่วนตัวของเรา เราจะคำนึงถึงพระราชบัญญัติคุ้มครองข้อมูลส่วนบุคคล พ.ศ. พ.ศ. 2562 (\'PDPA\') ตลอดจนกฎหมายและแนวปฏิบัติที่มีผลใช้บังคับโดยทั่วไปในปัจจุบัน',
    },
    '9gpbnebb': {
      'en':
          'If you have any questions or concerns about our privacy practices, we welcome you to contact us via one or more of the following channels:',
      'th':
          'หากคุณมีคำถามหรือข้อกังวลเกี่ยวกับหลักปฏิบัติด้านความเป็นส่วนตัวของเรา เรายินดีต้อนรับคุณติดต่อเราผ่านช่องทางใดช่องทางหนึ่งต่อไปนี้:',
    },
    '2skl998i': {
      'en': 'Address',
      'th': 'ที่อยู่',
    },
    'zi5dops6': {
      'en':
          ': 26th Floor, The Trendy Office Building, 10/190-193, Soi Sukhumvit 13, Khlong Toei Nuea, Watthana, Bangkok 10110',
      'th':
          ': ชั้น 26 อาคารสำนักงานเดอะเทรนดี้ 10/190-193 ซอยสุขุมวิท 13 คลองเตยเหนือ วัฒนา กรุงเทพฯ 10110',
    },
    'nix556cy': {
      'en': 'Tel',
      'th': 'โทร',
    },
    '8qvmdhk1': {
      'en': ': 095-685-5841',
      'th': ': 095-685-5841',
    },
    'lfzm7qe5': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    'leoww46o': {
      'en': ': info@brookreator.ai',
      'th': ': info@brookreator.ai',
    },
    'wxd2ra52': {
      'en':
          'Upon receiving your questions or concerns, our representative will contact you within a reasonable time to respond to your questions or concerns. In some cases, we may request further information to verify your identity.',
      'th':
          'เมื่อได้รับคำถามหรือข้อกังวลของคุณ ตัวแทนของเราจะติดต่อคุณภายในเวลาที่เหมาะสมเพื่อตอบคำถามหรือข้อกังวลของคุณ ในบางกรณี เราอาจขอข้อมูลเพิ่มเติมเพื่อยืนยันตัวตนของคุณ',
    },
    'or9q0glz': {
      'en': '2. What is personal data?',
      'th': '2. ข้อมูลส่วนบุคคลคืออะไร?',
    },
    'fb66qnbg': {
      'en':
          '“Personal Data” means any information pertaining to a Data Subject, which enables the identification of the Data Subject, whether direct or indirect.',
      'th':
          '“ข้อมูลส่วนบุคคล” หมายถึง ข้อมูลใดๆ ที่เกี่ยวข้องกับเจ้าของข้อมูล ซึ่งทำให้สามารถระบุตัวตนของเจ้าของข้อมูลได้ ไม่ว่าทางตรงหรือทางอ้อม',
    },
    'cgzpfajw': {
      'en': '3. What personal data we will collect',
      'th': '3. ข้อมูลส่วนบุคคลใดที่เราจะเก็บรวบรวม',
    },
    '0f3xh7p4': {
      'en': 'We collect personal data, including but not limited to:',
      'th': 'เราเก็บรวบรวมข้อมูลส่วนบุคคล รวมถึงแต่ไม่จำกัดเพียง:',
    },
    '71mrv4xb': {
      'en':
          '•\tContact information (e.g., telephone number, email address, profile name on Facebook);',
      'th':
          '• ข้อมูลการติดต่อ (เช่น หมายเลขโทรศัพท์ ที่อยู่อีเมล ชื่อโปรไฟล์บน Facebook)',
    },
    'mz618shf': {
      'en':
          '•\tUsage information of our products and/or services (e.g., Generated image amount, Generated image configuration, Time spend on our application, historical page view);',
      'th':
          '• ข้อมูลการใช้งานผลิตภัณฑ์และ/หรือบริการของเรา (เช่น จำนวนรูปภาพที่สร้างขึ้น การกำหนดค่ารูปภาพที่สร้างขึ้น เวลาที่ใช้ในแอปพลิเคชันของเรา การดูหน้าเว็บในอดีต)',
    },
    'ctnfkngp': {
      'en':
          '•\tRecords of service usage to improve the quality of services and/or to resolve the service issues (e.g., records of texts, photos, etc.);',
      'th':
          '• บันทึกการใช้บริการเพื่อปรับปรุงคุณภาพการบริการและ/หรือเพื่อแก้ไขปัญหาการบริการ (เช่น บันทึกข้อความ รูปภาพ ฯลฯ )',
    },
    'vhc97dw5': {
      'en':
          '•\tYour location when you are using our products and/or services (e.g., country, province).',
      'th':
          '• ตำแหน่งของคุณเมื่อคุณใช้ผลิตภัณฑ์และ/หรือบริการของเรา (เช่น ประเทศ จังหวัด)',
    },
    'zxykegup': {
      'en': '4. The purposes of personal data processing',
      'th': '4. วัตถุประสงค์ของการประมวลผลข้อมูลส่วนบุคคล',
    },
    '5jc4eszw': {
      'en':
          'We may collect, use, disclose and/or process your personal data for one or more of the following purposes:',
      'th':
          'เราอาจรวบรวม ใช้ เปิดเผย และ/หรือประมวลผลข้อมูลส่วนบุคคลของคุณเพื่อวัตถุประสงค์ต่อไปนี้อย่างน้อยหนึ่งประการ:',
    },
    'hdfjhvoi': {
      'en':
          '•To fulfill the service contract agreement, enforce our terms of service and provide your use of services and/or access to the site;',
      'th':
          '•เพื่อให้บรรลุข้อตกลงสัญญาบริการ บังคับใช้ข้อกำหนดในการให้บริการของเรา และให้บริการการใช้บริการและ/หรือการเข้าถึงไซต์ของคุณ;',
    },
    'sas6rocn': {
      'en':
          '•To administer our services for internal operations, including troubleshooting, platform management, platform improvement, and platform optimization;',
      'th':
          '•เพื่อบริหารจัดการบริการของเราสำหรับการดำเนินงานภายใน รวมถึงการแก้ไขปัญหา การจัดการแพลตฟอร์ม การปรับปรุงแพลตฟอร์ม และการเพิ่มประสิทธิภาพแพลตฟอร์ม',
    },
    'c1fwfbka': {
      'en':
          '•To conduct research, analysis and development activities, behaviours of yours using products and services to create a database and to provide services (including, but not limited to, data analytics, surveys, technology development and/or profiling), and to offer you with better products or services and/or benefits of the company and/or The Brooker Group Companies;',
      'th':
          '•เพื่อดำเนินกิจกรรมการวิจัย การวิเคราะห์ และพัฒนา พฤติกรรมของคุณในการใช้ผลิตภัณฑ์และบริการเพื่อสร้างฐานข้อมูลและเพื่อให้บริการ (รวมถึงแต่ไม่จำกัดเพียง การวิเคราะห์ข้อมูล การสำรวจ การพัฒนาเทคโนโลยี และ/หรือการจัดทำโปรไฟล์) และเพื่อเสนอให้คุณ ด้วยผลิตภัณฑ์หรือบริการที่ดีขึ้น และ/หรือผลประโยชน์ของบริษัท และ/หรือ กลุ่มบริษัท Brooker;',
    },
    'fdi4ajl3': {
      'en':
          '•To inform and offer privileges, information, promotions and offers relating to application, buying, or selling products or services of the company and/or together with The Brooker Group Companies;',
      'th':
          '• เพื่อแจ้งและเสนอสิทธิพิเศษ ข้อมูล โปรโมชั่น และข้อเสนอที่เกี่ยวข้องกับการสมัคร การซื้อ หรือการขายผลิตภัณฑ์หรือบริการของบริษัท และ/หรือร่วมกับบริษัท The Brooker Group;',
    },
    'x4httw27': {
      'en':
          '•To apply or activate the services relating to application, buying, or selling of products or services of the Company or The Brooker Group Companies;',
      'th':
          '•เพื่อใช้หรือเปิดใช้งานบริการที่เกี่ยวข้องกับการสมัคร การซื้อหรือการขายผลิตภัณฑ์หรือบริการของบริษัทหรือกลุ่มบริษัท Brooker;',
    },
    'yveeizoe': {
      'en':
          '•To carry out our marketing analysis, plans and activity campaigns of the company and/or together with The Brooker Group Companies and/or business partners of the company;',
      'th':
          '•เพื่อดำเนินการวิเคราะห์การตลาด แผนงานและแคมเปญกิจกรรมของบริษัท และ/หรือร่วมกับบริษัท The Brooker Group และ/หรือพันธมิตรทางธุรกิจของบริษัท',
    },
    'ky6qaleq': {
      'en':
          '•To prevent or suppress a danger to a person’s life, body, or health;',
      'th': '• เพื่อป้องกันหรือระงับอันตรายต่อชีวิต ร่างกาย หรือสุขภาพของบุคคล',
    },
    'sgvxy655': {
      'en':
          '•To comply with or as required by any applicable law, governmental or regulatory requirements of any relevant jurisdiction and/or any other necessity for the legitimate interests of us;',
      'th':
          '•เพื่อปฏิบัติตามหรือตามที่กำหนดโดยกฎหมายที่บังคับใช้ ข้อกำหนดของรัฐบาลหรือกฎระเบียบของเขตอำนาจศาลที่เกี่ยวข้อง และ/หรือความจำเป็นอื่นใดเพื่อผลประโยชน์ที่ชอบด้วยกฎหมายของเรา;',
    },
    'hc7krpco': {
      'en':
          '•As the purposes for which the applicable law allows us to collect, use, disclose and/or process your personal data without your consent;',
      'th':
          '• ตามวัตถุประสงค์ที่กฎหมายที่ใช้บังคับอนุญาตให้เรารวบรวม ใช้ เปิดเผย และ/หรือประมวลผลข้อมูลส่วนบุคคลของคุณโดยไม่ได้รับความยินยอมจากคุณ',
    },
    'oyzxsci4': {
      'en':
          '•To use for identification and/or verification in registering our services;',
      'th':
          '•เพื่อใช้สำหรับการระบุตัวตนและ/หรือการตรวจสอบในการลงทะเบียนบริการของเรา;',
    },
    'teyifn4y': {
      'en':
          '•To facilitate service payments related to product and service usages or purchases;',
      'th':
          '•เพื่ออำนวยความสะดวกในการชำระค่าบริการที่เกี่ยวข้องกับการใช้สินค้าและบริการหรือการซื้อ;',
    },
    'pco6ai62': {
      'en':
          '•To provide after-sales services, respond to your questions/ concerns, facilitate any enquiries, suggestions, requests, or complaints in respect of our services, compensation and resolve the issue;',
      'th':
          '•เพื่อให้บริการหลังการขาย ตอบคำถาม/ข้อกังวลของคุณ อำนวยความสะดวกในการสอบถาม ข้อเสนอแนะ คำขอ หรือข้อร้องเรียนใด ๆ ที่เกี่ยวข้องกับบริการของเรา การชดเชย และแก้ไขปัญหา',
    },
    'wjxq2176': {
      'en':
          '•To notify you of updates or announcements from the regulator and government agencies;',
      'th':
          '•เพื่อแจ้งให้คุณทราบถึงการปรับปรุงหรือประกาศจากหน่วยงานกำกับดูแลและหน่วยงานของรัฐ;',
    },
    'lbgbhg2k': {
      'en':
          '•To manage and fulfill your orders, send you invoices and purchase orders, notify the payment, prepare the receipts, and tax invoices, collect payment for our services, ask for payment, and exercise rights of claim;',
      'th':
          '•เพื่อจัดการและปฏิบัติตามคำสั่งซื้อของคุณ ส่งใบแจ้งหนี้และใบสั่งซื้อ แจ้งการชำระเงิน เตรียมใบเสร็จรับเงินและใบกำกับภาษี เก็บเงินค่าบริการของเรา สอบถามการชำระเงิน และใช้สิทธิในการเรียกร้อง',
    },
    'g21ihuy8': {
      'en':
          '•To protect and keep our services and platform secure, and monitor the customer activities, to protect your personal safety and rights, safety of others and the Company.',
      'th':
          '•เพื่อปกป้องและรักษาบริการและแพลตฟอร์มของเราให้ปลอดภัย และตรวจสอบกิจกรรมของลูกค้า เพื่อปกป้องความปลอดภัยและสิทธิ์ส่วนบุคคลของคุณ ความปลอดภัยของผู้อื่นและบริษัท',
    },
    'i47wagii': {
      'en': '5. How and for how long we keep your personal data',
      'th': '5. เราเก็บข้อมูลส่วนบุคคลของคุณไว้อย่างไรและนานแค่ไหน',
    },
    'ods837zq': {
      'en':
          'The company has information security measures to maintain and the period of retention of your personal data as follows:',
      'th':
          'บริษัทมีมาตรการรักษาความมั่นคงปลอดภัยข้อมูลและระยะเวลาในการเก็บรักษาข้อมูลส่วนบุคคลของท่าน ดังนี้',
    },
    'vw2vr9wg': {
      'en':
          '•Collection characteristics: We keep your personal data either in a printed document (hard copy) or in an electronic document system (soft copy) with appropriately secured measures to prevent the loss, unauthorized access, change, and disclosure of your personal data.',
      'th':
          '• ลักษณะการเก็บรวบรวม: เราเก็บรักษาข้อมูลส่วนบุคคลของคุณไว้ในเอกสารสิ่งพิมพ์ (ฉบับพิมพ์) หรือในระบบเอกสารอิเล็กทรอนิกส์ (ฉบับพิมพ์) โดยมีมาตรการรักษาความปลอดภัยที่เหมาะสมเพื่อป้องกันการสูญหาย การเข้าถึง การเปลี่ยนแปลง และการเปิดเผยข้อมูลส่วนบุคคลของคุณโดยไม่ได้รับอนุญาต',
    },
    'smii1a0s': {
      'en':
          '•We manage to put in place procedures to deal with appropriately secured measures to prevent the loss, unauthorized access, change, and disclosure of your personal data.',
      'th':
          '•เราจัดการเพื่อวางขั้นตอนเพื่อจัดการกับมาตรการที่ปลอดภัยอย่างเหมาะสมเพื่อป้องกันการสูญหาย การเข้าถึง การเปลี่ยนแปลง และการเปิดเผยข้อมูลส่วนบุคคลของคุณโดยไม่ได้รับอนุญาต',
    },
    'eobt5llu': {
      'en':
          '•Retention period: We will not keep your personal data for any longer than we deem necessary for the purposes for which we collect and process it, or within the effective period of the contract, or within the period of the exercise, or defense of legal claims.',
      'th':
          '•ระยะเวลาการเก็บรักษา: เราจะไม่เก็บข้อมูลส่วนบุคคลของคุณไว้นานเกินกว่าที่เราเห็นว่าจำเป็นสำหรับวัตถุประสงค์ที่เรารวบรวมและประมวลผลข้อมูลนั้น หรือภายในระยะเวลาที่มีผลบังคับของสัญญา หรือภายในระยะเวลาของการใช้สิทธิ หรือในการป้องกันทางกฎหมาย การเรียกร้อง',
    },
    'dusd04q3': {
      'en':
          '•When your personal data for which we collect, use, and process it, is no longer required for the purposes and by applicable laws, we will erase or destroy or aggregate and/or anonymize your personal data to an extent that it no longer identifies you within a reasonable time.',
      'th':
          '•เมื่อข้อมูลส่วนบุคคลของคุณที่เรารวบรวม ใช้ และประมวลผลนั้นไม่จำเป็นสำหรับวัตถุประสงค์อีกต่อไปและตามกฎหมายที่บังคับใช้ เราจะลบหรือทำลายหรือรวบรวมและ/หรือทำให้ข้อมูลส่วนบุคคลของคุณเป็นนิรนามในขอบเขตที่ไม่สามารถระบุได้อีกต่อไป คุณภายในเวลาอันสมควร',
    },
    'ksgud5mm': {
      'en': '6. Your rights as a data subject',
      'th': '6. สิทธิ์ของคุณในฐานะเจ้าของข้อมูล',
    },
    '6vf3xs4j': {
      'en':
          'You, as the data subject, have the following rights in relation to personal data according to PDPA:',
      'th':
          'คุณในฐานะเจ้าของข้อมูลมีสิทธิ์ดังต่อไปนี้ที่เกี่ยวข้องกับข้อมูลส่วนบุคคลตาม PDPA:',
    },
    '3ecza0q0': {
      'en': 'Right to consent and withdraw consent',
      'th': 'สิทธิในการยินยอมและเพิกถอนความยินยอม',
    },
    '4z6muru3': {
      'en':
          '•In case the processing of personal data requires consent, you have the right to give consent to the company to process personal data for the purposes informed specifically.',
      'th':
          '•ในกรณีที่การประมวลผลข้อมูลส่วนบุคคลต้องได้รับความยินยอม คุณมีสิทธิที่จะให้ความยินยอมแก่บริษัทในการประมวลผลข้อมูลส่วนบุคคลเพื่อวัตถุประสงค์ที่แจ้งให้ทราบเป็นการเฉพาะ',
    },
    'ie4ekuu7': {
      'en':
          '•When you give us your consent for personal data processing, you have the right to withdraw the consent for your specific purposes at any time, unless there are restrictions on legal rights or in connection with the contract that benefits you.',
      'th':
          '•เมื่อคุณให้ความยินยอมแก่เราในการประมวลผลข้อมูลส่วนบุคคล คุณมีสิทธิ์ที่จะเพิกถอนความยินยอมเพื่อวัตถุประสงค์เฉพาะของคุณได้ตลอดเวลา เว้นแต่จะมีข้อจำกัดเกี่ยวกับสิทธิ์ทางกฎหมายหรือเกี่ยวข้องกับสัญญาที่เป็นประโยชน์ต่อคุณ',
    },
    'sgmh3rfe': {
      'en':
          '•You have the right to withdraw the consent about processing your personal data at any time that your personal data is with the company.',
      'th':
          '•คุณมีสิทธิ์เพิกถอนความยินยอมในการประมวลผลข้อมูลส่วนบุคคลของคุณได้ตลอดเวลาที่ข้อมูลส่วนบุคคลของคุณอยู่กับบริษัท',
    },
    'w56fjedj': {
      'en':
          '•If exercising the right to withdraw consent prevents the company from delivering products or providing some services to you, the Company will inform you about the effect of withdrawing the consent.',
      'th':
          '•หากการใช้สิทธิเพิกถอนความยินยอมทำให้บริษัทไม่สามารถส่งมอบผลิตภัณฑ์หรือให้บริการบางอย่างแก่คุณได้ บริษัทจะแจ้งให้คุณทราบถึงผลของการเพิกถอนความยินยอม',
    },
    'iu8v5u86': {
      'en': 'Right to access and/or to be informed',
      'th': 'สิทธิในการเข้าถึงและ/หรือได้รับแจ้ง',
    },
    '9iri9fre': {
      'en':
          '•You have the right to request access to and obtain a copy of your personal data which is being processed by us.',
      'th':
          '•คุณมีสิทธิ์ขอเข้าถึงและรับสำเนาข้อมูลส่วนบุคคลของคุณที่เรากำลังประมวลผลอยู่',
    },
    'lfgv6t45': {
      'en':
          '•You have the right to request for the source of your information that we obtained',
      'th': '•คุณมีสิทธิ์ขอแหล่งที่มาของข้อมูลของคุณที่เราได้รับ',
    },
    'd2ppmqik': {
      'en': 'Right to data portability',
      'th': 'สิทธิ์ในการพกพาข้อมูล',
    },
    'htrxj9qd': {
      'en':
          '•You are entitled to request us to send or transfer your personal data to other data controllers or directly receive your personal data for some reason. However, the right to data portability applies only to the personal data that you submit to the Company and the collection, use and/or disclose of such personal data is done with your consent or where such personal data is necessary to be collected, used and/or disclosed to fulfill its obligations under a contract.',
      'th':
          '•คุณมีสิทธิ์ขอให้เราส่งหรือถ่ายโอนข้อมูลส่วนบุคคลของคุณไปยังผู้ควบคุมข้อมูลอื่น ๆ หรือรับข้อมูลส่วนบุคคลของคุณโดยตรงด้วยเหตุผลบางประการ อย่างไรก็ตาม สิทธิในการเคลื่อนย้ายข้อมูลจะใช้กับข้อมูลส่วนบุคคลที่คุณส่งให้กับบริษัทเท่านั้น และการเก็บรวบรวม การใช้ และ/หรือการเปิดเผยข้อมูลส่วนบุคคลดังกล่าวจะกระทำโดยได้รับความยินยอมจากคุณ หรือในกรณีที่จำเป็นต้องรวบรวม ใช้ และข้อมูลส่วนบุคคลดังกล่าว /หรือเปิดเผยเพื่อปฏิบัติตามภาระผูกพันตามสัญญา',
    },
    'yhaf94xf': {
      'en': 'Right to object',
      'th': 'สิทธิในการคัดค้าน',
    },
    'sztvisp1': {
      'en':
          '•You have the right to object to the collecting/ processing/ and disclosure of your personal data for some reason.',
      'th':
          '•คุณมีสิทธิ์คัดค้านการรวบรวม/ การประมวลผล/ และการเปิดเผยข้อมูลส่วนบุคคลของคุณด้วยเหตุผลบางประการ',
    },
    'l0mtmfop': {
      'en': 'Right to erasure',
      'th': 'สิทธิในการลบล้าง',
    },
    '7rzpby9f': {
      'en':
          '•You have the right, in certain circumstances, to request the erasure of your personal data which is being processed by the Company.',
      'th':
          '•คุณมีสิทธิในบางกรณีที่จะขอลบข้อมูลส่วนบุคคลของคุณที่บริษัทกำลังประมวลผลอยู่',
    },
    'qloh97en': {
      'en': 'Right to restriction of processing',
      'th': 'สิทธิในการจำกัดการประมวลผล',
    },
    '39f24769': {
      'en':
          '•You are entitled to have the right, in certain circumstances, to restrict the processing of your personal data by our Company.',
      'th':
          '•คุณมีสิทธิ์ในบางสถานการณ์ในการจำกัดการประมวลผลข้อมูลส่วนบุคคลของคุณโดยบริษัทของเรา',
    },
    'h3k3sp3z': {
      'en': 'Right to rectification',
      'th': 'สิทธิในการแก้ไข',
    },
    '4knwnh4o': {
      'en':
          '•You have the right to ask for any inaccurate personal data held or processed by us to be corrected, and any incomplete data to be completed. For those inaccurate personal data or incomplete personal data, we will investigate and correct them.',
      'th':
          '•คุณมีสิทธิ์ขอให้แก้ไขข้อมูลส่วนบุคคลที่ไม่ถูกต้องที่เราเก็บไว้หรือประมวลผล และข้อมูลที่ไม่สมบูรณ์ให้กรอกข้อมูลให้ครบถ้วน สำหรับข้อมูลส่วนบุคคลที่ไม่ถูกต้องหรือข้อมูลส่วนบุคคลที่ไม่สมบูรณ์ เราจะตรวจสอบและแก้ไขให้ถูกต้อง',
    },
    'yvu7dm3t': {
      'en':
          '•Where a request to rectify inaccurate personal data is received, we may, in some circumstances, request you to provide proof of your identity or to provide additional documents and/or required information.',
      'th':
          '•เมื่อมีการร้องขอให้แก้ไขข้อมูลส่วนบุคคลที่ไม่ถูกต้อง ในบางกรณี เราอาจขอให้คุณแสดงหลักฐานแสดงตัวตนของคุณหรือให้เอกสารเพิ่มเติมและ/หรือข้อมูลที่จำเป็น',
    },
    'o4u2zanp': {
      'en': 'Right to petition',
      'th': 'สิทธิในการยื่นคำร้อง',
    },
    'td4kwjpm': {
      'en':
          '•You (the data subject) have the right to complain or seek the assistance of Thai court in case we, the data controller and data processor, and/or our employees don’t follow the PDPA law or other relevant laws.',
      'th':
          '•คุณ (เจ้าของข้อมูล) มีสิทธิ์ร้องเรียนหรือขอความช่วยเหลือจากศาลไทย ในกรณีที่เรา ผู้ควบคุมข้อมูล และผู้ประมวลผลข้อมูล และ/หรือ พนักงานของเรา ไม่ปฏิบัติตามกฎหมาย PDPA หรือกฎหมายอื่นที่เกี่ยวข้อง',
    },
    'lfzs7qob': {
      'en':
          'You may contact the staff of the Company to file a request to proceed with the above rights or contact designated channels specified by the company. However, you do not have to pay a fee to use your rights. However, a fee may be charged accordingly if your request is found to be unfounded, repetitive, or excessive.',
      'th':
          'ท่านสามารถติดต่อเจ้าหน้าที่ของบริษัทเพื่อยื่นคำร้องเพื่อดำเนินการตามสิทธิข้างต้นหรือติดต่อช่องทางที่บริษัทกำหนด อย่างไรก็ตาม คุณไม่จำเป็นต้องจ่ายค่าธรรมเนียมเพื่อใช้สิทธิ์ของคุณ อย่างไรก็ตาม อาจมีการเรียกเก็บค่าธรรมเนียมหากพบว่าคำขอของคุณไม่มีมูล ซ้ำซ้อน หรือมากเกินไป',
    },
    '7zeytb5n': {
      'en':
          '7. The following list is the list of companies that the company may share your personal data with, now or in the future (might be updated in the future):',
      'th':
          '7. รายการต่อไปนี้คือรายชื่อบริษัทที่บริษัทอาจแบ่งปันข้อมูลส่วนบุคคลของคุณด้วย ทั้งในปัจจุบันหรือในอนาคต (อาจมีการอัปเดตในอนาคต):',
    },
    'a0czypnn': {
      'en': 'BINSWANGER BROOKER (THAILAND) LTD.',
      'th': 'BINSWANGER BROOKER (THAILAND) LTD.',
    },
    '6rfiqmtn': {
      'en': 'BROOKER PLANNER CO., LTD.',
      'th': 'BROOKER PLANNER CO., LTD.',
    },
    'blpuuyr1': {
      'en': 'THE BROOKER GROUP PLC.',
      'th': 'THE BROOKER GROUP PLC.',
    },
    'gk1iafar': {
      'en': 'BROOKER BUSINESS DEVELOPMENT CO., LTD.',
      'th': 'BROOKER BUSINESS DEVELOPMENT CO., LTD.',
    },
    'etawa5dw': {
      'en':
          '8. How you can send a request to delete, withdraw consent, disclose or update the personal data that we hold',
      'th':
          '8. คุณสามารถส่งคำขอลบ เพิกถอนความยินยอม เปิดเผยหรืออัปเดตข้อมูลส่วนบุคคลที่เราเก็บไว้ได้อย่างไร',
    },
    'myv4if20': {
      'en':
          'You can delete your personal data and withdraw consent by simply visiting the account tap on our website, then ticking the box that says, “delete your personal data and withdraw consent” and then ticking the box that says, “delete your account”, after that click ‘Deactivate Account’. Please note that, after you have ticked the 2 boxes and clicked “Deactivate Account”, your personal data and your account will be deleted, and you will neither be able to recover your data nor use the services on our website. At the same time, we will stop processing your personal data. If you would like to use the services on our website again after you have deleted your personal data, your account and also have withdrawn your consent, you have to register on our website, accept our terms and conditions, and accept our privacy policy once more.',
      'th':
          'คุณสามารถลบข้อมูลส่วนบุคคลของคุณและถอนความยินยอมได้โดยไปที่บัญชีแตะบนเว็บไซต์ของเรา จากนั้นทำเครื่องหมายในช่องที่ระบุว่า “ลบข้อมูลส่วนบุคคลของคุณและถอนความยินยอม” จากนั้นทำเครื่องหมายในช่องที่ระบุว่า “ลบบัญชีของคุณ” หลังจากนั้น ที่คลิก \'ปิดใช้งานบัญชี\' โปรดทราบว่าหลังจากที่คุณทำเครื่องหมายที่ 2 ช่องแล้วคลิก "ปิดใช้งานบัญชี" ข้อมูลส่วนบุคคลและบัญชีของคุณจะถูกลบ และคุณจะไม่สามารถกู้คืนข้อมูลของคุณหรือใช้บริการบนเว็บไซต์ของเราได้ ในเวลาเดียวกัน เราจะหยุดการประมวลผลข้อมูลส่วนบุคคลของคุณ หากคุณต้องการใช้บริการบนเว็บไซต์ของเราอีกครั้งหลังจากที่คุณลบข้อมูลส่วนบุคคล บัญชีของคุณ และได้เพิกถอนความยินยอมแล้ว คุณต้องลงทะเบียนบนเว็บไซต์ของเรา ยอมรับข้อกำหนดและเงื่อนไขของเรา และยอมรับนโยบายความเป็นส่วนตัวของเราอีกครั้ง .',
    },
    'i4arv39a': {
      'en': 'Address',
      'th': 'ที่อยู่',
    },
    'r4iudphd': {
      'en':
          ': 26th Floor, The Trendy Office Building, 10/190-193, Soi Sukhumvit 13, Khlong Toei Nuea, Watthana, Bangkok 10110',
      'th':
          ': ชั้น 26 อาคารสำนักงานเดอะเทรนดี้ 10/190-193 ซอยสุขุมวิท 13 คลองเตยเหนือ วัฒนา กรุงเทพฯ 10110',
    },
    'z64ymrmw': {
      'en': 'Tel',
      'th': 'โทร',
    },
    'fch90pq3': {
      'en': ': 095-685-5841',
      'th': ': 095-685-5841',
    },
    'qa7guwhu': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    '0cc8fu3x': {
      'en': ': info@brookreator.ai',
      'th': ': info@brookreator.ai',
    },
    'y0t58j8a': {
      'en': '9. If you refuse to give us your personal data',
      'th': '9. หากคุณปฏิเสธที่จะให้ข้อมูลส่วนบุคคลของคุณแก่เรา',
    },
    'qwvgfhmj': {
      'en':
          'The Company is legally obligated to collect personal data or to make a contract between you and the Company. If you choose not to provide personal data, the Company may not be able to provide services to you.',
      'th':
          'บริษัทมีหน้าที่ตามกฎหมายในการเก็บรวบรวมข้อมูลส่วนบุคคลหรือทำสัญญาระหว่างคุณกับบริษัท หากคุณเลือกที่จะไม่ให้ข้อมูลส่วนบุคคล บริษัทอาจไม่สามารถให้บริการแก่คุณได้',
    },
    'bd8ep49e': {
      'en':
          'Besides the case that the Company processes personal data for performing of the contract and complying with the laws, in some cases, the Company may require your consent for the collection, use or disclosure of your personal data in accordance with the purposes of personal data processing specified in section 4 to provide you with the best benefits and/or for the Company to be able to provide services that meet to your needs appropriately.',
      'th':
          'นอกจากกรณีที่บริษัทประมวลผลข้อมูลส่วนบุคคลเพื่อการปฏิบัติตามสัญญาและปฏิบัติตามกฎหมายแล้ว ในบางกรณีบริษัทอาจต้องได้รับความยินยอมจากคุณในการเก็บรวบรวม ใช้ หรือเปิดเผยข้อมูลส่วนบุคคลของคุณตามวัตถุประสงค์ในการประมวลผลข้อมูลส่วนบุคคล ระบุไว้ในข้อ 4 เพื่อให้เกิดประโยชน์สูงสุดแก่ท่าน และ/หรือ เพื่อให้บริษัทสามารถให้บริการที่ตรงตามความต้องการของท่านได้อย่างเหมาะสม',
    },
    'bnbh8fph': {
      'en': '10. Cookie policy',
      'th': '10. นโยบายคุกกี้',
    },
    'lsr70476': {
      'en':
          'During any use of the Company\'s website Information relating to your access to this website will be saved in the form of a cookie. This cookie policy describes the meaning of functional cookies, their purposes, and how to delete cookies for your privacy by accessing our website. you consent to our use of cookies in accordance with the cookie policy detailed below.',
      'th':
          'ในระหว่างการใช้งานเว็บไซต์ของบริษัท ข้อมูลที่เกี่ยวข้องกับการเข้าถึงเว็บไซต์นี้ของคุณจะถูกบันทึกในรูปแบบของคุกกี้ นโยบายคุกกี้นี้อธิบายความหมายของคุกกี้การทำงาน วัตถุประสงค์ และวิธีการลบคุกกี้เพื่อความเป็นส่วนตัวของคุณโดยการเข้าถึงเว็บไซต์ของเรา คุณยินยอมให้เราใช้คุกกี้ตามนโยบายคุกกี้ที่มีรายละเอียดด้านล่าง',
    },
    'u3ospujn': {
      'en': 'What are cookies?',
      'th': 'คุกกี้คืออะไร?',
    },
    'qhjzvzk0': {
      'en':
          'Cookies are text files that are stored on a user\'s computer and/or communication devices that you use, such as tablets and smartphones, via a web browser while you enter the Company\'s website. Cookies will not cause harm to your computer equipment and/or communication devices. They are used to store detailed log data, internet usage or your website visit behavior. You can learn more about cookies from',
      'th':
          'คุกกี้คือไฟล์ข้อความที่จัดเก็บไว้ในคอมพิวเตอร์และ/หรืออุปกรณ์สื่อสารของผู้ใช้ที่คุณใช้ เช่น แท็บเล็ตและสมาร์ทโฟน ผ่านทางเว็บเบราว์เซอร์ในขณะที่คุณเข้าสู่เว็บไซต์ของบริษัท คุกกี้จะไม่ก่อให้เกิดอันตรายต่ออุปกรณ์คอมพิวเตอร์และ/หรืออุปกรณ์สื่อสารของคุณ ใช้เพื่อจัดเก็บข้อมูลบันทึกโดยละเอียด การใช้งานอินเทอร์เน็ต หรือพฤติกรรมการเข้าชมเว็บไซต์ของคุณ คุณสามารถเรียนรู้เพิ่มเติมเกี่ยวกับคุกกี้ได้จาก',
    },
    '4ch1ycvd': {
      'en':
          '•To study the behavior of your website usage and to develop company websites to be able to use easily, quickly and more efficient',
      'th':
          '•เพื่อศึกษาพฤติกรรมการใช้งานเว็บไซต์ของคุณและพัฒนาเว็บไซต์ของบริษัทให้สามารถใช้งานได้ง่าย รวดเร็ว และมีประสิทธิภาพมากขึ้น',
    },
    'h1g4j39d': {
      'en':
          '•To enable you to sign in to your account on the Company\'s website',
      'th': '•เพื่อให้คุณสามารถลงชื่อเข้าใช้บัญชีของคุณบนเว็บไซต์ของบริษัทได้',
    },
    'waflfmo5': {
      'en': '•To protect you from fraud and improve security',
      'th': '•เพื่อปกป้องคุณจากการฉ้อโกงและปรับปรุงความปลอดภัย',
    },
    '580akcbe': {
      'en':
          '•To analyze products and services, and offers of the Company products that may be relevant to you',
      'th':
          '•เพื่อวิเคราะห์ผลิตภัณฑ์และบริการและข้อเสนอของผลิตภัณฑ์ของบริษัทที่อาจเกี่ยวข้องกับคุณ',
    },
    'oqsb7q1l': {
      'en':
          '•To improve the marketing that you see on social media, applications and other websites',
      'th':
          '•เพื่อปรับปรุงการตลาดที่คุณเห็นบนโซเชียลมีเดีย แอปพลิเคชัน และเว็บไซต์อื่นๆ',
    },
    'uad8m5hn': {
      'en': 'How the Company uses cookies?',
      'th': 'บริษัทใช้คุกกี้อย่างไร?',
    },
    'ce9nbua5': {
      'en':
          'The Company will collect website information from all visitors through cookies or similar technologies and will use cookies for the purpose of improving the efficiency of accessing and using the Company\'s internet services. The company collects cookies for the following purposes.',
      'th':
          'บริษัทจะรวบรวมข้อมูลเว็บไซต์จากผู้เยี่ยมชมทั้งหมดผ่านคุกกี้หรือเทคโนโลยีที่คล้ายคลึงกัน และจะใช้คุกกี้เพื่อวัตถุประสงค์ในการปรับปรุงประสิทธิภาพในการเข้าถึงและใช้บริการอินเทอร์เน็ตของบริษัท บริษัทรวบรวมคุกกี้เพื่อวัตถุประสงค์ดังต่อไปนี้',
    },
    'b3zg2wuv': {
      'en':
          'You can refuse the collection of information via cookies through your browser settings, which may reduce the optimum performance of the website and application.',
      'th':
          'คุณสามารถปฏิเสธการรวบรวมข้อมูลผ่านคุกกี้ผ่านการตั้งค่าเบราว์เซอร์ของคุณ ซึ่งอาจลดประสิทธิภาพสูงสุดของเว็บไซต์และแอปพลิเคชัน',
    },
    '8jd2zfps': {
      'en': '11. Information of our address, and contact channels',
      'th': '11. ข้อมูลที่อยู่ของเรา และช่องทางการติดต่อ',
    },
    'bu9jool0': {
      'en':
          'If you have any questions, concerns or complaints about this privacy policy or our handling of your information, please do not hesitate to contact us via one or more of the following channels:',
      'th':
          'หากคุณมีคำถาม ข้อกังวล หรือข้อร้องเรียนเกี่ยวกับนโยบายความเป็นส่วนตัวนี้หรือการจัดการข้อมูลของคุณของเรา โปรดอย่าลังเลที่จะติดต่อเราผ่านช่องทางใดช่องทางหนึ่งต่อไปนี้:',
    },
    '4aej65wv': {
      'en': 'Address',
      'th': 'ที่อยู่',
    },
    'i66eeule': {
      'en':
          ': 26th Floor, The Trendy Office Building, 10/190-193, Soi Sukhumvit 13, Khlong Toei Nuea, Watthana, Bangkok 10110',
      'th':
          ': ชั้น 26 อาคารสำนักงานเดอะเทรนดี้ 10/190-193 ซอยสุขุมวิท 13 คลองเตยเหนือ วัฒนา กรุงเทพฯ 10110',
    },
    'jpxgchi9': {
      'en': 'Tel',
      'th': 'โทร',
    },
    'ivoeohdp': {
      'en': ': 095-685-5841',
      'th': ': 095-685-5841',
    },
    '0mddkos0': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    'qwxilonx': {
      'en': ': info@brookreator.ai',
      'th': ': info@brookreator.ai',
    },
    'wxp3abdf': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // OpenAppScreen123
  {
    '5a0yx8b3': {
      'en': 'Elevating Creativity Through the Power of AI.',
      'th': 'ยกระดับความคิดสร้างสรรค์ด้วยพลังของ AI',
    },
    'vj5dp84d': {
      'en':
          'Listen to the latest music releases and buy music event only using Disc. app',
      'th': 'ฟังเพลงใหม่ล่าสุดและซื้อกิจกรรมเพลงโดยใช้แผ่นดิสก์เท่านั้น แอป',
    },
    '30wc2amc': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'd3zq7ti6': {
      'en': 'Easily create an image from scratch with our AI image',
      'th': 'สร้างภาพตั้งแต่เริ่มต้นได้อย่างง่ายดายด้วยภาพ AI ของเรา',
    },
    'xy8we081': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    '4mjm580g': {
      'en':
          'Train your own AI model to create limitless personalized portraits',
      'th': 'ฝึกฝนโมเดล AI ของคุณเองเพื่อสร้างภาพบุคคลแบบไม่จำกัด',
    },
    'kywld9pg': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    's4tp3k1x': {
      'en': 'Change your video to your favorite style.',
      'th': 'เปลี่ยนวิดีโอของคุณให้เป็นสไตล์ที่คุณชื่นชอบ',
    },
    'o7eik5h9': {
      'en': 'Start Generate',
      'th': 'เริ่มสร้าง',
    },
    '7pcppf0i': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Settings
  {
    'o6etembj': {
      'en': 'Setting',
      'th': 'การตั้งค่า',
    },
    'kspu0qrw': {
      'en': 'Sign In / Register',
      'th': 'เข้าสู่ระบบ / ลงทะเบียน',
    },
    '5mkmfh80': {
      'en': 'Buy Credit',
      'th': 'ซื้อเครดิต',
    },
    '96vxso6b': {
      'en': 'Language',
      'th': 'ภาษา',
    },
    'gsx8tlla': {
      'en': 'About Us',
      'th': 'เกี่ยวกับเรา',
    },
    'cgrlozka': {
      'en': 'Privacy Policy',
      'th': 'นโยบายความเป็นส่วนตัว',
    },
    'yy9qi0v0': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // SignIn
  {
    '2oih9zxw': {
      'en': 'Sign In',
      'th': 'เข้าสู่ระบบ',
    },
    'l7owweah': {
      'en': 'Please sign in to your account',
      'th': 'กรุณาลงชื่อเข้าใช้บัญชีของคุณ',
    },
    'zoroqaw3': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    'p7v5p7hr': {
      'en': 'Enter Your Email',
      'th': 'กรอกอีเมล์ของคุณ',
    },
    'z5porhj1': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    'w1fimk6o': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    '00ghj3vm': {
      'en': 'Field is required',
      'th': '',
    },
    'zd21aq1o': {
      'en': 'Invalid Email',
      'th': '',
    },
    'v50e81j4': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '45rftazb': {
      'en': 'Field is required',
      'th': '',
    },
    '6hu1espu': {
      'en': 'Password should contain at least 6 characters',
      'th': '',
    },
    '7btabel9': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'pxmchqtr': {
      'en': 'Forgot Password?',
      'th': 'ลืมรหัสผ่าน?',
    },
    'h6trimte': {
      'en': 'Sign In',
      'th': 'เข้าสู่ระบบ',
    },
    '2u35ewui': {
      'en': 'Or sign in using your social profile',
      'th': 'หรือลงชื่อเข้าใช้โดยใช้โปรไฟล์โซเชียลของคุณ',
    },
    '9n4exasd': {
      'en': 'Don’t have account? ',
      'th': 'ยังไม่มีบัญชี?',
    },
    '5prn0slv': {
      'en': 'Create Account',
      'th': 'สร้างบัญชี',
    },
    '8sme2lly': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // SignUp
  {
    'ud5635oj': {
      'en': 'Create Account',
      'th': 'สร้างบัญชี',
    },
    'ch5aqi77': {
      'en': 'Please fill in to complete your account',
      'th': 'กรุณากรอกเพื่อกรอกบัญชีของคุณ',
    },
    'wyroaypm': {
      'en': 'Name',
      'th': 'ชื่อ',
    },
    '1yg1wjno': {
      'en': 'Enter Your Name',
      'th': 'ใส่ชื่อของคุณ',
    },
    '2z0xp64d': {
      'en': 'Email',
      'th': 'อีเมล',
    },
    '0gnp7kx9': {
      'en': 'Enter Your Email',
      'th': 'กรอกอีเมล์ของคุณ',
    },
    'lktk09ue': {
      'en': 'Password',
      'th': 'รหัสผ่าน',
    },
    'lk89pvw8': {
      'en': 'Enter Your Password',
      'th': 'ใส่รหัสผ่านของคุณ',
    },
    'cdo8assi': {
      'en': 'Field is required',
      'th': '',
    },
    'w899uhnf': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '0zanvz29': {
      'en': 'Field is required',
      'th': '',
    },
    'ht35x53h': {
      'en': 'Invalid Email',
      'th': '',
    },
    'a3a3t8ok': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    'vkkx3eqh': {
      'en': 'Field is required',
      'th': '',
    },
    'qltl6zk3': {
      'en': 'Password should contain at least 6 characters',
      'th': '',
    },
    'jrvvbq55': {
      'en': 'Please choose an option from the dropdown',
      'th': '',
    },
    '0a9ypit3': {
      'en': 'Password must be 8 and contain numeric',
      'th': 'รหัสผ่านต้องเป็นตัวเลข 8 และประกอบด้วยตัวเลข',
    },
    'mj981gg7': {
      'en': 'Sign Up',
      'th': 'ลงชื่อ',
    },
    'x2g332ku': {
      'en': 'Or sign up using your social profile',
      'th': 'หรือลงทะเบียนโดยใช้โปรไฟล์โซเชียลของคุณ',
    },
    'fwb0oypn': {
      'en': 'Sign Up with Google',
      'th': 'ลงทะเบียนกับ Google',
    },
    'o8gu7sqm': {
      'en': 'Already have an account?',
      'th': 'มีบัญชีอยู่แล้ว?',
    },
    'vne9reyu': {
      'en': 'Sign In',
      'th': 'เข้าสู่ระบบ',
    },
    '6hcpfp3j': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // MyPicture
  {
    '2dj0k2yh': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
    '5ttsupkj': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
    '91810kkp': {
      'en': 'Favourite',
      'th': 'ที่ชื่นชอบ',
    },
    'fzywfdlv': {
      'en': 'My Picture',
      'th': 'รูปของฉัน',
    },
  },
  // T2I_Start
  {
    'ijk0j3kq': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'bxx21zl0': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'bbgkgg2u': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    '6mohkesr': {
      'en': 'None',
      'th': 'ไม่มี',
    },
    'mp5nhy3v': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    '3nhwdj7h': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    'e4vl3npi': {
      'en': 'Ancient-Ruins',
      'th': 'ซากปรักหักพังโบราณ',
    },
    'k3j41iwi': {
      'en': 'Aquatic Sci-Fi',
      'th': 'ไซไฟทางน้ำ',
    },
    'a6igct3x': {
      'en': 'Bedroom in Rome',
      'th': 'ห้องนอนในโรม',
    },
    '8fo0l80k': {
      'en': 'Birthday Cat',
      'th': 'วันเกิดแมว',
    },
    'bpq8tgaf': {
      'en': 'Christmas',
      'th': 'คริสต์มาส',
    },
    'mg8wr6ca': {
      'en': 'Dreamy Globe',
      'th': 'ลูกโลกแห่งความฝัน',
    },
    'gwqv1sim': {
      'en': 'Futuristic Car',
      'th': 'รถยนต์แห่งอนาคต',
    },
    '8lou56cm': {
      'en': 'Hunter',
      'th': 'ฮันเตอร์',
    },
    'wkdanefy': {
      'en': 'Lazy Peach',
      'th': 'ขี้เกียจพีช',
    },
    'ierh5y3q': {
      'en': 'Lunar Year',
      'th': 'ปีจันทรคติ',
    },
    'kowynm4p': {
      'en': 'Prototype Sketch',
      'th': 'ร่างต้นแบบ',
    },
    'zcv7d79l': {
      'en': 'Rainbow Hoodie',
      'th': 'เสื้อฮู้ดสีรุ้ง',
    },
    'rhc656tl': {
      'en': 'Space Explorer',
      'th': 'นักสำรวจอวกาศ',
    },
    'rs9ysm5y': {
      'en': 'Thai Contemporary',
      'th': 'ไทยร่วมสมัย',
    },
    'f05jyvnu': {
      'en': 'Utopia',
      'th': 'ยูโทเปีย',
    },
    'h8vu2a93': {
      'en': 'Watercolor',
      'th': 'สีน้ำ',
    },
    '3apupjlg': {
      'en': 'Wonderland',
      'th': 'วันเดอร์แลนด์',
    },
    'eixsmczb': {
      'en': 'Homey Café',
      'th': 'โฮมมีคาเฟ่',
    },
    'xxd4klg7': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'jqx6wly8': {
      'en': ' : Image description',
      'th': ': คำอธิบายรูปภาพ',
    },
    '4k4fbcp1': {
      'en': 'Insert keywords in English',
      'th': 'ใส่คำสำคัญเป็นภาษาอังกฤษ',
    },
    'uvai4zs5': {
      'en': 'I want to dream of ...',
      'th': 'I want to dream of ...',
    },
    'xy2vvcin': {
      'en':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    'e6g8hbsx': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    '7rl2po5x': {
      'en':
          'Remove from image. Example: color red, big objects, mountain scenes, etc.',
      'th':
          'ลบออกจากภาพ ตัวอย่าง: color red, big objects, mountain scenes, etc.',
    },
    '53cx3wkf': {
      'en': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
      'th': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
    },
    'bn30zlta': {
      'en':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    'r1j7qi1b': {
      'en': 'Aspect Ratio',
      'th': 'อัตราส่วนภาพ',
    },
    'jis7l13e': {
      'en': 'Images generated with different ratios may appear different.',
      'th': 'รูปภาพที่สร้างด้วยอัตราส่วนที่ต่างกันอาจดูแตกต่างออกไป',
    },
    'z2q63tfw': {
      'en': ' Square (1:1)',
      'th': 'สี่เหลี่ยมจัตุรัส (1:1)',
    },
    '7kx9vxwu': {
      'en': 'Mobile (9:16)',
      'th': 'มือถือ (9:16)',
    },
    'f5tnr3tw': {
      'en': ' Portrait (3:4)',
      'th': 'แนวตั้ง (3:4)',
    },
    'bacvy54f': {
      'en': 'Desktop (16:9)',
      'th': 'เดสก์ท็อป (16:9)',
    },
    '93t0ikaj': {
      'en': 'Landscape (4:3)',
      'th': 'ทิวทัศน์ (4:3)',
    },
    '3v7nxniq': {
      'en': 'Resize manually',
      'th': 'ปรับขนาดด้วยตนเอง',
    },
    'la0z998e': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    '8emnn9ft': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Generating
  {
    'gpufxo49': {
      'en': '~2 Min',
      'th': '~2 นาที',
    },
    'sz7txbrp': {
      'en': 'Generating...',
      'th': 'กำลังสร้าง...',
    },
    'yq72b5wa': {
      'en':
          'You can close this window. Your photos will be waiting for you in \'My Pictures.',
      'th':
          'คุณสามารถปิดหน้าต่างนี้ได้. รูปภาพของคุณจะรอคุณอยู่ใน \'รูปภาพของฉัน\'',
    },
    'dpms6htn': {
      'en': 'Try More',
      'th': 'ลองเพิ่มเติม',
    },
    'nguiyxw0': {
      'en': 'Go to My Pictures',
      'th': 'ไปที่รูปภาพของฉัน',
    },
    '5mpj7j83': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // T2I_Done
  {
    'ewv84t33': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'lmluypr1': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    '6mwcr0dh': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    'n4zxn4c8': {
      'en': 'Homey Café',
      'th': 'โฮมมีคาเฟ่',
    },
    '9667ooeh': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'ku6hunkd': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    'lwgxbxzo': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    '1hgsa3za': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'ds3nwqn1': {
      'en': ' : Image description',
      'th': ': คำอธิบายรูปภาพ',
    },
    '9xim41h6': {
      'en':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    'v8lcdfg8': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    '6eu77m6k': {
      'en':
          'Remove from image. Example: color red, big objects, mountain scenes, etc.',
      'th':
          'ลบออกจากภาพ ตัวอย่าง: color red, big objects, mountain scenes, etc.',
    },
    'uohfjdq6': {
      'en':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    'qkscln3i': {
      'en': 'Aspect Ratio',
      'th': 'อัตราส่วนภาพ',
    },
    'a3iomssd': {
      'en': 'Images generated with different ratios may appear different.',
      'th': 'รูปภาพที่สร้างด้วยอัตราส่วนที่ต่างกันอาจดูแตกต่างออกไป',
    },
    'ebs63ghb': {
      'en': ' Square (1:1)',
      'th': 'สี่เหลี่ยมจัตุรัส (1:1)',
    },
    'mradwquk': {
      'en': 'Mobile (9:16)',
      'th': 'มือถือ (9:16)',
    },
    'cyhe70lx': {
      'en': ' Portrait (3:4)',
      'th': 'แนวตั้ง (3:4)',
    },
    'szizkri9': {
      'en': 'Desktop (16:9)',
      'th': 'เดสก์ท็อป (16:9)',
    },
    '4etsqllk': {
      'en': 'Landscape (4:3)',
      'th': 'ทิวทัศน์ (4:3)',
    },
    'i4og8rgi': {
      'en': 'Resize manually',
      'th': 'ปรับขนาดด้วยตนเอง',
    },
    '3qknouum': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'me9h657x': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    'hq9xif4m': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'ke5j624a': {
      'en': '1',
      'th': '1',
    },
    'coehmnu3': {
      'en': '2',
      'th': '2',
    },
    '9nedgdae': {
      'en': '3',
      'th': '3',
    },
    'lnsxfkw8': {
      'en': '4',
      'th': '4',
    },
    't2ze3fy0': {
      'en': '5',
      'th': '5',
    },
    'qsuou851': {
      'en': '6',
      'th': '6',
    },
    '2hhfyuy0': {
      'en': '7',
      'th': '7',
    },
    'mxzhjk79': {
      'en': '8',
      'th': '8',
    },
    'yeqy6kxe': {
      'en': '9',
      'th': '9',
    },
    'gu3tsb9e': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    '7voupqsn': {
      'en': 'Done',
      'th': 'เสร็จแล้ว',
    },
    'txp79l9n': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // T2I_Result
  {
    '3ik5q0tj': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'e5zu1cqw': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'ne09i1h3': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    'qu4geg0g': {
      'en': 'Homey Café',
      'th': 'โฮมมีคาเฟ่',
    },
    '5jvmy10g': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'agmhw704': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    'uxuwt9qu': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'qgeoekel': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'alr8yoar': {
      'en': ' : Image description',
      'th': ': คำอธิบายรูปภาพ',
    },
    'r4vj6k0e': {
      'en':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    '8xnkfhb9': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    'geiie9de': {
      'en':
          'Remove from image. Example: color red, big objects, mountain scenes, etc.',
      'th':
          'ลบออกจากภาพ ตัวอย่าง: color red, big objects, mountain scenes, etc.',
    },
    'tvdeeyxx': {
      'en':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    'vq9doiwj': {
      'en': 'Aspect Ratio',
      'th': 'อัตราส่วนภาพ',
    },
    'r5gindgr': {
      'en': 'Images generated with different ratios may appear different.',
      'th': 'รูปภาพที่สร้างด้วยอัตราส่วนที่ต่างกันอาจดูแตกต่างออกไป',
    },
    'k4wmrinm': {
      'en': ' Square (1:1)',
      'th': 'สี่เหลี่ยมจัตุรัส (1:1)',
    },
    'tnueumpa': {
      'en': 'Mobile (9:16)',
      'th': 'มือถือ (9:16)',
    },
    'yfvuvrml': {
      'en': ' Portrait (3:4)',
      'th': 'แนวตั้ง (3:4)',
    },
    '54ne65x7': {
      'en': 'Desktop (16:9)',
      'th': 'เดสก์ท็อป (16:9)',
    },
    'yderw3e2': {
      'en': 'Landscape (4:3)',
      'th': 'ทิวทัศน์ (4:3)',
    },
    '2ogknuxt': {
      'en': 'Resize manually',
      'th': 'ปรับขนาดด้วยตนเอง',
    },
    '079n7lwp': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'hcazxee3': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    'levsxh8d': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'oq7oa827': {
      'en': '1',
      'th': '1',
    },
    '089f8jax': {
      'en': '2',
      'th': '2',
    },
    'o7fohyzt': {
      'en': '3',
      'th': '3',
    },
    'zbth26ry': {
      'en': '4',
      'th': '4',
    },
    'tgjqrjqu': {
      'en': '5',
      'th': '5',
    },
    '1vysgx9m': {
      'en': '6',
      'th': '6',
    },
    'wp4j5o8j': {
      'en': '7',
      'th': '7',
    },
    'kyz5h01b': {
      'en': '8',
      'th': '8',
    },
    'i5909qdn': {
      'en': '9',
      'th': '9',
    },
    'e037aco6': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    'uhrbm5a5': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // AIVideo_Start
  {
    'qdma3fqx': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    '5jevmvz8': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    't9t7gp19': {
      'en': ' : Select Style',
      'th': ': เลือกสไตล์',
    },
    '683w5i2l': {
      'en': 'Homey Café',
      'th': 'โฮมมีคาเฟ่',
    },
    't13q5b22': {
      'en': 'Coming Soon..',
      'th': 'เร็วๆ นี้..',
    },
    'tr2x4q0f': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    '27gijl0h': {
      'en': ' : Upload Video',
      'th': ': อัพโหลดวิดีโอ',
    },
    '3zuk3s7e': {
      'en': 'Video duration is limited to 15 seconds.',
      'th': 'ระยะเวลาของวิดีโอจำกัดอยู่ที่ 15 วินาที',
    },
    'np3aoeg5': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    '9ryekwj8': {
      'en': ' : Select Format Type',
      'th': ': เลือกประเภทรูปแบบ',
    },
    'fcxdpd7k': {
      'en': 'Flipbook',
      'th': 'ฟลิปบุ๊ค',
    },
    '5bolbhyo': {
      'en': '( 30 Credits )',
      'th': '( 30 หน่วยกิต )',
    },
    'ixgc0d0f': {
      'en': 'Smooth',
      'th': 'เรียบ',
    },
    '1qf31g7d': {
      'en': '( 100 Credits )',
      'th': '( 100 หน่วยกิต )',
    },
    'x86hykqi': {
      'en': 'Ultra Smooth',
      'th': 'เรียบเนียนเป็นพิเศษ',
    },
    'hzk76ym9': {
      'en': '( 200 Credits )',
      'th': '( 200 หน่วยกิต )',
    },
    'a2t05au0': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    'jqhrhm4d': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // QR_Start
  {
    'lqst1k7w': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'w8t6fd99': {
      'en': 'QR Prompt',
      'th': 'QR พร้อมท์',
    },
    '491zgphu': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    '20pl38cc': {
      'en': ' : Add QR Code Content *',
      'th': ': เพิ่มเนื้อหา QR Code *',
    },
    'x58i76vl': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    '7j41ce41': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    'clbh7fmu': {
      'en': 'Maneki Neko',
      'th': 'มาเนกิเนโกะ',
    },
    '3fmk9b8h': {
      'en': 'Cyberpunk',
      'th': 'ไซเบอร์พังค์',
    },
    'a458zkux': {
      'en': 'Foodies',
      'th': 'นักชิม',
    },
    'szda4z5x': {
      'en': 'Galaxy',
      'th': 'กาแล็กซี',
    },
    'rin56e24': {
      'en': 'Jade Dragon',
      'th': 'มังกรหยก',
    },
    'nvsqmj0d': {
      'en': 'Joan Miro',
      'th': 'โจน มิโร',
    },
    'qf8b612h': {
      'en': 'Low Poly',
      'th': 'โพลีต่ำ',
    },
    'rtb5z5ee': {
      'en': 'Neon Camouflage',
      'th': 'ลายพรางนีออน',
    },
    'dno7dgok': {
      'en': 'Neon Sci-fi Lady',
      'th': 'นีออนไซไฟเลดี้',
    },
    'spom8nfg': {
      'en': 'Stormy Night',
      'th': 'คืนที่มีพายุ',
    },
    'b4nki6b3': {
      'en': 'Tree House',
      'th': 'บ้านต้นไม้',
    },
    '4bl5vq5v': {
      'en': 'Image description',
      'th': 'คำอธิบายรูปภาพ',
    },
    '2e87mvky': {
      'en': 'Insert keywords in English',
      'th': 'ใส่คำสำคัญเป็นภาษาอังกฤษ',
    },
    'rh9cnn08': {
      'en': 'I want to dream of ...',
      'th': 'I want to dream of ...',
    },
    '3w9u4wws': {
      'en':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    'wsn0csab': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    'e15g521q': {
      'en':
          'Remove from image. Example: color red, big objects, mountain scenes, etc.',
      'th':
          'ลบออกจากภาพ ตัวอย่าง: color red, big objects, mountain scenes, etc.',
    },
    'whic6rg5': {
      'en': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
      'th': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
    },
    'f8jhpu4z': {
      'en':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    '859s7ttt': {
      'en': 'Generate ( 6 Credits )',
      'th': 'สร้าง ( 6 หน่วยกิต )',
    },
    'u1x05isp': {
      'en': 'Upload Image',
      'th': 'อัพโหลดรูปภาพ',
    },
    '95gblhf0': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'hhzdp9hw': {
      'en': ': Add QR Code Content *',
      'th': ': เพิ่มเนื้อหา QR Code *',
    },
    'kwq5emrc': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'bivk4g7w': {
      'en': ': Upload Photos',
      'th': ': อัพโหลดรูปภาพ',
    },
    'kxl5rqbu': {
      'en': 'Background Image',
      'th': 'ภาพพื้นหลัง',
    },
    '5w5w9wom': {
      'en': 'QR Scale',
      'th': 'มาตราส่วน QR',
    },
    'gcky5c0s': {
      'en': 'Middle Logo (Optional)',
      'th': 'โลโก้กลาง (ไม่จำเป็น)',
    },
    'imvesqrw': {
      'en': 'Generate ( 60 Credits )',
      'th': 'สร้าง ( 60 หน่วยกิต )',
    },
    'tcauinlm': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // OpenAppScreen
  {
    'nzy7zcnf': {
      'en': 'Elevating Creativity Through the Power of AI.',
      'th': 'ยกระดับความคิดสร้างสรรค์ด้วยพลังของ AI',
    },
    '7yug9dw7': {
      'en':
          'Listen to the latest music releases and buy music event only using Disc. app',
      'th': 'ฟังเพลงใหม่ล่าสุดและซื้อกิจกรรมเพลงโดยใช้แผ่นดิสก์เท่านั้น แอป',
    },
    'oi7gcyle': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '7wa9jgnc': {
      'en': 'Easily create an image from scratch with our AI image',
      'th': 'สร้างภาพตั้งแต่เริ่มต้นได้อย่างง่ายดายด้วยภาพ AI ของเรา',
    },
    '0k53rj16': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'vpwopjvs': {
      'en':
          'Train your own AI model to create limitless personalized portraits',
      'th': 'ฝึกฝนโมเดล AI ของคุณเองเพื่อสร้างภาพบุคคลแบบไม่จำกัด',
    },
    'hj4vg9b1': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    '2ivryl3j': {
      'en': 'Change your video to your favorite style',
      'th': 'เปลี่ยนวิดีโอของคุณให้เป็นสไตล์ที่คุณชื่นชอบ',
    },
    '4ud2k1af': {
      'en': 'Start Generate',
      'th': 'เริ่มสร้าง',
    },
    'savhbhn2': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // exper
  {
    'yy860s1c': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Forgotpassword
  {
    'tlv7lvni': {
      'en': 'Back',
      'th': 'กลับ',
    },
    'oxcqeiqi': {
      'en': 'Forgot Password',
      'th': 'ลืมรหัสผ่าน',
    },
    'iljpt8h9': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'th':
          'เราจะส่งอีเมลพร้อมลิงก์เพื่อรีเซ็ตรหัสผ่านของคุณ โปรดป้อนอีเมลที่เชื่อมโยงกับบัญชีของคุณด้านล่าง',
    },
    '2sdtgztv': {
      'en': 'Your email address...',
      'th': 'ที่อยู่อีเมลของคุณ...',
    },
    'auq98fik': {
      'en': 'Enter your email...',
      'th': 'กรอกอีเมล์ของคุณ...',
    },
    'jczx6q44': {
      'en': 'Send Link',
      'th': 'ส่งลิ้งค์',
    },
    'vdbvm3dm': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // label60
  {
    'bwtj9qhz': {
      'en': '60',
      'th': '60',
    },
  },
  // footbar
  {
    've30jo30': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'kwsjjdqw': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'agvsm781': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    'ktxaum8l': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    '5wklw9p1': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
  },
  // uplodingguide
  {
    'sea1hok6': {
      'en': 'Uploading Guide',
      'th': 'คู่มือการอัพโหลด',
    },
    'xs0xnczp': {
      'en': 'Recomended For Best Results',
      'th': 'แนะนำเพื่อผลลัพธ์ที่ดีที่สุด',
    },
    'z2455605': {
      'en':
          '1.   Focusing on close-up selfies or portraits that feature only a single individual.',
      'th':
          '1. เน้นการถ่ายภาพเซลฟี่หรือภาพบุคคลในระยะใกล้ที่มีบุคคลเพียงคนเดียว',
    },
    'chjsvns1': {
      'en':
          '2.  Include a diverse range of backgrounds, various facial expressions, and multiple angles of the face.',
      'th':
          '2. รวมพื้นหลังที่หลากหลาย การแสดงออกทางสีหน้า และมุมต่างๆ ของใบหน้า',
    },
    '241o9vpb': {
      'en': 'Don\'t Use',
      'th': 'อย่าใช้',
    },
    'nyusm6zb': {
      'en':
          'Group or full body photos, burst shots, covered-faced, child photos, nudity.',
      'th':
          'ภาพถ่ายหมู่หรือเต็มตัว, ภาพถ่ายต่อเนื่อง, ปิดหน้า, ภาพถ่ายเด็ก, ภาพเปลือย',
    },
    'm78p8b2h': {
      'en': 'Attention',
      'th': 'ความสนใจ',
    },
    'rmfea1sw': {
      'en':
          'The AI may produce visual artifacts, change facial features, or generate images where the face is not visible.',
      'th':
          'AI อาจสร้างสิ่งประดิษฐ์ทางการมองเห็น เปลี่ยนลักษณะใบหน้า หรือสร้างภาพที่มองไม่เห็นใบหน้า',
    },
  },
  // cropImage
  {
    '18ujzwlc': {
      'en': 'Crop Image',
      'th': 'ครอบตัดรูปภาพ',
    },
    'qa9m6x2r': {
      'en':
          'Please zoom the photo to adjust to the best size, showing your head and shoulders',
      'th': 'โปรดซูมภาพเพื่อปรับขนาดให้ดีที่สุด โดยแสดงศีรษะและไหล่ของคุณ',
    },
    'evyft6it': {
      'en': 'Crop',
      'th': 'ครอบตัด',
    },
  },
  // resultgenerate
  {
    'yff5sonl': {
      'en': 'Nation',
      'th': 'ชาติ',
    },
  },
  // Videoresult
  {
    'edidf39d': {
      'en': 'Cartoon',
      'th': 'การ์ตูน',
    },
    'u1ib66n7': {
      'en': '00:02',
      'th': '00:02',
    },
    'qa0zoea5': {
      'en': '00:15',
      'th': '00:15',
    },
  },
  // qrtoggle
  {
    'sasp6a2j': {
      'en': 'Link /URL',
      'th': 'ลิงค์ /URL',
    },
    'hitiyv6x': {
      'en': 'Example : https://www.example.com/',
      'th': 'ตัวอย่าง : https://www.example.com/',
    },
    'p61scr27': {
      'en': 'https://www.example.com/my-long-url',
      'th': 'https://www.example.com/my-long-url',
    },
    '064vdh2y': {
      'en': 'QR Code',
      'th': 'คิวอาร์โค้ด',
    },
    'qrv18iiw': {
      'en': 'Upload Images',
      'th': 'อัพโหลดรูปภาพ',
    },
    '09j8l8op': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
    'kzavbmdh': {
      'en': 'Example',
      'th': 'ตัวอย่าง',
    },
  },
  // QR_Code_1
  {
    'h48qjjdg': {
      'en': 'Maneki Neko',
      'th': 'มาเนกิเนโกะ',
    },
  },
  // signinicon
  {
    'sivaokxw': {
      'en': 'Sign In',
      'th': 'เข้าสู่ระบบ',
    },
  },
  // Imageresult
  {
    'wi8d4mya': {
      'en': 'Create a space that seamlessly merges organic shapes',
      'th': 'สร้างพื้นที่ที่ผสานรูปทรงออร์แกนิกเข้าด้วยกันอย่างลงตัว',
    },
    '8tmq204r': {
      'en': 'Download',
      'th': 'ดาวน์โหลด',
    },
    '0acpismy': {
      'en': 'Image description',
      'th': 'คำอธิบายรูปภาพ',
    },
    'daktket1': {
      'en':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    'ngr7em9o': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    'w13rl5py': {
      'en':
          'EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiples, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    'hyoz44h1': {
      'en': 'Dimensions',
      'th': 'ขนาด',
    },
    'ig7uener': {
      'en': '640X640',
      'th': '640X640',
    },
    '7c7i5qm6': {
      'en': 'Created',
      'th': 'สร้าง',
    },
    '9kl66l3k': {
      'en': '05/11/2023',
      'th': '05/11/2023',
    },
  },
  // slidebar
  {
    '27y9ohxp': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    '4fvankfb': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    'xxpp0td6': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'sx4pbo47': {
      'en': '1',
      'th': '1',
    },
    'vp4jqt0k': {
      'en': '2',
      'th': '2',
    },
    'y8fj65p9': {
      'en': '3',
      'th': '3',
    },
    'czhixkcl': {
      'en': '4',
      'th': '4',
    },
    'enmlai99': {
      'en': '5',
      'th': '5',
    },
    'qgvgs4gs': {
      'en': '6',
      'th': '6',
    },
    'r9mtqoss': {
      'en': '7',
      'th': '7',
    },
    's3k54gki': {
      'en': '8',
      'th': '8',
    },
    'pwf34jas': {
      'en': '9',
      'th': '9',
    },
  },
  // gallery
  {
    'vt7w39k7': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    'xzwajxt0': {
      'en': '~2 min',
      'th': '~2 นาที',
    },
    'm8lljh53': {
      'en': 'Generating...',
      'th': 'กำลังสร้าง...',
    },
    '2wh65zu7': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'ssejxo6q': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    '0w7636ue': {
      'en': 'Generating...',
      'th': 'กำลังสร้าง...',
    },
    '42sh4p4l': {
      'en': '~60 min',
      'th': '~60 นาที',
    },
    'zegvkznd': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    't1mh6kcx': {
      'en': 'AI portrait',
      'th': 'ภาพเหมือนของเอไอ',
    },
    'clp8uj6i': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    'tapgaa06': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
  },
  // buttongroup_1
  {
    'zfgqbfxi': {
      'en': 'Download',
      'th': 'ดาวน์โหลด',
    },
  },
  // buttongroup_2
  {
    'rbh8sny6': {
      'en': 'My Pictures',
      'th': 'รูปภาพของฉัน',
    },
    'b3mptfhp': {
      'en': 'Download All',
      'th': 'ดาวน์โหลดทั้งหมด',
    },
  },
  // card
  {
    'yitq3k9b': {
      'en': 'NA',
      'th': 'นา',
    },
    'om12b3m9': {
      'en': 'John Smith',
      'th': 'จอห์นสมิ ธ',
    },
    '4c8rhvol': {
      'en': '60',
      'th': '60',
    },
    'csrbfjr1': {
      'en': 'Buy Credit',
      'th': 'ซื้อเครดิต',
    },
  },
  // tabbar
  {
    '9mcftlua': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    'ey2ii5pn': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'unj4zim0': {
      'en': 'AI portrait',
      'th': 'ภาพเหมือนของเอไอ',
    },
    'zxesm7qp': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    'yh3v81af': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
  },
  // pageview
  {
    'c5xnegfs': {
      'en': 'Elevating Creativity Through the Power of AI.',
      'th': 'ยกระดับความคิดสร้างสรรค์ด้วยพลังของ AI',
    },
    'f59ilcd9': {
      'en':
          'Listen to the latest music releases and buy music event only using Disc. app',
      'th': 'ฟังเพลงใหม่ล่าสุดและซื้อกิจกรรมเพลงโดยใช้แผ่นดิสก์เท่านั้น แอป',
    },
    'a1pemtg8': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'vfgyn5xd': {
      'en': 'Easily create an image from scratch with our AI image',
      'th': 'สร้างภาพตั้งแต่เริ่มต้นได้อย่างง่ายดายด้วยภาพ AI ของเรา',
    },
    '1kiogx7a': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'fgxp6qur': {
      'en':
          'Train your own AI model to create limitless personalized portraits',
      'th': 'ฝึกฝนโมเดล AI ของคุณเองเพื่อสร้างภาพบุคคลแบบไม่จำกัด',
    },
    '2brcooge': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    '6ducqbc1': {
      'en': 'Change your video to your favorite style',
      'th': 'เปลี่ยนวิดีโอของคุณให้เป็นสไตล์ที่คุณชื่นชอบ',
    },
  },
  // uploadbutton
  {
    'txzummh5': {
      'en': 'Upload Images',
      'th': 'อัพโหลดรูปภาพ',
    },
    '54pvszqt': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
  },
  // uploadvideobutton
  {
    'yjsp19vf': {
      'en': 'Upload Videos',
      'th': 'อัปโหลดวิดีโอ',
    },
    'efgv49la': {
      'en': 'File types : MP4/MOV/HEVC, maximum size : 40 MB',
      'th': 'ประเภทไฟล์ : MP4/MOV/HEVC ขนาดสูงสุด : 40 MB',
    },
  },
  // googlesignin
  {
    'n1rj6vvv': {
      'en': 'Sign in with Google',
      'th': 'ลงชื่อเข้าใช้งานด้วย Google',
    },
  },
  // Miscellaneous
  {
    'n2ygup46': {
      'en': '',
      'th': '',
    },
    'z8r5e1ib': {
      'en': '',
      'th': '',
    },
    'vvpphrm0': {
      'en': '',
      'th': '',
    },
    'cmgzhaac': {
      'en': '',
      'th': '',
    },
    'f1tm4cnp': {
      'en': '',
      'th': '',
    },
    '8pm8ua99': {
      'en': '',
      'th': '',
    },
    'rrzhs39r': {
      'en': '',
      'th': '',
    },
    'rsknakjb': {
      'en': '',
      'th': '',
    },
    'fmet5z4q': {
      'en': '',
      'th': '',
    },
    '95buj3fy': {
      'en': '',
      'th': '',
    },
    '49invapn': {
      'en': '',
      'th': '',
    },
    'm5qp7nqi': {
      'en': '',
      'th': '',
    },
    'xqbh6to2': {
      'en': '',
      'th': '',
    },
    'axd0gdob': {
      'en': '',
      'th': '',
    },
    'g3dtloob': {
      'en': '',
      'th': '',
    },
    '6z53bz6m': {
      'en': '',
      'th': '',
    },
    'ffqucp6t': {
      'en': '',
      'th': '',
    },
    'jl5bwyqq': {
      'en': '',
      'th': '',
    },
    'chw23tyr': {
      'en': '',
      'th': '',
    },
    'mckmn6oe': {
      'en': '',
      'th': '',
    },
    'jjex2wpk': {
      'en': '',
      'th': '',
    },
    'a9i2jdx5': {
      'en': '',
      'th': '',
    },
    'm76f7dtt': {
      'en': '',
      'th': '',
    },
    '16cxegel': {
      'en': '',
      'th': '',
    },
    '3lckvfpb': {
      'en': '',
      'th': '',
    },
    'f2frcujt': {
      'en': '',
      'th': '',
    },
  },
].reduce((a, b) => a..addAll(b));
