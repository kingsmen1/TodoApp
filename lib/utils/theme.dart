import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    //fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // headline3: TextStyle(
    //   fontSize: 18,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    // headline4: TextStyle(
    //   fontSize: 16,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    // headline5: TextStyle(
    //   fontSize: 14,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    // headline6: TextStyle(
    //   fontSize: 14,
    //   fontWeight: FontWeight.normal,
    //   color: Colors.black,
    // ),
    bodyText1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
  );
}
