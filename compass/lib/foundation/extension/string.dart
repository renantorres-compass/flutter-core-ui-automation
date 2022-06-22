import 'package:compass/foundation/utils/compass_date_format.dart';

extension StringX on String {
  String get dateFormatCompact => CompassDateFormat.compact(this);
  String get dateFormatCompactHyphenated =>
      CompassDateFormat.compactHyphenated(this);
  String get dateFormatShort => CompassDateFormat.short(this);
  String get dateFormatMedium => CompassDateFormat.medium(this);
  String get dateFormatMediumHyphenated =>
      CompassDateFormat.mediumHyphenated(this);
  String get dateFormatFull => CompassDateFormat.full(this);
  String get dateFormatFullHyphenated => CompassDateFormat.fullHyphenated(this);
  String get dateFormatMonthYear => CompassDateFormat.monthYear(this);
  String get dateFormatDayShortNamedMonth =>
      CompassDateFormat.dayShortNamedMonth(this);
}
