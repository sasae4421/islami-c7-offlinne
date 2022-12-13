import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled6/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'Splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //seconds of wait forSlpashScreen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/splash@3x.png')),
      ],
    );
  }
}
