import 'package:compass/foundation/extension/string.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String date = "2022-06-22 12:08:47.710";
  test('Get compact DateFormat from String extension', () {
    expect(date.dateFormatCompact, "22/06");
  });

  test("Get compact hyphenated DateTime from String extension", () {
    expect(date.dateFormatCompactHyphenated, "22/06 - 12:08");
  });

  test("Get short DateTime from String extension", () {
    expect(date.dateFormatShort, "22/06/2022");
  });

  test("Get medium DateTime from String extension", () {
    expect(date.dateFormatMedium, "22/06/2022 12:08");
  });

  test("Get medium hyphenated DateTime from String extension", () {
    expect(date.dateFormatMediumHyphenated, "22/06/2022 - 12:08");
  });

  test("Get full DateTime from String extension", () {
    expect(date.dateFormatFull, "22/06/2022 12:08:47");
  });

  test("Get full hyphenated DateTime from String extension", () {
    expect(date.dateFormatFullHyphenated, "22/06/2022 - 12:08:47");
  });

  test("Get monthYear DateTime from String extension", () {
    expect(date.dateFormatMonthYear, "Junho / 2022");
  });

  test("Get dayShortNamedMonth DateTime from String extension", () {
    expect(date.dateFormatDayShortNamedMonth, "22 / Junho");
  });
}
