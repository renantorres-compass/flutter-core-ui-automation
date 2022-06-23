import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class ZipCodeMask {
  static MaskTextInputFormatter zipCodeController = MaskTextInputFormatter(
    mask: "#####-###",
  );

  static String setZipCodeMask(String text) {
    return zipCodeController.maskText(text);
  }
}
