import 'package:compass_foundation/foundation/utils/validators/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String errorMessage = "Nome inválido";
  test("Should return error message if Full Name is invalid", () {
    String fullName = "Renan";
    String fullName1 = "Ren";
    String fullName2 = "R C";
    String fullName3 = "R Campos";

    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName),
        errorMessage);

    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName1),
        errorMessage);
    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName2),
        errorMessage);
    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName3),
        errorMessage);
  });

  test("Should return null if Full Name is valid", () {
    String fullName = "Renan C";
    String fullName1 = "Renan Campos";
    String fullName2 = "Ren C";
    String fullName3 = "Renan C. Torres";

    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName),
        null);

    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName1),
        null);
    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName2),
        null);
    expect(
        FullNameValidator(errorMessage: errorMessage)
            .validateFullName(fullName3),
        null);
  });
}
