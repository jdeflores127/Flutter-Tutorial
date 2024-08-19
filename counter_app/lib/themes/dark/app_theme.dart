import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color primary = Colors.deepPurpleAccent;
  static const Color buttonColors = Colors.pink;

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColorDark: primary,
      primaryIconTheme: const IconThemeData(color: primary, fill: 1.0),
      appBarTheme: const AppBarTheme(
        color: primary,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: buttonColors)));

  // const TextButtonTheme(
  //   buttonColor: buttonColors,
  // ));
}
