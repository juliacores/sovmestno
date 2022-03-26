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

  static const TextStyle roboto_18_500_blue = TextStyle(
      color: Color.fromRGBO(2, 50, 112, 1),
      fontFamily: 'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.w500);

  static const TextStyle roboto_14_500_black = TextStyle(
      color: Color.fromRGBO(37, 39, 51, 1),
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w500);
  static const TextStyle roboto_14_500_hintColor = TextStyle(
      color: AppColors.hintColor,
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w500);

  static const TextStyle roboto_14_500_lightBlue = TextStyle(
      color: Color.fromRGBO(141, 191, 255, 1),
      fontFamily: 'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w500);

  static const TextStyle mulish_18_700_grey = TextStyle(
    color: Color.fromRGBO(119, 121, 134, 1),
    fontFamily: 'Mulish',
    fontSize: 18,
    fontWeight: FontWeight.w700);

  static const TextStyle roboto_14_700_lightGrey = TextStyle(
    color: Color.fromRGBO(159, 162, 180, 1),
    fontFamily: 'Roboto',
    fontSize: 14,
    fontWeight: FontWeight.w700);

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
