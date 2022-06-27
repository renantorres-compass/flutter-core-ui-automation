import 'package:compass_foundation/foundation/utils/validators/card_number_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if Card Number is null', () {
    String errorMessage = "Número de cartão inválido";
    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber(null),
        "Número de cartão inválido");
  });

  test('Return error message if Card Number is empty', () {
    String errorMessage = "Número de cartão inválido";
    expect(
        CardNumberValidator(errorMessage: errorMessage).validateCardNumber(""),
        "Número de cartão inválido");
  });

  test('''Return error message if Card Number length's is lower than 16''', () {
    String errorMessage = "Número de cartão inválido";
    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber("0000 0000 0000 000"),
        "Número de cartão inválido");

    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber("0000.000.0000.0000"),
        "Número de cartão inválido");

    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber("0000.0000.000"),
        "Número de cartão inválido");
  });

  test('Return null if Card Number is valid', () {
    String errorMessage = "Número de cartão inválido";
    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber("0000 0000 0000 0000"),
        null);

    expect(
        CardNumberValidator(errorMessage: errorMessage)
            .validateCardNumber("0000.0000.0000.0000"),
        null);
  });
}
