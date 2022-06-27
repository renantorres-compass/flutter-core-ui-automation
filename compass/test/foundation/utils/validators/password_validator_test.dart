import 'package:compass_foundation/foundation/utils/validators/password_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if password is null', () {
    String errorMessage = "Senha inválida";
    expect(PasswordValidator(errorMessage: errorMessage).validatePassword(null),
        "Senha inválida");
  });

  test('Return error message if password is empty', () {
    String errorMessage = "Senha inválida";
    expect(PasswordValidator(errorMessage: errorMessage).validatePassword(''),
        "Senha inválida");
  });

  test('''Return error message if password length's lower than 8''', () {
    String errorMessage = "Senha inválida";
    expect(
        PasswordValidator(errorMessage: errorMessage)
            .validatePassword('1234567'),
        "Senha inválida");
  });

  test("Return null if password is valid", () {
    String errorMessage = "Senha inválida";
    expect(
        PasswordValidator(errorMessage: errorMessage)
            .validatePassword('12345678'),
        null);
  });
}
