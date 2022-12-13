import 'package:flutter/material.dart';
import 'package:untitled6/HomeScreen.dart';
import 'package:untitled6/MyTheme.dart';
import 'package:untitled6/SuraDetails/SuraDeatails.dart';
import 'package:untitled6/splashScreen.dart';

main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (buildcontext) => SplashScreen(),
        HomeScreen.routeName: (buildcontext) => HomeScreen(),
        SuraDetailsScreen.routeName: (buildcontext) => SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyTheme.lightTheme,
    );
  }
}
