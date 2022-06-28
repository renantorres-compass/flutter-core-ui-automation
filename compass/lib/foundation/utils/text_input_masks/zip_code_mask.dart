import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class ZipCodeMask {
  static MaskTextInputFormatter zipCodeFormatter = MaskTextInputFormatter(
    mask: "#####-###",
  );

  static String setZipCodeMask(String text) {
    return zipCodeFormatter.maskText(text);
  }
}
