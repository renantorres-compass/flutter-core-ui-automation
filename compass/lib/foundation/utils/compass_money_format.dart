import 'package:intl/intl.dart';

abstract class CompassMoneyFormat {
  static String moneyBRLformat(double value) {
    final formatCurrency =
        NumberFormat.currency(locale: "pt_BR", symbol: "", decimalDigits: 2);
    return "R\$ ${formatCurrency.format(value).trim()}";
  }
}
