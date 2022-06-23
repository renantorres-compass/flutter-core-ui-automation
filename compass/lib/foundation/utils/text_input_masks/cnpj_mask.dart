import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CNPJMask {
  static MaskTextInputFormatter cnpjController = MaskTextInputFormatter(
    mask: "##.###.###/####-##",
  );

  static String setCNPJMask(String text) {
    return cnpjController.maskText(text);
  }
}
