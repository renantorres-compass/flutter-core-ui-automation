import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class PhoneMask {
  static MaskTextInputFormatter phoneFormatter = MaskTextInputFormatter(
    mask: "(##) #####-####",
  );

  static String setPhoneMask(String text) {
    return phoneFormatter.maskText(text);
  }
}
