import 'package:compass_foundation/foundation/utils/formats/formats.dart';

extension DoubleX on double {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
