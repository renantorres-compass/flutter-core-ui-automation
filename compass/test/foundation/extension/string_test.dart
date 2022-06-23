import 'package:compass/foundation/extension/string.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String date = "2022-06-22 12:08:47.710";
  test('Get compact DateFormat from String extension', () {
    expect(date.dateFormatCompact(), "22/06");
  });

  test("Get compact hyphenated DateTime from String extension", () {
    expect(date.dateFormatCompactHyphenated(), "22/06 - 12:08");
  });

  test("Get short DateTime from String extension", () {
    expect(date.dateFormatShort(), "22/06/2022");
  });

  test("Get medium DateTime from String extension", () {
    expect(date.dateFormatMedium(), "22/06/2022 12:08");
  });

  test("Get medium hyphenated DateTime from String extension", () {
    expect(date.dateFormatMediumHyphenated(), "22/06/2022 - 12:08");
  });

  test("Get full DateTime from String extension", () {
    expect(date.dateFormatFull(), "22/06/2022 12:08:47");
  });

  test("Get full hyphenated DateTime from String extension", () {
    expect(date.dateFormatFullHyphenated(), "22/06/2022 - 12:08:47");
  });

  test("Get monthYear DateTime from String extension", () {
    expect(date.dateFormatMonthYear(), "Junho / 2022");
  });

  test("Get dayShortNamedMonth DateTime from String extension", () {
    expect(date.dateFormatDayShortNamedMonth(), "22 / Junho");
  });

  test("Get int value from String", () {
    String valueText = "42";
    expect(valueText.parseInt(), 42);
  });

  test("Get double value from String", () {
    String valueText = "42.000";
    expect(valueText.parseDouble(), 42.000);
  });

  test("Convert string value to BirthDay format", () {
    String valueText = "22081990";
    expect(valueText.toBirthDayFormat(), "22/08/1990");
  });

  test("Convert string value to Card Number format", () {
    String cardNumber = "1111222233334444";
    expect(cardNumber.toCardNumber(), "1111 2222 3333 4444");
  });

  test("Convert string value to CNPJ format", () {
    String cnpj = "12345678910000";
    expect(cnpj.toCNPJFormat(), "12.345.678/9100-00");
  });

  test("Convert string value to CPF format", () {
    String cpf = "12345678910";
    expect(cpf.toCPFFormat(), "123.456.789-10");
  });

  test("Convert string value to Phone format", () {
    String phone = "61999999999";
    expect(phone.toPhoneFormat(), "(61) 99999-9999");
  });

  test("Convert string value to ZipCode format", () {
    String zipCode = "77777777";
    expect(zipCode.toZipCodeFormat(), "77777-777");
  });
}
