//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sovmestno/constants/colors.dart';

class Styles {
  static const TextStyle mainTitle = TextStyle(
      fontSize: 32,
      color: AppColors.backgroundButton,
      fontWeight: FontWeight.bold,
      fontFamily: 'Mak');

  static const TextStyle tabTitle = TextStyle(
    fontSize: 11,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle hintColor11bold = TextStyle(
    color: AppColors.hintColor,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle blueColor18bold = TextStyle(
    color: AppColors.backgroundButton,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle hintColor14 = TextStyle(
    color: AppColors.hintColor,
    fontSize: 14,
  );
  static const TextStyle hintColor14Bold = TextStyle(
      color: AppColors.hintColor, fontSize: 14, fontWeight: FontWeight.bold);
  static const TextStyle colorBlack14bold = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle colorBlack11 = TextStyle(
    color: Colors.black,
    fontSize: 11,
  );

  //
  static GoogleFonts hintStyle = GoogleFonts();

  static ButtonStyle registrationButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: const BorderSide(
        width: 1.0,
        color: AppColors.backgroundButton,
      ),
    ),
  );

  static ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: const BorderSide(
        width: 1.0,
        color: AppColors.backgroundButton,
      ),
    ),
  );
}
