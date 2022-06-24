import 'package:compass/foundation/utils/validators/email_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if email is null', () {
    String errorMessage = "E-mail inválido";
    expect(EmailValidator(errorMessage: errorMessage).validateEmail(null),
        "E-mail inválido");
  });

  test('Return error message if email is empty', () {
    String errorMessage = "E-mail inválido";
    expect(EmailValidator(errorMessage: errorMessage).validateEmail(''),
        "E-mail inválido");
  });

  test('''Return error message if email length's is lower than 5''', () {
    String errorMessage = "E-mail inválido";
    expect(EmailValidator(errorMessage: errorMessage).validateEmail('r@r.c'),
        "E-mail inválido");
  });

  test('Return error message if email is invalid', () {
    String errorMessage = "E-mail inválido";
    expect(
        EmailValidator(errorMessage: errorMessage).validateEmail('renan@com'),
        "E-mail inválido");
  });

  test('Return null if email is valid', () {
    String errorMessage = "E-mail inválido";
    expect(
        EmailValidator(errorMessage: errorMessage)
            .validateEmail('renan@renan.com'),
        null);
  });
}
