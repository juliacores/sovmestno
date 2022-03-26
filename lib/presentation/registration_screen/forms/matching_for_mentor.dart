import 'package:flutter/material.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class MatchingForMentor extends StatelessWidget {
  const MatchingForMentor({Key? key, this.onSavePressed}) : super(key: key);
  final onSavePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Спасибо! Мы предложим вашу кандидатуру подходящим менти.',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 40),
        const Text(
          ConstText.mentorText,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        const SizedBox(height: 40),
        CustomButtonWidget.blue(title: 'Далее', callback: onSavePressed),
        const SizedBox(height: 45),
      ],
    );
  }
}
