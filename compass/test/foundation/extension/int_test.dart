import 'package:compass/foundation/extensions/extensions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Get a value and return in a money format", () {
    int value = 1234;

    int value1 = 10444;
    int value2 = 0;

    expect(value.moneyFormat, "R\$ 1.234,00");

    expect(value1.moneyFormat, "R\$ 10.444,00");

    expect(value2.moneyFormat, "R\$ 0,00");
  });
}
