import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

ThemeData mainTheme() {
  final outlineButton = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.green[50]),
    ),
  );

  return ThemeData(
    // primarySwatch: AppColors.backgroundButton.,
    primarySwatch: Colors.indigo,
    outlinedButtonTheme: outlineButton,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
