import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/modules/form/form_widgets/chips_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/form_app_bar_widget.dart';
import 'package:sovmestno/widgets/back_button_widget.dart';
import 'package:sovmestno/widgets/custom_button_widget.dart';

class MatchingForMentor extends StatelessWidget {
  const MatchingForMentor({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const FormAppBar(
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
              CustomButtonWidget(
                  text: 'Далее',
                  onPressed: () {
                    debugPrint('Далее');
                  }),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
