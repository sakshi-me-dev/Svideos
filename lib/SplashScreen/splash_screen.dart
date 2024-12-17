import 'dart:async';

import 'package:flutter/material.dart';

import '../EarringScreen/earring_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const EarringScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme.of(context).brightness == Brightness.dark
          ? Image.asset('assets/images/logoWhite.png',width: 40,)
          : Image.asset('assets/images/logo.png',width: 40,),
    );
  }
}
