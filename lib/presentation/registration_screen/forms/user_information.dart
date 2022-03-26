import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/personal_qualities_widget.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/user_biography_widget.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class UserInformation extends StatelessWidget {
  final VoidCallback onSavePressed; 

  const UserInformation({
    Key? key,
    required this.onSavePressed, 
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserBiography(),
        const SizedBox(height: 40),
        const Text('Личностные качества', style: TextStyle(fontSize: 28)),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 0.2,
          color: AppColors.backgroundButton,
        ),
        const SizedBox(height: 30),
        const Text(
            'Как бы вы описали себя? Этот вопрос не обязателен, но он поможет подобрать для вас подходящих людей.',
            style: TextStyle(fontSize: 18)),
        const SizedBox(height: 20),
        const PersonalQualities(),
        const SizedBox(height: 45),
        CustomButtonWidget.blue(
            title: 'Сохранить',
            callback: () {
              debugPrint('Сохранить');
              onSavePressed.call();
            }),
        const SizedBox(height: 45),
      ],
    );
  }
}
