import 'package:compass_foundation/foundation/extensions/extensions.dart';

class CNPJValidator {
  final String errorMessage;

  CNPJValidator({required this.errorMessage});

  String? validateCNPJ(String? cnpj) {
    if (cnpj == null ||
        cnpj.isEmpty ||
        cnpj.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length <
            14) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
