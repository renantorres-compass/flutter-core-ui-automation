import 'package:compass/foundation/utils/compass_money_format.dart';

extension IntX on int {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
