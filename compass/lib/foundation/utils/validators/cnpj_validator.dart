class CNPJValidator {
  final String errorMessage;

  CNPJValidator({required this.errorMessage});

  String? validateCNPJ(String? cpf) {
    if (cpf == null ||
        cpf.isEmpty ||
        cpf.trim().replaceAll(RegExp(r'[^\w\s]+'), "").length < 14) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
