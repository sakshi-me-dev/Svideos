import 'package:flutter/material.dart';

class ThemeManager {
  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.grey[800]),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),
  );





  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.yellow,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[900],
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.grey[400]),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey[800],
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
