import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class BirthDayMask {
  static MaskTextInputFormatter birthdayFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
  );

  static String setBirthDayMask(String text) {
    return birthdayFormatter.maskText(text);
  }
}
