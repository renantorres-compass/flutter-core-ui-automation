import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CNPJMask {
  static MaskTextInputFormatter controller = MaskTextInputFormatter(
    mask: "##.###.###/####-##",
  );

  static String setCNPJMask(String text) {
    return controller.maskText(text);
  }
}
