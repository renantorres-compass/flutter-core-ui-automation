import 'package:compass/foundation/utils/formats/formats.dart';
import 'package:compass/foundation/utils/text_input_masks/masks.dart';

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
}
