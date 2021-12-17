import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/form/form_widgets/dropdown_form_field_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/mentor_skills_widget.dart';
import 'package:sovmestno/widgets/custom_button_widget.dart';

class MentorSkills extends StatelessWidget {
  final VoidCallback onSavePressed;

  const MentorSkills({
    Key key,
    @required this.onSavePressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MentorSkillsWidget(),
        const SizedBox(height: 40),
        const Text('Ваши навыки', style: TextStyle(fontSize: 28)),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 0.2,
          color: MyColors.backgroundButton,
        ),
        const SizedBox(height: 30),
        const Text('С развитием каких навыков вы могли бы помочь другим?',
            style: TextStyle(fontSize: 18)),
        const SizedBox(height: 40),
        const DropdownFormFieldWidget(),
        const SizedBox(height: 30),
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
