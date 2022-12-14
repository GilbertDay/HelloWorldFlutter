import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hello_world/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key, required this.title});

  final String title;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Image.asset(
        'images/logo-144.png',
        width: 200.0,
        height: 200.0,
      )),
    );
  }

  @override
  void initState() {
    startSplashScreen();
  }
}
