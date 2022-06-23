import 'package:compass/foundation/utils/text_input_masks/zip_code_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with Phone Mask applied', () {
    String zipCode = "77777777";

    expect(ZipCodeMask.setZipCodeMask(zipCode), "77777-777");
  });
}
