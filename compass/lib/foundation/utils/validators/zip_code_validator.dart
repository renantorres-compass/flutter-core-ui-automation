import 'package:compass/foundation/extension/string.dart';

class ZipCodeValidator {
  final String errorMessage;

  ZipCodeValidator({required this.errorMessage});

  String? validateZipCode(String? zipCode) {
    if (zipCode == null ||
        zipCode.isEmpty ||
        zipCode.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length <
            8 ||
        zipCode.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length >
            8) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
