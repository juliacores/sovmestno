import 'package:flutter/material.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/widgets/custom_button_widget.dart';

class MatchingForMentor extends StatelessWidget {
  final VoidCallback onSavePressed;

  const MatchingForMentor({Key key, @required this.onSavePressed})
      : super(key: key);

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
        CustomButtonWidget(
            text: 'Сохранить',
            onPressed: () {
              debugPrint('Сохранить');
              onSavePressed.call();
            }),
        const SizedBox(height: 45),
      ],
    );
  }
}
