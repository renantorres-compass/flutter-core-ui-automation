import 'package:compass/foundation/utils/text_input_masks/phone_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with Phone Mask applied', () {
    String phone = "61999999999";

    expect(PhoneMask.setPhoneMask(phone), "(61) 99999-9999");
  });
}
