import 'package:flutter/material.dart';

class AppTheme {

    static const Color primary = Colors.indigo;

    static final ThemeData lightTheme = ThemeData.light().copyWith(

        // Color primario
        primaryColor: Colors.indigo,

        // AppBar color
        appBarTheme: const AppBarTheme(
            color: primary,
            elevation: 0
        ),

        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(primary: primary)
        ),

        // FloatingActionButton
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primary,
            elevation: 5
        ),

        // ElevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                primary: primary,
                shape: const StadiumBorder(),
                elevation: 0,
            )
        ),

        
    );

}