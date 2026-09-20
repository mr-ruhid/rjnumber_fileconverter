/// VCF faylında saxlanacaq bir kontaktı təmsil edir.
class Contact {
  /// Ad, Soyad və Ata adı (məs. "Ruhid Cavadov Rəşid")
  final String fullName;

  /// Telefon nömrəsi (məs. "+994501234567")
  final String phone;

  const Contact({
    required this.fullName,
    required this.phone,
  });

  /// Kontakt boşdursa (ad və ya telefon yoxdursa) true qaytarır.
  bool get isEmpty => fullName.trim().isEmpty || phone.trim().isEmpty;

  /// Kontakt doludursa true qaytarır.
  bool get isValid => !isEmpty;

  @override
  String toString() => 'Contact(fullName: $fullName, phone: $phone)';
}