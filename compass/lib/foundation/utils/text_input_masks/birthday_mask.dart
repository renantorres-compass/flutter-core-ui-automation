import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class BirthDayMask {
  static MaskTextInputFormatter controller = MaskTextInputFormatter(
    mask: '##/##/####',
  );

  static String getBirthDayMask(String text) {
    return controller.maskText(text);
  }
}
