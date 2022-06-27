import 'package:compass_foundation/foundation/utils/formats/formats.dart';

extension IntX on int {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
