import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static const PrimaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 40),
        unselectedItemColor: Colors.white,
        backgroundColor: PrimaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false),
    primaryColor: PrimaryColor,
  );
}
