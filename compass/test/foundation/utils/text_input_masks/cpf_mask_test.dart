import 'package:compass/foundation/utils/text_input_masks/cpf_mask.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return a string with CPF Mask applied', () {
    String cpf = "12345678910";

    expect(CPFMask.setCPFMask(cpf), "123.456.789-10");
  });
}
