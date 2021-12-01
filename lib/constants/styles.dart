//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sovmestno/constants/colors.dart';

class Styles {
  static const TextStyle mainTitle = TextStyle(
      fontSize: 32,
      color: MyColors.backgroundButton,
      fontWeight: FontWeight.bold,
      fontFamily: 'Mak');
  //
  static GoogleFonts hintStyle = GoogleFonts();

  static ButtonStyle registrationButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: Colors.blue[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      side: const BorderSide(
        width: 1.0,
        color: MyColors.backgroundButton,
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
        color: MyColors.backgroundButton,
      ),
    ),
  );
}
