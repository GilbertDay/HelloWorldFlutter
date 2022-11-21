import 'package:flutter/material.dart';
import 'package:hello_world/Pertemuan1.dart';
import 'dart:async';

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
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const Pertemuan1(title: 'Demo App Gilbert')));
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
