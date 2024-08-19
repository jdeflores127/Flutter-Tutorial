import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepPurpleAccent;

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColorDark: primary,
      primaryIconTheme: const IconThemeData(color: primary, fill: 1.0),
      appBarTheme: const AppBarTheme(
        color: primary,
      ));
}
