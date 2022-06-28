import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CPFMask {
  static MaskTextInputFormatter cpfFormatter = MaskTextInputFormatter(
    mask: "###.###.###-##",
  );

  static String setCPFMask(String text) {
    return cpfFormatter.maskText(text);
  }
}
