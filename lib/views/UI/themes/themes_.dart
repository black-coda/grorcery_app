import 'package:flutter/material.dart';

const Color primaryColor = Color(0xff23AA49);

final darkTheme = ThemeData(
  backgroundColor: const Color(0xff0D1F29),
  primaryColor: const Color(0xff23AA49),
  elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle()),
);

final darkThemed = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    iconColor: Color(0xff23AA49),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff0D1F29),
  ),
  scaffoldBackgroundColor: const Color(0xff0D1F29),
  fontFamily: "Main",
  // primarySwatch: Colors.amber,
  colorScheme: const ColorScheme.light(
    primary: Color(0xff23AA49),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline3: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),
    headline2: TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
    headline4: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
  ),
);
