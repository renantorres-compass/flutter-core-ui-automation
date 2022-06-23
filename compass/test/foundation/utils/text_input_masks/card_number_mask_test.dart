import 'package:compass/foundation/utils/text_input_masks/card_number_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with Card Number Mask applied', () {
    String cardNumber = "1111222233334444";

    expect(CardNumberMask.setCardNumber(cardNumber), "1111 2222 3333 4444");
  });
}
