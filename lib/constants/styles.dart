//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sovmestno/constants/colors.dart';

class Styles {
  static const TextStyle mainTitle = TextStyle(
<<<<<<< HEAD
      fontSize: 32,
      color: AppColors.backgroundButton,
      fontWeight: FontWeight.bold,
      fontFamily: 'Mak');
=======
    color: MyColors.backgroundButton,
    fontFamily: 'mak',
    fontSize: 36,
  );
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1

  static const TextStyle tabTitle = TextStyle(
    fontSize: 11,
    color: Colors.white,
    fontWeight: FontWeight.w700,
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
