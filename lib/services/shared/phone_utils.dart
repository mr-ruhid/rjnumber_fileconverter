class PhoneUtils {
  PhoneUtils._();

  static String clean(String raw) {
    var phone = raw.trim();

    if (phone.endsWith('.0')) {
      phone = phone.substring(0, phone.length - 2);
    }

    phone = phone.replaceAll(RegExp(r'[^\d+]'), '');

    if (phone.isEmpty) return phone;

    if (phone.length == 9 && !phone.startsWith('0')) {
      phone = '0$phone';
    }

    return phone;
  }

  static bool isValid(String phone) {
    final digits = phone.replaceAll('+', '');
    return phone.isNotEmpty && digits.length >= 7;
  }
}