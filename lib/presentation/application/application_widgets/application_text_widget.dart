import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ApplicationTextWidget extends StatelessWidget {
  const ApplicationTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // SizedBox(width: 10),
        const Text(
          'О себе:',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Я очень позитивный и веселый человек. Помимо профессиональных интересов, я люблю проводить время на природе с \nсемьей - кататься на велосипеде, бегать.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'Личность:',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Общительность, инициативность, перфекционист',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        SizedBox(height: 6),
        const Text(
          'Профессиональный опыт:',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Я люблю ответсвенность, поэтому уже больше 10 лет работаю в управлении. Являюсь спикером международных \nконференций.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        const Text(
          'С чем могу помочь:',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
