import 'package:compass/foundation/utils/text_input_masks/birthday_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with BirthDay Mask applied', () {
    String birthDay = "22081990";

    expect(BirthDayMask.setBirthDayMask(birthDay), "22/08/1990");
  });
}
