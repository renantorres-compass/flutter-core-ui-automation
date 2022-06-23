import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CPFMask {
  static MaskTextInputFormatter cpfController = MaskTextInputFormatter(
    mask: "###.###.###-##",
  );

  static String setCpfCnpjMask(String text) {
    return cpfController.maskText(text);
  }
}
