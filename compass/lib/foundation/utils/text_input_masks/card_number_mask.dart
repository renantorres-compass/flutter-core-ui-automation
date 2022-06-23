import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CardNumberMask {
  static MaskTextInputFormatter cardNumberController = MaskTextInputFormatter(
    mask: "#### #### #### ####",
  );

  static String setCardNumber(String text) {
    return cardNumberController.maskText(text);
  }
}
