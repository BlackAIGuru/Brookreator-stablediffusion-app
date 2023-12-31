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
  // Buy_Credit
  {
    'h28j8xmv': {
      'en': 'Buy Credit',
      'th': 'ซื้อเครดิต',
    },
    'eny13uby': {
      'en': '60',
      'th': '60',
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
    'sbcpsa53': {
      'en': 'NA',
      'th': 'นา',
    },
    'l8qcogmt': {
      'en': 'Buy Credit',
      'th': 'ซื้อเครดิต',
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
    'hojft2la': {
      'en': 'Sign In',
      'th': 'สร้างบัญชี',
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
      'th': 'ต้องระบุข้อมูล',
    },
    'zd21aq1o': {
      'en': 'Invalid Email',
      'th': 'อีเมลไม่ถูกต้อง',
    },
    'v50e81j4': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
    },
    '45rftazb': {
      'en': 'Field is required',
      'th': 'ต้องระบุข้อมูล',
    },
    '6hu1espu': {
      'en': 'Password should contain at least 6 characters',
      'th': 'รหัสผ่านควรมีอย่างน้อย 6 ตัวอักษร',
    },
    '7btabel9': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
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
    'ofmksrx0': {
      'en': 'Sign Up with Google',
      'th': 'ลงทะเบียนกับ Google',
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
      'th': 'ต้องระบุข้อมูล',
    },
    'w899uhnf': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
    },
    '0zanvz29': {
      'en': 'Field is required',
      'th': 'ต้องระบุข้อมูล',
    },
    'ht35x53h': {
      'en': 'Invalid Email',
      'th': 'อีเมลไม่ถูกต้อง',
    },
    'a3a3t8ok': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
    },
    'vkkx3eqh': {
      'en': 'Field is required',
      'th': 'ต้องระบุข้อมูล',
    },
    'qltl6zk3': {
      'en': 'Password should contain at least 6 characters',
      'th': 'รหัสผ่านควรมีอย่างน้อย 6 ตัวอักษร',
    },
    'jrvvbq55': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
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
    'ioov88pm': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    'gwe9hta7': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'gzyrgr19': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    '5mriddn4': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    '8cs7u4wp': {
      'en': 'Preview',
      'th': 'ดูตัวอย่าง',
    },
    'p8t3sdsk': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    've1v279f': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    'yfss128c': {
      'en': '~2 min',
      'th': '~2 นาที',
    },
    'bom45ihn': {
      'en': 'Generating...',
      'th': 'กำลังสร้าง...',
    },
    'fd4h3h20': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'v29c2cfq': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    'bt3ob9v1': {
      'en': 'Generating...',
      'th': 'กำลังสร้าง...',
    },
    'vd2zsndk': {
      'en': '~60 min',
      'th': '~60 นาที',
    },
    '91810kkp': {
      'en': 'Favourite',
      'th': 'ที่ชื่นชอบ',
    },
    '2dt9z681': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    '7v7oiah1': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '56hvvyky': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'hhz4pioz': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    'lmuyi4r5': {
      'en': 'Preview',
      'th': 'ดูตัวอย่าง',
    },
    'wgdmalu7': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    '95fzlw6b': {
      'en': 'All',
      'th': 'ทั้งหมด',
    },
    'fzywfdlv': {
      'en': 'My Picture',
      'th': 'รูปของฉัน',
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
  // T2I_Start
  {
    '0hp2lrj7': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '5seit9sf': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    '951d25qe': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    'gpa8i6f4': {
      'en': 'None',
      'th': 'ไม่มี',
    },
    'zlatdqqt': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'gt76liza': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    '94igcqkl': {
      'en': 'Ancient-Ruins',
      'th': 'ซากปรักหักพังโบราณ',
    },
    'wkr608cc': {
      'en': 'Aquatic Sci-Fi',
      'th': 'ไซไฟทางน้ำ',
    },
    '2a71nfmp': {
      'en': 'Bedroom in Rome',
      'th': 'ห้องนอนในโรม',
    },
    'e2fgs95o': {
      'en': 'Birthday Cat',
      'th': 'วันเกิดแมว',
    },
    'geprm2q0': {
      'en': 'Christmas',
      'th': 'คริสต์มาส',
    },
    'nbb8tt61': {
      'en': 'Dreamy Globe',
      'th': 'ลูกโลกแห่งความฝัน',
    },
    'hxm15gvm': {
      'en': 'Futuristic Car',
      'th': 'รถยนต์แห่งอนาคต',
    },
    '1d8x97v8': {
      'en': 'Hunter',
      'th': 'ฮันเตอร์',
    },
    '54gjq6kh': {
      'en': 'Lazy Peach',
      'th': 'ขี้เกียจพีช',
    },
    'miqgqskx': {
      'en': 'Lunar Year',
      'th': 'ปีจันทรคติ',
    },
    '9837zd13': {
      'en': 'Prototype Sketch',
      'th': 'ร่างต้นแบบ',
    },
    'cgqm1p4h': {
      'en': 'Rainbow Hoodie',
      'th': 'เสื้อฮู้ดสีรุ้ง',
    },
    'brfu1dnu': {
      'en': 'Space Explorer',
      'th': 'นักสำรวจอวกาศ',
    },
    'sisc6cpl': {
      'en': 'Thai Contemporary',
      'th': 'ไทยร่วมสมัย',
    },
    'gvd8wu74': {
      'en': 'Utopia',
      'th': 'ยูโทเปีย',
    },
    'rcw70yfk': {
      'en': 'Watercolor',
      'th': 'สีน้ำ',
    },
    'pkqqb29l': {
      'en': 'Wonderland',
      'th': 'วันเดอร์แลนด์',
    },
    'ur4lavo0': {
      'en': 'Homey Café',
      'th': 'โฮมมีคาเฟ่',
    },
    '1q3vi1ml': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'dtmyerw2': {
      'en': ' : Image description',
      'th': ': คำอธิบายรูปภาพ',
    },
    'oa666tkv': {
      'en': 'Insert keywords in English',
      'th': 'ใส่คำสำคัญเป็นภาษาอังกฤษ',
    },
    'rxztyixl': {
      'en': 'I want to dream of ...',
      'th': 'I want to dream of ...',
    },
    'p3am17de': {
      'en':
          'a blonde woman biker in a black leather jacket and white tank top inside in a style of comic animation, colourful, chroma aberration, realism, romanticism, retro high saturated colour, Leica prime lenses, retro-futuristic',
      'th':
          'Create a space that seamlessly merges organic shapes, natural materials, and a soft color palette to transport customers into a zen-like atmosphere perfect for deep conversations over exquisite coffee',
    },
    'w5pcslz9': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
    },
    'e8q8ratg': {
      'en':
          'Remove from image. Example: color red, big objects, mountain scenes, etc.',
      'th': 'ลบออกจากภาพ ตัวอย่าง: สีแดง วัตถุขนาดใหญ่ ฉากภูเขา ฯลฯ',
    },
    '30l2s20c': {
      'en': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
      'th': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
    },
    'k4yhyr2o': {
      'en':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
      'th':
          'EasyNegative, multiple bodies, extra arms, extra legs, distorted, ugly, unrealistic, duplicate, deform, extra, Deep Negative, bad_prompt_version2, bad-artist, bad-artist-anime, bad-quality, nudity, nsfw',
    },
    '5xre5825': {
      'en': 'Aspect Ratio',
      'th': 'อัตราส่วนภาพ',
    },
    'fairv7mt': {
      'en': 'Images generated with different ratios may appear different.',
      'th': 'รูปภาพที่สร้างด้วยอัตราส่วนที่ต่างกันอาจดูแตกต่างออกไป',
    },
    '9gw34sie': {
      'en': 'Square (1:1)',
      'th': 'สี่เหลี่ยมจัตุรัส (1:1)',
    },
    'dw71q0x6': {
      'en': 'Mobile (9:16)',
      'th': 'มือถือ (9:16)',
    },
    '8hrpdbnk': {
      'en': ' Portrait (3:4)',
      'th': 'แนวตั้ง (3:4)',
    },
    'l9zu23o8': {
      'en': 'Desktop (16:9)',
      'th': 'เดสก์ท็อป (16:9)',
    },
    'n7wu58jj': {
      'en': 'Landscape (4:3)',
      'th': 'ทิวทัศน์ (4:3)',
    },
    '35l3lhcj': {
      'en': 'Resize manually',
      'th': 'ปรับขนาดด้วยตนเอง',
    },
    'bcjm1o9k': {
      'en': 'Width (px)',
      'th': 'ความกว้าง (พิกเซล)',
    },
    'iyh29fah': {
      'en': 'The width of the generated image.',
      'th': 'ความกว้างของรูปภาพที่สร้างขึ้น',
    },
    '02tul0x0': {
      'en': '',
      'th': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
    },
    '2nhukpmo': {
      'en': '1024',
      'th': '',
    },
    'qmel9n5q': {
      'en': 'Height (px)',
      'th': 'ความสูง (พิกเซล)',
    },
    'w8ywkcs2': {
      'en': 'The heigth of the generated image.',
      'th': 'ความสูงของรูปภาพที่สร้างขึ้น',
    },
    '9xkvvy9m': {
      'en': '',
      'th': '2 heads, 2 faces, ugly, tiling, poorly drawn hands..',
    },
    '11pyz6zz': {
      'en': '1024',
      'th': '',
    },
    '76nh3gbv': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'q7x1t5zz': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    'lxwy2251': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'pjczq5uk': {
      'en': '1',
      'th': '1',
    },
    'v87x5m8u': {
      'en': '2',
      'th': '2',
    },
    'xrdcwuhx': {
      'en': '3',
      'th': '3',
    },
    'wxfdtt8z': {
      'en': '4',
      'th': '4',
    },
    'grqm87ra': {
      'en': '5',
      'th': '5',
    },
    '33xy6n2y': {
      'en': '6',
      'th': '6',
    },
    'diw6boqg': {
      'en': '7',
      'th': '7',
    },
    'jjn4jo0c': {
      'en': '8',
      'th': '8',
    },
    '42xmirxf': {
      'en': '9',
      'th': '9',
    },
    'f61rugif': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // AIPortrait_Start
  {
    'b2phjhxr': {
      'en': 'AI Portrait',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '8cnbq8m0': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'jm8982ch': {
      'en': ' : Select Style',
      'th': ': เลือกสไตล์',
    },
    '6pkurzrn': {
      'en': 'Korean',
      'th': 'เกาหลี',
    },
    '2f39eesg': {
      'en': 'Anime',
      'th': 'อะนิเมะ',
    },
    'kgq5f8kl': {
      'en': 'Retro',
      'th': 'ย้อนยุค',
    },
    'awkbn8ct': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    '0gqrjxw6': {
      'en': ' : Generate Image',
      'th': ': สร้างภาพ',
    },
    'fww31o1t': {
      'en': 'Model Name',
      'th': 'ชื่อรุ่น',
    },
    '32i9wk82': {
      'en': '',
      'th': '',
    },
    'z75fk30w': {
      'en': 'E.g. (Alice, Belle, Emma01)',
      'th': 'E.g. (Alice, Belle, Emma01)',
    },
    'qtfbkqbr': {
      'en': 'Model1',
      'th': 'รุ่น1',
    },
    'w8ntgc3p': {
      'en': 'Upload',
      'th': 'ที่อัพโหลด',
    },
    'zbq9e46r': {
      'en': ' 0 / 10 ',
      'th': '0 / 12',
    },
    '1ri98sei': {
      'en': 'images',
      'th': 'ภาพ',
    },
    '6387pz0w': {
      'en': 'Please select 12 photos of your face to build model.',
      'th': 'โปรดเลือกรูปถ่ายใบหน้าของคุณ 12 รูปเพื่อสร้างแบบจำลอง',
    },
    '56xppndv': {
      'en': 'Uploading Guide',
      'th': 'คู่มือการอัพโหลด',
    },
    '7k4iwh6m': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'l1oiyn09': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    '76k815id': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'u1j6c0s1': {
      'en': '1',
      'th': '1',
    },
    'mxnsc2ig': {
      'en': '2',
      'th': '2',
    },
    'k7etqetw': {
      'en': '3',
      'th': '3',
    },
    'kbe2gd23': {
      'en': '4',
      'th': '4',
    },
    '1otpdeoi': {
      'en': '5',
      'th': '5',
    },
    '2utoeuqc': {
      'en': '6',
      'th': '6',
    },
    'eo4a5fyx': {
      'en': '7',
      'th': '7',
    },
    '2m7l8a0c': {
      'en': '8',
      'th': '8',
    },
    'pvbme7ut': {
      'en': '9',
      'th': '9',
    },
    'oltds1oq': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // AIVideo_Start
  {
    'niine03l': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    'yjtqew0f': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    'a8hmgrii': {
      'en': ' : Select Style',
      'th': ': เลือกสไตล์',
    },
    'f7v57dti': {
      'en': 'AI Face',
      'th': 'เอไอ ใบหน้า',
    },
    'hipug6o7': {
      'en': 'Coming Soon..',
      'th': 'เร็วๆ นี้..',
    },
    '09ww8asw': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    's2kar2qj': {
      'en': ' : Upload Video',
      'th': ': อัพโหลดวิดีโอ',
    },
    'zmxmgdz1': {
      'en': '*',
      'th': '*',
    },
    '1yd0rs56': {
      'en': 'Video duration is limited to 15 seconds.',
      'th': 'ระยะเวลาของวิดีโอจำกัดอยู่ที่ 15 วินาที',
    },
    '7n77pygb': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'tyb4yu5y': {
      'en': ' : Select Format Type',
      'th': ': เลือกประเภทรูปแบบ',
    },
    'r6yxvw9w': {
      'en': 'Flipbook',
      'th': 'ฟลิปบุ๊ค',
    },
    'vckl0hak': {
      'en': '( 30 Credits )',
      'th': '( 30 หน่วยกิต )',
    },
    'mzzl721a': {
      'en': 'Video',
      'th': 'วีดีโอ',
    },
    'bky6xqnc': {
      'en': '( 100 Credits )',
      'th': '( 100 หน่วยกิต )',
    },
    '2oa3mnak': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // HomePage
  {
    '3qy9pnrm': {
      'en': 'NA',
      'th': 'นา',
    },
    'hw4sbdug': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'rnkl4zuv': {
      'en': 'Easily create an image from scratch with our AI image',
      'th': 'สร้างภาพตั้งแต่เริ่มต้นได้อย่างง่ายดายด้วยภาพ AI ของเรา',
    },
    'tnd0y4hi': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'bn63l9zb': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    '2gndfmdr': {
      'en':
          'Train your own AI model to create limitless personalized portraits',
      'th': 'ฝึกฝนโมเดล AI ของคุณเองเพื่อสร้างภาพบุคคลแบบไม่จำกัด',
    },
    '2tlrq4by': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'sqxb1gn8': {
      'en': 'AI Video (15 sec)',
      'th': 'วิดีโอ AI (15 วินาที)',
    },
    'q17i1gr8': {
      'en': 'Change your video to your favorite style',
      'th': 'เปลี่ยนวิดีโอของคุณให้เป็นสไตล์ที่คุณชื่นชอบ',
    },
    'z91d4som': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'rny1p1w4': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    '9zx60eyq': {
      'en': 'Create custom QR Codes interated with any image you want!',
      'th': 'สร้างรหัส QR ที่กำหนดเองโดยเชื่อมโยงกับภาพที่คุณต้องการ!',
    },
    'p5eawhku': {
      'en': 'Try Now',
      'th': 'ลองตอนนี้',
    },
    'kf94v934': {
      'en': 'Templates Generate',
      'th': 'เทมเพลตสร้าง',
    },
    '3cupmxtp': {
      'en': 'For You',
      'th': 'สำหรับคุณ',
    },
    'v2eu0wg4': {
      'en': 'Flower Field',
      'th': 'ทุ่งดอกไม้',
    },
    'ej1jbw9i': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'tc3qsdn0': {
      'en': 'Korean',
      'th': 'เกาหลี',
    },
    'mzszpdgc': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    'zug1j5i1': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'ypweb8au': {
      'en': 'Joan Miro',
      'th': 'นีออนไซไฟเลดี้',
    },
    'cg1nucuy': {
      'en': 'Rainbow',
      'th': 'รุ้ง',
    },
    '3jtwhlml': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '31dnrm0e': {
      'en': 'Cartoon',
      'th': 'การ์ตูน',
    },
    'd9b2hdum': {
      'en': 'AI Video',
      'th': 'วิดีโอเอไอ',
    },
    '7hsrk3o4': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'esabicih': {
      'en': 'Foodies',
      'th': 'นีออนไซไฟเลดี้',
    },
    '1akpklqt': {
      'en': 'Anime',
      'th': 'อะนิเมะ',
    },
    'duzddpfs': {
      'en': 'AI Portrait',
      'th': 'ภาพบุคคล AI',
    },
    '9742e68l': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '7bvw1v7o': {
      'en': 'Biker',
      'th': 'ไบค์เกอร์',
    },
    'g6u3wekh': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'kclgdo2a': {
      'en': 'Neon Sci-fi Lady',
      'th': 'นีออนไซไฟเลดี้',
    },
    'slbi4hrd': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'vn2f2j11': {
      'en': 'Lunar Year',
      'th': 'ปีจันทรคติ',
    },
    'g8ayiz4i': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'v3owgbjd': {
      'en': 'Cyberpunk',
      'th': 'นีออนไซไฟเลดี้',
    },
    'wby7hhqy': {
      'en': 'Homey Cafe​',
      'th': 'โฮมมี คาเฟ่',
    },
    '8tbgq2vk': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'ox1wxvb8': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    '8vctzokp': {
      'en': 'Galaxy',
      'th': 'นีออนไซไฟเลดี้',
    },
    '0jk502pd': {
      'en': 'Text to Image',
      'th': 'เครื่องกำเนิด QR',
    },
    '8d1ox130': {
      'en': 'Birthday Cat',
      'th': 'วันเกิดแมว',
    },
    'aje5d39z': {
      'en': 'Peach',
      'th': 'ลูกพีช',
    },
    'vpb1hyex': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    '5abp87fo': {
      'en': 'Aquatic Sci-Fi',
      'th': 'ไซไฟทางน้ำ',
    },
    'a85ymd5o': {
      'en': 'Text to Image',
      'th': 'ข้อความเป็นรูปภาพ',
    },
    'j432knps': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'hznb4esn': {
      'en': 'Maneki Neko',
      'th': 'นีออนไซไฟเลดี้',
    },
    'fh5zwrd2': {
      'en': 'Halloween',
      'th': 'วันฮาโลวีน',
    },
    '1q8bvor6': {
      'en': 'Christmas',
      'th': 'คริสต์มาส',
    },
    'hgi9ic1s': {
      'en': 'Studio',
      'th': 'สตูดิโอ',
    },
    'y2t86e04': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // QR_Start
  {
    'sungsi2p': {
      'en': 'QR Generator',
      'th': 'เครื่องกำเนิด QR',
    },
    'n0bbyej0': {
      'en': 'QR Prompt',
      'th': 'QR พร้อมท์',
    },
    'o0fm6iw7': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    '5c0ioexz': {
      'en': ' : Add QR Code Content',
      'th': ': เพิ่มเนื้อหารหัส QR',
    },
    'attkeg0p': {
      'en': '*',
      'th': '*',
    },
    'b5rn2x2g': {
      'en': 'Link /URL',
      'th': 'ลิงค์ /URL',
    },
    'fgx0zqza': {
      'en': 'Example : https://www.example.com/',
      'th': 'ตัวอย่าง : https://www.example.com/',
    },
    '5lb768i4': {
      'en': 'https://www.example.com/my-long-url',
      'th': 'https://www.example.com/my-long-url',
    },
    'c0ps9n3t': {
      'en': 'Field is required',
      'th': 'ต้องระบุข้อมูล',
    },
    'xsnj5w6b': {
      'en': 'URL not correct',
      'th': 'URL ไม่ถูกต้อง',
    },
    'hg4wot5q': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
    },
    't8fefs0j': {
      'en': 'QR Code',
      'th': 'คิวอาร์โค้ด',
    },
    'zn7soqjk': {
      'en': 'Upload QR Code',
      'th': 'อัปโหลดรหัส QR',
    },
    'z4u6h1n3': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
    'aimxo22s': {
      'en': 'Example',
      'th': 'ตัวอย่าง',
    },
    '4tq01134': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'xrrbwvd0': {
      'en': ' : Select a Theme',
      'th': ': เลือกธีม',
    },
    'rppvmpz1': {
      'en': 'Maneki Neko',
      'th': 'มาเนกิเนโกะ',
    },
    'r5p42o3t': {
      'en': 'Cyberpunk',
      'th': 'ไซเบอร์พังค์',
    },
    '5wtqlnhx': {
      'en': 'Foodies',
      'th': 'นักชิม',
    },
    'h5eltghm': {
      'en': 'Galaxy',
      'th': 'กาแล็กซี',
    },
    'ht46acdk': {
      'en': 'Jade Dragon',
      'th': 'มังกรหยก',
    },
    'y682i2e0': {
      'en': 'Joan Miro',
      'th': 'โจน มิโร',
    },
    'v857fnso': {
      'en': 'Low Poly',
      'th': 'โพลีต่ำ',
    },
    '6esrnnjl': {
      'en': 'Neon Camouflage',
      'th': 'ลายพรางนีออน',
    },
    'kwmp5ptl': {
      'en': 'Neon Sci-fi Lady',
      'th': 'นีออนไซไฟเลดี้',
    },
    'ol38910z': {
      'en': 'Stormy Night',
      'th': 'คืนที่มีพายุ',
    },
    'z9vhjtir': {
      'en': 'Tree House',
      'th': 'บ้านต้นไม้',
    },
    'jopnxlej': {
      'en': 'Step 3',
      'th': 'ขั้นตอนที่ 3',
    },
    'tn0nmnap': {
      'en': ' : Number of Images',
      'th': ': จำนวนภาพ',
    },
    'd4e8xek1': {
      'en': 'Select number of images to generate.',
      'th': 'เลือกจำนวนภาพที่จะสร้าง',
    },
    'ntvyc8zd': {
      'en': '1',
      'th': '1',
    },
    '923lmtzc': {
      'en': '2',
      'th': '2',
    },
    'iul1pq9b': {
      'en': '3',
      'th': '3',
    },
    'o297erv6': {
      'en': '4',
      'th': '4',
    },
    'e4ice0ya': {
      'en': '5',
      'th': '5',
    },
    '7wprmfq3': {
      'en': '6',
      'th': '6',
    },
    'mk6jvg0b': {
      'en': '7',
      'th': '7',
    },
    'r2jwnf0s': {
      'en': '8',
      'th': '8',
    },
    'ty4ton5i': {
      'en': '9',
      'th': '9',
    },
    'muhcqo9z': {
      'en': 'Generate',
      'th': 'สร้าง',
    },
    '3kqyfyvy': {
      'en': 'Upload Image',
      'th': 'อัพโหลดรูปภาพ',
    },
    'byyluvi8': {
      'en': 'Step 1',
      'th': 'ขั้นตอนที่ 1',
    },
    '6mt6i1q1': {
      'en': ' : Add QR Code Content',
      'th': ': เพิ่มเนื้อหารหัส QR',
    },
    'kcvj0gs8': {
      'en': '*',
      'th': '*',
    },
    'gnurfvxj': {
      'en': 'Link /URL',
      'th': 'ลิงค์ /URL',
    },
    '6ji7vegj': {
      'en': 'Example : https://www.example.com/',
      'th': 'ตัวอย่าง : https://www.example.com/',
    },
    'pbueixs6': {
      'en': 'https://www.example.com/my-long-url',
      'th': 'https://www.example.com/my-long-url',
    },
    'tizrmshi': {
      'en': 'Field is required',
      'th': 'ต้องระบุข้อมูล',
    },
    '7ww4ggwo': {
      'en': 'URL not correct',
      'th': 'URL ไม่ถูกต้อง',
    },
    'nou9f13h': {
      'en': 'Please choose an option from the dropdown',
      'th': 'โปรดเลือกตัวเลือกจากเมนูแบบเลื่อนลง',
    },
    'jp6fjse7': {
      'en': 'QR Code',
      'th': 'คิวอาร์โค้ด',
    },
    'y06z8i14': {
      'en': 'Upload QR Code',
      'th': 'อัปโหลดรหัส QR',
    },
    'y1296ksn': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
    'yutr9l0r': {
      'en': 'Example',
      'th': 'ตัวอย่าง',
    },
    '716c3tpw': {
      'en': 'Step 2',
      'th': 'ขั้นตอนที่ 2',
    },
    'bspx675x': {
      'en': ' : Upload Photos',
      'th': ': อัพโหลดรูปภาพ',
    },
    '2zj20ysx': {
      'en': 'Background Image',
      'th': 'ภาพพื้นหลัง',
    },
    'ty6h3aka': {
      'en': 'Upload Background',
      'th': 'อัพโหลดพื้นหลัง',
    },
    'khr69jq2': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
    'rbtfccaa': {
      'en': 'QR Scale',
      'th': 'มาตราส่วน QR',
    },
    'oyajr8ai': {
      'en': 'Middle Logo (Optional)',
      'th': 'โลโก้กลาง (ไม่จำเป็น)',
    },
    'gr4nh9g7': {
      'en': 'Upload Logo',
      'th': 'อัพโหลดโลโก้',
    },
    '181b71mp': {
      'en': 'File types : PNG/JPG, maximum size : 8 MB',
      'th': 'ประเภทไฟล์ : PNG/JPG ขนาดสูงสุด : 8 MB',
    },
    'wlrwielk': {
      'en': 'Generate',
      'th': 'สร้าง',
    },
    'vhjv3b3z': {
      'en': 'Home',
      'th': 'บ้าน',
    },
  },
  // Email_Verify
  {
    '0b80se8z': {
      'en': 'Verification Code',
      'th': 'สร้างบัญชี',
    },
    '7lca2frp': {
      'en': 'Enter the 6 digits code that you received on your e-mail',
      'th': '',
    },
    'tlry5c9v': {
      'en': 'Confirm',
      'th': 'ส่งลิ้งค์',
    },
    'tjalbxdh': {
      'en': 'Resend Code',
      'th': '',
    },
    'szu0s2bz': {
      'en': 'Home',
      'th': '',
    },
  },
  // Forgotpassword
  {
    'eu4hhnov': {
      'en': 'Forgot Password',
      'th': 'สร้างบัญชี',
    },
    'vg6g2lyd': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'th': '',
    },
    'zagqpa3u': {
      'en': 'Your email address...',
      'th': 'ที่อยู่อีเมลของคุณ...',
    },
    'tj49zhbh': {
      'en': 'Enter your email...',
      'th': 'กรอกอีเมล์ของคุณ...',
    },
    'a8f6j3tt': {
      'en': 'Send Link',
      'th': 'ส่งลิ้งค์',
    },
    '7pej2o29': {
      'en': 'Home',
      'th': '',
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
  // cropimage
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
    '0acpismy': {
      'en': 'Image description',
      'th': 'คำอธิบายรูปภาพ',
    },
    'ngr7em9o': {
      'en': 'Unwanted Keywords (Optional)',
      'th': 'คำหลักที่ไม่ต้องการ (ไม่บังคับ)',
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
      'en': 'AI Portrait',
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
    'g7t24qde': {
      'en': 'matthewbadertscher@gmail.com',
      'th': '',
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
      'en': 'Upload Video',
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
  // imagesize
  {
    '8zjuhx80': {
      'en': 'Width (px)',
      'th': 'ความกว้าง (พิกเซล)',
    },
    '2cup3of9': {
      'en': 'The width of the generated image.',
      'th': 'ความกว้างของรูปภาพที่สร้างขึ้น',
    },
    '33ny2oqd': {
      'en': '1024',
      'th': '',
    },
    'ju5c4eza': {
      'en': 'Height (px)',
      'th': 'ความสูง (พิกเซล)',
    },
    'fpjsyedb': {
      'en': 'The heigth of the generated image.',
      'th': 'ความสูงของรูปภาพที่สร้างขึ้น',
    },
    'irr48n1w': {
      'en': '1024',
      'th': '',
    },
  },
  // credit
  {
    '6x8qo4eu': {
      'en': '60',
      'th': '60',
    },
  },
  // deleteimage
  {
    'ca0h5lq6': {
      'en': 'Are you sure?',
      'th': 'คุณแน่ใจไหม?',
    },
    'wn1lrolc': {
      'en': 'Delete',
      'th': 'ลบ',
    },
    'wl011z39': {
      'en': 'Cancel',
      'th': 'ยกเลิก',
    },
  },
  // Miscellaneous
  {
    'n2ygup46': {
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
      'th': 'ในการถ่ายภาพหรือวิดีโอ แอปนี้ต้องได้รับสิทธิ์ในการเข้าถึงกล้อง',
    },
    'z8r5e1ib': {
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
      'th':
          'ในการอัปโหลดข้อมูล แอปนี้ต้องได้รับสิทธิ์ในการเข้าถึงไลบรารีรูปภาพ',
    },
    'vvpphrm0': {
      'en':
          'In order to record audio for video, this app requires permission to access the microphone.',
      'th':
          'หากต้องการบันทึกเสียงสำหรับวิดีโอ แอปนี้ต้องได้รับสิทธิ์ในการเข้าถึงไมโครโฟน',
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
