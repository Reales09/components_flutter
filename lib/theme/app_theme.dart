import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const eerieBlack = Colors.black;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBarTheme
      appBarTheme: const AppBarTheme(
        color: eerieBlack,
        elevation: 0,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: eerieBlack))
      // TextButton Theme

      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: primary,

      //AppBarTheme
      appBarTheme: const AppBarTheme(
        color: eerieBlack,
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black87);
}
