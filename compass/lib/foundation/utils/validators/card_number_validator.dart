import 'package:compass/foundation/extensions/extensions.dart';

class CardNumberValidator {
  final String errorMessage;

  CardNumberValidator({required this.errorMessage});

  String? validateCardNumber(String? card) {
    if (card == null ||
        card.isEmpty ||
        card.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length <
            16) {
      return errorMessage;
    } else {
      return null;
    }
  }
}
