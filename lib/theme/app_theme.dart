
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.orange;

  static final ThemeData lightTheme =  ThemeData.light().copyWith(
        //Color primario
        primaryColor: primary,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
          textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primary
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 0
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            elevation: 0,
            shape: const StadiumBorder()
          )
        )
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: primary,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
        ),
        scaffoldBackgroundColor: Colors.black,
        //TextButton theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primary
          )
        )
      );
}