class Contact {
  final String fullName;
  final String phone;

  const Contact({
    required this.fullName,
    required this.phone,
  });

  bool get isEmpty => fullName.trim().isEmpty || phone.trim().isEmpty;

  bool get isValid => !isEmpty;

  @override
  String toString() => 'Contact(fullName: $fullName, phone: $phone)';
}