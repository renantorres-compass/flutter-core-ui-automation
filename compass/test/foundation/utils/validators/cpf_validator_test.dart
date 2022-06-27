import 'package:compass_foundation/foundation/utils/validators/cpf_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if CPF is null', () {
    String errorMessage = "CPF inválido";
    expect(CPFValidator(errorMessage: errorMessage).validateCPF(null),
        "CPF inválido");
  });

  test('Return error message if CPF is empty', () {
    String errorMessage = "CPF inválido";
    expect(CPFValidator(errorMessage: errorMessage).validateCPF(""),
        "CPF inválido");
  });

  test('''Return error message if CPF length's is lower than 11''', () {
    String errorMessage = "CPF inválido";
    expect(CPFValidator(errorMessage: errorMessage).validateCPF("555.555.5-2"),
        "CPF inválido");

    expect(
        CPFValidator(errorMessage: errorMessage).validateCPF("555.555.555-2"),
        "CPF inválido");

    expect(CPFValidator(errorMessage: errorMessage).validateCPF("5555555552"),
        "CPF inválido");
  });

  test('Return null if CPF is valid', () {
    String errorMessage = "CPF inválido";
    expect(
        CPFValidator(errorMessage: errorMessage).validateCPF("555.555.555-55"),
        null);

    expect(CPFValidator(errorMessage: errorMessage).validateCPF("55555555555"),
        null);
  });
}
