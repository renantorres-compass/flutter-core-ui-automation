import 'package:compass_foundation/foundation/utils/validators/zip_code_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Return error message if Zip Code is null', () {
    String errorMessage = "CEP inválido";
    expect(ZipCodeValidator(errorMessage: errorMessage).validateZipCode(null),
        "CEP inválido");
  });

  test('Return error message if Zip Code is empty', () {
    String errorMessage = "CEP inválido";
    expect(ZipCodeValidator(errorMessage: errorMessage).validateZipCode(""),
        "CEP inválido");
  });

  test(
      '''Return error message if Zip Code length's is lower or greater than 9''',
      () {
    String errorMessage = "CEP inválido";
    expect(
        ZipCodeValidator(errorMessage: errorMessage).validateZipCode("7222222"),
        "CEP inválido");

    expect(
        ZipCodeValidator(errorMessage: errorMessage).validateZipCode("72222-2"),
        "CEP inválido");

    expect(
        ZipCodeValidator(errorMessage: errorMessage).validateZipCode("72222-2"),
        "CEP inválido");
  });

  test('Return null if Zip Code is valid', () {
    String errorMessage = "CEP inválido";
    expect(
        ZipCodeValidator(errorMessage: errorMessage)
            .validateZipCode("72222222"),
        null);

    expect(
        ZipCodeValidator(errorMessage: errorMessage)
            .validateZipCode("72222-222"),
        null);
  });
}
