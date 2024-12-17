import 'package:flutter/material.dart';



class ElementPage extends StatelessWidget {
  const ElementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.grey[800],
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[700],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[800],
          textTheme: ButtonTextTheme.primary,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      themeMode: ThemeMode.system, // System theme (Light/Dark)
    );
  }
}
