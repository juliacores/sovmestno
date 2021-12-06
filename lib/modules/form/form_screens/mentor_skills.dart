import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/form/form_widgets/chips_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/dropdown_form_field_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/form_app_bar_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/mentor_skills_widget.dart';
import 'package:sovmestno/widgets/back_button_widget.dart';
import 'package:sovmestno/widgets/save_button_widget.dart';

class MentorSkills extends StatelessWidget {
  const MentorSkills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: FormAppBar(
        title: 'Совместно',
        name: 'Татьяна Иванова',
        mentor: 'Ментор',
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 145, right: 337),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              const Text(
                'Анкета',
                style:
                    TextStyle(fontSize: 36, color: MyColors.backgroundButton),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
              ),
              const SizedBox(height: 22),
              BackButtonWidget(
                onPressed: () {
                  debugPrint('Nazad/Nazad');
                },
              ),
              const SizedBox(height: 20),
              ChipsWidget(
                title: 'Основное',
                y: 0,
                x: 0,
                textColor: Colors.white,
                backgroundColor: MyColors.backgroundButton,
              ),
              const SizedBox(height: 38),
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
              /* ДЛЯ "Dropdown" НЕТ категорий !!!!!!!!!!! */
              const SizedBox(height: 30),
              SaveButtonWidget(onPressed: () {
                debugPrint('Сохранить');
              }),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
