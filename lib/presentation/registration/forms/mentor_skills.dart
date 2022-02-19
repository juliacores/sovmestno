import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/registration/forms/form_widgets/chips_widget.dart';
import 'package:sovmestno/presentation/registration/forms/form_widgets/dropdown_form_field_widget.dart';
import 'package:sovmestno/presentation/registration/forms/form_widgets/mentor_skills_widget.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class MentorSkills extends StatelessWidget {
  const MentorSkills({Key? key,  this.onSavePressed}) : super(key: key);
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
        const SizedBox(height: 38),
        const MentorSkillsWidget(),
        const SizedBox(height: 40),
        const Text('Ваши навыки', style: TextStyle(fontSize: 28)),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 0.2,
          color: AppColors.backgroundButton,
        ),
        const SizedBox(height: 30),
        const Text('С развитием каких навыков вы могли бы помочь другим?',
            style: TextStyle(fontSize: 18)),
        const SizedBox(height: 40),
        const DropdownFormFieldWidget(),
        /* ДЛЯ "Dropdown" НЕТ категорий !!!!!!!!!!! */
        const SizedBox(height: 30),
        CustomButtonWidget(
            title: 'Сохранить',
            callback: onSavePressed),
        const SizedBox(height: 45),
      ],
    );
  }
}
