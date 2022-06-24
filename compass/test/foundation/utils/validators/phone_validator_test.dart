import 'package:compass/foundation/utils/validators/phone_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if phone is null', () {
    String errorMessage = "Telefone inválido";
    expect(PhoneValidator(errorMessage: errorMessage).validatePhone(null),
        "Telefone inválido");
  });

  test('Return error message if phone is empty', () {
    String errorMessage = "Telefone inválido";
    expect(PhoneValidator(errorMessage: errorMessage).validatePhone(''),
        "Telefone inválido");
  });

  test('''Return error message if phone length's lower than 11''', () {
    String errorMessage = "Telefone inválido";
    expect(
        PhoneValidator(errorMessage: errorMessage).validatePhone('6199999999'),
        "Telefone inválido");
  });

  test("Return null if phone is valid", () {
    String errorMessage = "Telefone inválido";
    expect(
        PhoneValidator(errorMessage: errorMessage).validatePhone('61999999999'),
        null);
  });
}
