import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF03b1c0);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: lightColor,
    textTheme: new TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: primaryColor,
      ),
    ),
  );
}
