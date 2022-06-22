import 'package:compass/foundation/utils/date_format.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String date = "2022-06-22 12:08:47.710";
  test("Get compact DateTime", () {
    expect(CompassDateFormat.compact(date), "22/06");
  });
}
