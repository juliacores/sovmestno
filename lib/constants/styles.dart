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

  static const TextStyle roboroRegular = TextStyle(
      color: Color.fromRGBO(37, 39, 51, 1),
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w400);

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

  static ButtonStyle blueButtonStyle = ElevatedButton.styleFrom(
    primary: AppColors.backgroundButton,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: const BorderSide(
        width: 1.0,
        color: AppColors.backgroundButton,
      ),
    ),
  );
}
