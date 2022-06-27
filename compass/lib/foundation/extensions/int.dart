import 'package:compass/foundation/utils/formats/formats.dart';

extension IntX on int {
  String get moneyFormat => CompassMoneyFormat.moneyBRLformat(this);
}
