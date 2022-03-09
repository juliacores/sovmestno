import 'package:flutter/material.dart';
import 'package:sovmestno/constants/styles.dart';

class ApplicationCardTextWidget extends StatelessWidget {
  const ApplicationCardTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // SizedBox(width: 10),
        Text('О себе:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text(
            'Я очень позитивный и веселый человек. Помимо профессиональных \nинтересов, я люблю проводить время на природе с семьей - кататься на \nвелосипеде, бегать.',
            style: Styles.colorBlack11),
        SizedBox(height: 15),
        Text('Личность:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text('Общительность, инициативность, перфекционист',
            style: Styles.colorBlack11),
        SizedBox(height: 15),
        Text('Профессиональный опыт:', style: Styles.colorBlack14bold),
        SizedBox(height: 6),
        Text(
            'Я люблю ответсвенность, поэтому уже больше 10 лет работаю в \nуправлении. Являюсь спикером международных конференций.',
            style: Styles.colorBlack11),
        SizedBox(
          height: 15,
        ),
        Text('С чем могу помочь:', style: Styles.colorBlack14bold),
      ],
    );
  }
}
