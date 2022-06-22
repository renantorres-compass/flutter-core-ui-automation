import 'package:compass/foundation/utils/compass_money_format.dart';

extension DoubleX on double {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
