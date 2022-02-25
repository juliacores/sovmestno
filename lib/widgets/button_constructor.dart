import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class ButtonConstructor extends StatelessWidget {
  final bool buttonIsBlue;
  final String buttonText;
  final onPressed;

  const ButtonConstructor(
      {Key? key,
      required this.buttonIsBlue,
      required this.buttonText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (buttonIsBlue == false) {
      return Container(
        width: 100,
        height: 40,
        child: ElevatedButton(
          child: Text(
            buttonText,
            style: TextStyle(color: AppColors.backgroundButton),
          ),
          onPressed: onPressed,
          style: Styles.registrationButtonStyle,
        ),
      );
    } else {
      return Container(
        width: 100,
        height: 40,
        child: ElevatedButton(
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: AppColors.backgroundButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      );
    }
  }
}
