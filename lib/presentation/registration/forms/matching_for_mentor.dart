import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/presentation/registration/forms/form_widgets/chips_widget.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class MatchingForMentor extends StatelessWidget {
  const MatchingForMentor({Key? key, this.onSavePressed}) : super(key: key);
  final onSavePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 66),
        const Text(
          'Анкета',
          style: TextStyle(fontSize: 36, color: AppColors.backgroundButton),
        ),
        const SizedBox(height: 18),
        Container(
          width: double.infinity,
          height: 0.2,
          color: AppColors.backgroundButton,
        ),
        const SizedBox(height: 22),
        BackButtonWidget(
          onPressed: () {
            debugPrint('Nazad/Nazad');
          },
        ),
        const SizedBox(height: 20),
        ChipsWidget(),
        const SizedBox(height: 40),
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
