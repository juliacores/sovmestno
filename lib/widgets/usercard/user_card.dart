import 'package:flutter/material.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';
import 'package:sovmestno/widgets/chips_widget.dart';
import 'package:sovmestno/widgets/usercard/text_for_card.dart';

import '../../domain/models/user.dart';
import 'avatar_for_card_widget.dart';


class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 36,
                ),
                AvatarForCard(
                  userModel: user,
                ),
                const SizedBox(
                  width: 79,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextForCard(userModel: user),
                    Text('С чем могу помочь:', style: Styles.colorBlack14bold),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                        spacing: 20,
                        runSpacing: 35,
                        direction: Axis.horizontal,
                        children: user.skills!
                            .map((e) => ChipsWidget(title: e))
                            .toList()
                      //   CardButtom(
                      //       name: 'SMM', height: 24, width: 61, onTap: () {}),
                      //   const SizedBox(
                      //     width: 13,
                      //   ),
                      //   CardButtom(
                      //       name: 'Менеджмент команды',
                      //       height: 24,
                      //       width: 153,
                      //       onTap: () {}),
                      //   const SizedBox(
                      //     width: 13,
                      //   ),
                      //   CardButtom(
                      //       name: 'Контексная реклама',
                      //       height: 24,
                      //       width: 141,
                      //       onTap: () {}),
                      // ],
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CustomButtonWidget.blue(title: 'Выбрать этого ментора')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
