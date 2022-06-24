class PasswordValidator {
  final String errorMessage;

  PasswordValidator({required this.errorMessage});

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty || password.length < 8) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
