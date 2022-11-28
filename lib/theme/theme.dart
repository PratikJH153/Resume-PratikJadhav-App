import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData.light().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xFFf3f2f3),
  primaryTextTheme: const TextTheme(
    bodyText1: TextStyle(
      fontFamily: "NotoSans",
    ),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontFamily: "NotoSans",
    ),
  ),
);

const Color iconColor = Color.fromARGB(255, 95, 95, 95);
