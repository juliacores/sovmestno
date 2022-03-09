import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class ApplicationTextWidget extends StatelessWidget {
  const ApplicationTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('О себе:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text(
            'Я очень позитивный и веселый человек. Помимо профессиональных интересов, я люблю проводить время на природе с \nсемьей - кататься на велосипеде, бегать.',
            style: Styles.colorBlack11),
        SizedBox(height: 6),
        Text('Личность:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text('Общительность, инициативность, перфекционист',
            style: Styles.colorBlack11),
        SizedBox(height: 6),
        Text('Профессиональный опыт:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text(
            'Я люблю ответсвенность, поэтому уже больше 10 лет работаю в управлении. Являюсь спикером международных \nконференций.',
            style: Styles.colorBlack11),
        Text('С чем могу помочь:', style: Styles.colorBlack14bold),
      ],
    );
  }
}
