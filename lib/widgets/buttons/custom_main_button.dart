import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key, required this.title, this.callback}) : super(key: key);

  final String title;
  final  callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //TODO move to styles
      //на каждую букву задаем кол-во пикселей + паддинг по сторонам
      width: title.length*10+16*2,
      height: 40,
      child: ElevatedButton(
        child:  Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        onPressed: callback,
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
