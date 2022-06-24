class PhoneValidator {
  final String errorMessage;

  PhoneValidator({required this.errorMessage});

  String? validatePhone(String? phone) {
    if (phone == null || phone.isEmpty || phone.length < 11) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
