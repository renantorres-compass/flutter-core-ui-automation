import 'package:compass/foundation/utils/validators/birthday_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if Birthday is null', () {
    String errorMessage = "Data de nascimento inválida";
    expect(BirthdayValidator(errorMessage: errorMessage).validateBirthday(null),
        "Data de nascimento inválida");
  });

  test('Return error message if Birthday is empty', () {
    String errorMessage = "Data de nascimento inválida";
    expect(BirthdayValidator(errorMessage: errorMessage).validateBirthday(""),
        "Data de nascimento inválida");
  });

  test('''Return error message if Birthday length's is lower than 8''', () {
    String errorMessage = "Data de nascimento inválida";
    expect(
        BirthdayValidator(errorMessage: errorMessage)
            .validateBirthday("22/08/90"),
        "Data de nascimento inválida");

    expect(
        BirthdayValidator(errorMessage: errorMessage)
            .validateBirthday("22081990"),
        "Data de nascimento inválida");

    expect(
        BirthdayValidator(errorMessage: errorMessage)
            .validateBirthday("22.8.1990"),
        "Data de nascimento inválida");
  });

  test('Return null if Birthday is valid', () {
    String errorMessage = "Data de nascimento inválida";
    expect(
        BirthdayValidator(errorMessage: errorMessage)
            .validateBirthday("22/08/1990"),
        null);

    expect(
        BirthdayValidator(errorMessage: errorMessage)
            .validateBirthday("22081990"),
        null);
  });
}
