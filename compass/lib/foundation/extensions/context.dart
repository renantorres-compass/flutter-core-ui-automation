import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  TextTheme get appTextTheme => Theme.of(this).textTheme;
}
