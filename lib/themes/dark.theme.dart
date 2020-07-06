import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF03b1c0);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.black26,
    textTheme: new TextTheme(
      headline1: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: primaryColor,
      ),
    ),
  );
}
