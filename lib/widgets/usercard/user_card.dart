import 'package:flutter/material.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';
import 'package:sovmestno/widgets/chips_widget.dart';
import 'package:sovmestno/widgets/usercard/text_for_card.dart';

import '../../domain/models/user.dart';
import 'avatar_for_card_widget.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final bool vertical;
  final callback;

  const UserCard({
    Key? key,
    required this.user,
    this.vertical = false,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            if (!vertical)
            Row(
              children: [
                const SizedBox(
                  width: 36,
                ),
                AvatarForCard(userModel: user, vertical: vertical),
                const SizedBox(
                  width: 79,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextForCard(userModel: user),
                    const Text('С чем могу помочь:',
                        style: Styles.colorBlack14bold),
                    const SizedBox(
                      height: 8,
                    ),
                     Wrap(
                            spacing: 10,
                            // runSpacing: 35,
                            direction: Axis.horizontal,
                            children: user.skills!
                                .map((e) => ChipsWidget(title: e))
                                .toList()),
                    const SizedBox(
                      width: 13,
                    ),
                  ],
                ),
              ],
            )
            else
              ...[
                AvatarForCard(userModel: user, vertical: vertical),
                const SizedBox(
                  width: 36,
                ),
                TextForCard(userModel: user),
                const Text('С чем могу помочь:',
                    style: Styles.colorBlack14bold),
                const SizedBox(
                  height: 8,
                ),
                Wrap(
                  spacing: 10,
                  // runSpacing: 35,
                    direction: Axis.horizontal,
                    children: user.skills!
                        .map((e) => ChipsWidget(title: e))
                        .toList()),
                const SizedBox(
                  width: 13,
                ),
              ],

            const SizedBox(
              height: 18,
            ),
            if (!vertical)
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButtonWidget.blue(
                      title: 'Выбрать этого ментора', callback: callback)
                ],
              ),
          ],
        ),
      ),
    );
  }
}
