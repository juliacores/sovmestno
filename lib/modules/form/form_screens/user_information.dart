import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/form/form_widgets/chips_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/form_app_bar.dart';
import 'package:sovmestno/modules/form/form_widgets/personal_qualities.dart';
import 'package:sovmestno/modules/form/form_widgets/user_biography.dart';
import 'package:sovmestno/widgets/save_button_widget.dart';

class AboutMeForm extends StatefulWidget {
  const AboutMeForm({Key key}) : super(key: key);

  @override
  _AboutMeFormState createState() => _AboutMeFormState();
}

class _AboutMeFormState extends State<AboutMeForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const FormAppBar(title: 'Совместно'),
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
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main_form');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: MyColors.backgroundButton,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Назад',
                      style: TextStyle(
                          color: MyColors.backgroundButton, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const ChipsWidget(),
              const SizedBox(height: 38),
              const UserBiography(),
              const SizedBox(height: 40),
              const Text('Личностные качества', style: TextStyle(fontSize: 28)),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
              ),
              const SizedBox(height: 30),
              const Text(
                  'Как бы вы описали себя? Этот вопрос не обязателен, но он поможет подобрать для вас подходящих людей.',
                  style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              const PersonalQualities(),
              const SizedBox(height: 45),
              SaveButtonWidget(onPressed: () {
                print('Сохранить');
              }),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
