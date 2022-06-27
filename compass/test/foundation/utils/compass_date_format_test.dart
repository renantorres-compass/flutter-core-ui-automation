import 'package:compass_foundation/foundation/utils/formats/formats.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String date = "2022-06-22 12:08:47.710";
  test("Get compact DateTime", () {
    expect(CompassDateFormat.compact(date), "22/06");
  });

  test("Get compact hyphenated DateTime", () {
    expect(CompassDateFormat.compactHyphenated(date), "22/06 - 12:08");
  });

  test("Get short DateTime", () {
    expect(CompassDateFormat.short(date), "22/06/2022");
  });

  test("Get medium DateTime", () {
    expect(CompassDateFormat.medium(date), "22/06/2022 12:08");
  });

  test("Get medium hyphenated DateTime", () {
    expect(CompassDateFormat.mediumHyphenated(date), "22/06/2022 - 12:08");
  });

  test("Get full DateTime", () {
    expect(CompassDateFormat.full(date), "22/06/2022 12:08:47");
  });

  test("Get full hyphenated DateTime", () {
    expect(CompassDateFormat.fullHyphenated(date), "22/06/2022 - 12:08:47");
  });

  test("Get monthYear DateTime", () {
    expect(CompassDateFormat.monthYear(date), "Junho / 2022");
  });

  test("Get dayShortNamedMonth DateTime", () {
    expect(CompassDateFormat.dayShortNamedMonth(date), "22 / Junho");
  });
}
