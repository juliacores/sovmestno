import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/strings.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/user_biography_widget.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';
import 'package:sovmestno/widgets/chips_widget.dart';

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
        Wrap(
            spacing: 10,
            runSpacing: 20,
            direction: Axis.horizontal,
            children: charecteristics
                .map((e) => ChipsWidget(
              title: e,
              selected:
              Provider.of<UserComplitedRegisterProvider>(context)
                  .userCharacteristics
                  .contains(e),
              onSelected: (bool selected) {
                final newList =
                    Provider.of<UserComplitedRegisterProvider>(
                        context,
                        listen: false)
                        .userCharacteristics;
                if (selected) {
                  newList.add(e);
                } else {
                  newList.remove(e);
                }
                Provider.of<UserComplitedRegisterProvider>(context,
                    listen: false)
                    .userCharacteristics = newList;
              },
            ))
                .toList()),
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
