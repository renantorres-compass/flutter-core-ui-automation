import 'package:compass/foundation/extensions/extensions.dart';

class CPFValidator {
  final String errorMessage;

  CPFValidator({required this.errorMessage});

  String? validateCPF(String? cpf) {
    if (cpf == null ||
        cpf.isEmpty ||
        cpf.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length <
            11) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
