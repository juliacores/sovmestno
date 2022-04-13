import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/strings.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/dropdown_form_field_widget.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';
import 'package:sovmestno/widgets/chips_widget.dart';

class MentorSkills extends StatelessWidget {
  const MentorSkills({Key? key, this.onSavePressed}) : super(key: key);
  final onSavePressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const SizedBox(height: 38),
        Text(
          (Provider.of<UserComplitedRegisterProvider>(context, listen: false)
                      .user!
                      .status! ==
                  AccountRole.mentor
              ? 'Расскажите о своем профессиональном опыте и компетенциях. (макс. 500 символов)'
              : 'Опишите свой запрос к ментору. (макс. 500 символов)'),
          style: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 960,
          height: 160,
          child: TextField(
            controller: Provider.of<UserComplitedRegisterProvider>(context)
                .experienceController,
            maxLines: 10,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: ConstText.hintBiography,
              hintStyle: const TextStyle(color: AppColors.hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: AppColors.borderTextField,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.focusedBorderTextField,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Text(
            Provider.of<UserComplitedRegisterProvider>(context, listen: false)
                        .user!
                        .status! ==
                    AccountRole.mentor
                ? 'Ваши навыки'
                : 'Ваши цели',
            style: const TextStyle(fontSize: 28)),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 0.2,
          color: AppColors.backgroundButton,
        ),
        const SizedBox(height: 30),
        Text(
            Provider.of<UserComplitedRegisterProvider>(context, listen: false)
                        .user!
                        .status! ==
                    AccountRole.mentor
                ? 'С развитием каких навыков вы могли бы помочь другим?'
                : 'Выберите для начала 1 цель, потом сможете добавить',
            style: const TextStyle(fontSize: 18)),
        const SizedBox(height: 40),
        Wrap(
            spacing: 10,
            runSpacing: 30,
            direction: Axis.horizontal,
            children: skills
                .map((e) => ChipsWidget(
                      title: e,
                      selected:
                          Provider.of<UserComplitedRegisterProvider>(context)
                              .userSkills
                              .contains(e),
                      onSelected: (bool selected) {
                        final newList =
                            Provider.of<UserComplitedRegisterProvider>(context,
                                    listen: false)
                                .userSkills;
                        if (selected) {
                          newList.add(e);
                        } else {
                          newList.remove(e);
                        }
                        Provider.of<UserComplitedRegisterProvider>(context,
                                listen: false)
                            .userSkills = newList;
                      },
                    ))
                .toList()),


        const SizedBox(height: 30),
        CustomButtonWidget.blue(title: 'Сохранить', callback: onSavePressed),
        const SizedBox(height: 45),
      ],
    );
  }
}
