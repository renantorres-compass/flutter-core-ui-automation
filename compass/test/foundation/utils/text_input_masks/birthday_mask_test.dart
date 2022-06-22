import 'package:compass/foundation/utils/text_input_masks/birthday_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('description', () {
    String birthDay = "22081990";

    expect(BirthDayMask.getBirthDayMask(birthDay), "22/08/1990");
  });
}
