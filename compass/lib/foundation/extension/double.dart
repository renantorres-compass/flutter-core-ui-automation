import 'package:compass/foundation/utils/formats/formats.dart';

extension DoubleX on double {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
