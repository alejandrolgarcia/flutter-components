import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
    ),

    // FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData (
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )

  );


  static final ThemeData darkTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: Colors.indigo,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0
      ),

      scaffoldBackgroundColor: Colors.black
  );
}
