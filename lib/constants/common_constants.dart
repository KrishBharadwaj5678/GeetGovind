import 'package:flutter/material.dart';

class CommonConstants {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color.fromRGBO(249, 248, 183, 1),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
  );
  static Color appBarBackgroundColor = Color.fromRGBO(249, 248, 183, 1);
  static Color appBarTextColor = Colors.black;
}
