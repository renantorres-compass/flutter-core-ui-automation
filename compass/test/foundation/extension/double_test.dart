import 'package:compass/foundation/extension/double.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Get a value and return in a money format", () {
    double value = 123456.22;

    double value1 = 9.99;
    double value2 = 0.0;

    expect(value.moneyFormat, "R\$ 123.456,22");

    expect(value1.moneyFormat, "R\$ 9,99");

    expect(value2.moneyFormat, "R\$ 0,00");
  });
}
