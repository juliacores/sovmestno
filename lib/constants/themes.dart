import 'package:flutter/material.dart';

ThemeData mainTheme() {
  final outlineButton = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.green[50]),
    ),
  );

  return ThemeData(
    primarySwatch: Colors.blue,
    outlinedButtonTheme: outlineButton,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
