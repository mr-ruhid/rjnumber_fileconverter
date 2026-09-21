class PhoneUtils {
  PhoneUtils._();

  /// Dəstəklənən ölkə kodları (uzundan qısaya doğru sıralanıb)
  static const List<String> _countryCodes = [
    '994', // Azərbaycan
    '995', // Gürcüstan
    '374', // Ermənistan
    '380', // Ukrayna
    '880', // Banqladeş
    '351', // Portuqaliya
    '234', // Nigeriya
    '254', // Keniya
    '255', // Tanzaniya
    '972', // İsrail
    '964', // İraq
    '90',  // Türkiyə
    '92',  // Pakistan
    '91',  // Hindistan
    '86',  // Çin
    '81',  // Yaponiya
    '82',  // Cənubi Koreya
    '84',  // Vyetnam
    '66',  // Tailand
    '63',  // Filippin
    '62',  // İndoneziya
    '60',  // Malayziya
    '98',  // İran
    '44',  // Birləşmiş Krallıq
    '49',  // Almaniya
    '48',  // Polşa
    '40',  // Rumıniya
    '39',  // İtaliya
    '34',  // İspaniya
    '33',  // Fransa
    '31',  // Niderland
    '27',  // Cənubi Afrika
    '20',  // Misir
    '55',  // Braziliya
    '54',  // Argentina
    '52',  // Meksika
    '7',   // Rusiya / Qazaxıstan
    '1',   // ABŞ / Kanada
  ];

  static String clean(String raw) {
    var phone = raw.trim();

    // Excel "float" artefaktını sil (1123456789.0 → 1123456789)
    if (phone.endsWith('.0')) {
      phone = phone.substring(0, phone.length - 2);
    }

    // Yalnız rəqəm və + işarəsini saxla
    phone = phone.replaceAll(RegExp(r'[^\d+]'), '');

    if (phone.isEmpty) return phone;

    // + varsa, onu yalnız ən əvvələ yerləşdir
    if (phone.contains('+')) {
      phone = phone.replaceAll('+', '');
      phone = '+$phone';
    } else if (phone.length >= 11) {
      // + yoxdursa və nömrə uzundursa, ölkə kodunu axtar və + əlavə et
      for (final code in _countryCodes) {
        if (phone.startsWith(code) && phone.length - code.length >= 7) {
          phone = '+$phone';
          break;
        }
      }
    }

    // 9 rəqəmli yerli nömrəyə əvvəlinə 0 əlavə et (Azərbaycan formatı)
    if (phone.length == 9 &&
        !phone.startsWith('0') &&
        !phone.startsWith('+')) {
      phone = '0$phone';
    }

    return phone;
  }

  static bool isValid(String phone) {
    final digits = phone.replaceAll('+', '');
    return phone.isNotEmpty && digits.length >= 7;
  }
}