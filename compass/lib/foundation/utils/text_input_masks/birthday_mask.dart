import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class BirthDayMask {
  static MaskTextInputFormatter birthdayController = MaskTextInputFormatter(
    mask: '##/##/####',
  );

  static String setBirthDayMask(String text) {
    return birthdayController.maskText(text);
  }
}
