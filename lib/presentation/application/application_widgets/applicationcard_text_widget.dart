import 'package:flutter/material.dart';

class ApplicationCardTextWidget extends StatelessWidget {
  const ApplicationCardTextWidget({Key? key}) : super(key: key);

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
          'Я очень позитивный и веселый человек. Помимо профессиональных \nинтересов, я люблю проводить время на природе с семьей - кататься на \nвелосипеде, бегать.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 15),
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
        SizedBox(height: 15),
        const Text(
          'Профессиональный опыт:',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Я люблю ответсвенность, поэтому уже больше 10 лет работаю в \nуправлении. Являюсь спикером международных конференций.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 11,
          ),
        ),
        SizedBox(
          height: 15,
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
