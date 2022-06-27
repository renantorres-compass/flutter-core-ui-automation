import 'package:compass_foundation/foundation/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if Card Number is invalid', () {
    String errorMessage = "Número de cartão inválido";
    String card = "0000.000.0000.0000";

    expect(
        CardNumberLuhnValidator(errorMessage: errorMessage)
            .validateCardNumberLuhnAlgorithm(card),
        errorMessage);
  });
}
