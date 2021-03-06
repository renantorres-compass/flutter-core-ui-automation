import 'package:compass_foundation/foundation/utils/formats/formats.dart';
import 'package:compass_foundation/foundation/utils/text_input_masks/text_input_masks.dart';

extension StringX on String {
  String dateFormatCompact() => CompassDateFormat.compact(this);
  String dateFormatCompactHyphenated() =>
      CompassDateFormat.compactHyphenated(this);
  String dateFormatShort() => CompassDateFormat.short(this);
  String dateFormatMedium() => CompassDateFormat.medium(this);
  String dateFormatMediumHyphenated() =>
      CompassDateFormat.mediumHyphenated(this);
  String dateFormatFull() => CompassDateFormat.full(this);
  String dateFormatFullHyphenated() => CompassDateFormat.fullHyphenated(this);
  String dateFormatMonthYear() => CompassDateFormat.monthYear(this);
  String dateFormatDayShortNamedMonth() =>
      CompassDateFormat.dayShortNamedMonth(this);

  int parseInt() => int.parse(this);
  double parseDouble() => double.parse(this);

  String toBirthDayFormat() {
    return BirthDayMask.setBirthDayMask(this);
  }

  String toCardNumber() {
    return CardNumberMask.setCardNumber(this);
  }

  String toCNPJFormat() {
    return CNPJMask.setCNPJMask(this);
  }

  String toCPFFormat() {
    return CPFMask.setCPFMask(this);
  }

  String toPhoneFormat() {
    return PhoneMask.setPhoneMask(this);
  }

  String toZipCodeFormat() {
    return ZipCodeMask.setZipCodeMask(this);
  }

  String removeWhiteSpace() => replaceAll(" ", "");
}
