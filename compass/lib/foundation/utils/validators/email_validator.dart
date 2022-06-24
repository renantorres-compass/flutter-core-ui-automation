class EmailValidator {
  final String errorMessage;

  EmailValidator({required this.errorMessage});

  bool emailValid(String email) {
    final RegExp regex = RegExp(
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$");
    return regex.hasMatch(email);
  }

  String? validateEmail(String? email) {
    if (email == null ||
        email.trim().isEmpty ||
        email.trim().length < 5 ||
        !emailValid(email)) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
