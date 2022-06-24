import 'package:compass/foundation/utils/validators/cnpj_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if CNPJ is null', () {
    String errorMessage = "CNPJ inválido";
    expect(CNPJValidator(errorMessage: errorMessage).validateCNPJ(null),
        "CNPJ inválido");
  });

  test('Return error message if CNPJ is empty', () {
    String errorMessage = "CNPJ inválido";
    expect(CNPJValidator(errorMessage: errorMessage).validateCNPJ(""),
        "CNPJ inválido");
  });

  test('''Return error message if CNPJ length's is lower than 14''', () {
    String errorMessage = "CNPJ inválido";
    expect(
        CNPJValidator(errorMessage: errorMessage)
            .validateCNPJ("50.555.555/555-2"),
        "CNPJ inválido");

    expect(
        CNPJValidator(errorMessage: errorMessage).validateCNPJ("55.555.555/2"),
        "CNPJ inválido");

    expect(
        CNPJValidator(errorMessage: errorMessage).validateCNPJ("555555555555"),
        "CNPJ inválido");
  });

  test('Return null if CNPJ is valid', () {
    String errorMessage = "CNPJ inválido";
    expect(
        CNPJValidator(errorMessage: errorMessage)
            .validateCNPJ("55.555.555/0000-55"),
        null);

    expect(
        CNPJValidator(errorMessage: errorMessage)
            .validateCNPJ("55555555555555"),
        null);
  });
}
