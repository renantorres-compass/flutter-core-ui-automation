class CNPJValidator {
  final String errorMessage;

  CNPJValidator({required this.errorMessage});

  String? validateCNPJ(String? cnpj) {
    if (cnpj == null ||
        cnpj.isEmpty ||
        cnpj.trim().replaceAll(RegExp(r'[^\w\s]+'), "").length < 14) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
