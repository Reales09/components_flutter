import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.black;
  static const eerieBlack = Colors.black;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: eerieBlack,

      //AppBarTheme
      appBarTheme: const AppBarTheme(
        color: eerieBlack,
        elevation: 0,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
      ),

      //elevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.black, shape: const StadiumBorder(), elevation: 0),
      )
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
