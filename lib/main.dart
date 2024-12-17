import 'package:flutter/material.dart';
import 'package:svideo/Widgets/theme.dart';
import 'EarringScreen/earring_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Example',
      theme: ThemeManager.lightTheme,
      darkTheme: ThemeManager.darkTheme,
      debugShowCheckedModeBanner: false,
      home:  const Scaffold(body: EarringScreen()),
    );
  }
}
