import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CardNumberMask {
  static MaskTextInputFormatter cardNumberFormatter = MaskTextInputFormatter(
    mask: "#### #### #### ####",
  );

  static String setCardNumber(String text) {
    return cardNumberFormatter.maskText(text);
  }
}
