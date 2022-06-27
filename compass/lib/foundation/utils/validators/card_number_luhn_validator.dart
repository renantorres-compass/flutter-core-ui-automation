import 'package:compass_foundation/foundation/foundation.dart';

class CardNumberLuhnValidator {
  final String errorMessage;

  CardNumberLuhnValidator({required this.errorMessage});

  String? validateCardNumberLuhnAlgorithm(String? card) {
    int sum = 0;
    if (card != null &&
        card.removeWhiteSpace().replaceAll(RegExp(r'[^\w\s]+'), "").length >=
            13) {
      List<String> cardList =
          card.replaceAll(RegExp(r'[^\w\s]+'), "").split("");
      int i = 0;

      for (var element in cardList.reversed) {
        int digit = int.parse(element);
        i.isEven
            ? sum += digit
            : digit >= 5
                ? sum += (digit * 2) - 9
                : sum += digit * 2;

        i++;
      }
    }
    if (sum % 10 == 0 && sum != 0) {
      return null;
    }
    return errorMessage;
  }
}
