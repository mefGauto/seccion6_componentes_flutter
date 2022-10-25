import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Colors.brown;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario

      primaryColor: Colors.brown[400],

      // AppBar Theme

      appBarTheme: AppBarTheme(
        color: Colors.brown[400],
        elevation: 0,
      ),

      // TextButton theme

      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // FloatingActionButton theme

      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //ElevatedButton theme

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              elevation: 10,
              shape: const StadiumBorder())),

      //InputDecoration theme

      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(15)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario

      primaryColor: Colors.brown[800],

      // AppBar Theme

      appBarTheme: AppBarTheme(
        color: Colors.brown[800],
        elevation: 0,
      ),

      // TextButton theme

      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // FloatingActionButton theme

      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //ElevatedButton theme

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              elevation: 10,
              shape: const StadiumBorder())));
}
