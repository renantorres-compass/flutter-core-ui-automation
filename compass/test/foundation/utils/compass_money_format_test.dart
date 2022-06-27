import 'package:compass_foundation/foundation/utils/formats/formats.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Get a value and return in a money format", () {
    double value = 123456.22;
    double value1 = 1234;
    double value2 = 9.99;
    double value3 = 10444;

    expect(CompassMoneyFormat.moneyBRLformat(value), "R\$ 123.456,22");

    expect(CompassMoneyFormat.moneyBRLformat(value1), "R\$ 1.234,00");

    expect(CompassMoneyFormat.moneyBRLformat(value2), "R\$ 9,99");

    expect(CompassMoneyFormat.moneyBRLformat(value3), "R\$ 10.444,00");
  });
}
