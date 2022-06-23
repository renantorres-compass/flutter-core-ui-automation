import 'package:compass/foundation/utils/text_input_masks/cnpj_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with CNPJ Mask applied', () {
    String cnpj = "12345678910000";

    expect(CNPJMask.setCNPJMask(cnpj), "12.345.678/9100-00");
  });
}
