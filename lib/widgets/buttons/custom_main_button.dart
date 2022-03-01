import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';

class CustomButtonWidget extends StatelessWidget {

  final buttonIsBlue;
  final String title;
  final callback;

  const CustomButtonWidget.blue({Key? key, required this.title, this.callback}) : buttonIsBlue = true;
  const CustomButtonWidget.white({Key? key, required this.title, this.callback}) : buttonIsBlue = false;

  @override
  Widget build(BuildContext context) {
    if (buttonIsBlue == false) {
      return SizedBox(
        width: title.length*10+16*2,
        height: 40,
        child: ElevatedButton(
          child: Text(
            title,
            style: TextStyle(color: AppColors.backgroundButton),
          ),
          onPressed: callback,
          style: Styles.registrationButtonStyle,
        ),
      );
    } else {
      return SizedBox(
        width: title.length*10+16*2,
        height: 40,
        child: ElevatedButton(
            child: Text(
              title,
              style: TextStyle(color: AppColors.grayscale),
            ),
            onPressed: callback,
            style: Styles.blueButtonStyle
        ),
      );
    }
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     //TODO move to styles
  //     //на каждую букву задаем кол-во пикселей + паддинг по сторонам
  //     width: title.length*10+16*2,
  //     height: 40,
  //     child: ElevatedButton(
  //       child:  Text(
  //         title,
  //         style: const TextStyle(color: Colors.white),
  //       ),
  //       onPressed: callback,
  //       style: ElevatedButton.styleFrom(
  //         primary: AppColors.backgroundButton,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(8.0),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
