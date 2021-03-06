import 'package:compass_foundation/foundation/extensions/extensions.dart';

class BirthdayValidator {
  final String errorMessage;

  BirthdayValidator({required this.errorMessage});

  String? validateBirthday(String? birth) {
    if (birth == null ||
        birth.isEmpty ||
        birth.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length <
            8) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
