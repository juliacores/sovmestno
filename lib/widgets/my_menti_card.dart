import 'package:flutter/material.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/widgets/avatar.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class MyMentiesCard extends StatelessWidget {
  // final name;
  // final String? avatarUrl;
  final _mentiesAvailable;
  final UserModel userModel;
  final String status;

  const MyMentiesCard.empty({
    Key? key,
    required this.userModel,
  })  : _mentiesAvailable = false,
        status = '';

  const MyMentiesCard.available(
      {Key? key, required this.userModel, required this.status})
      : _mentiesAvailable = true;

  @override
  Widget build(BuildContext context) {
    if (_mentiesAvailable == false) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            width: 1.0,
            color: AppColors.shadowColor,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 38),
            const Text(
              'Пока нет заявок',
              style: Styles.roboto_18_500_blue,
            ),
            SizedBox(height: 26),
            const CircleAvatar(
              radius: 61,
              backgroundColor: AppColors.emptyMentiIconColor,
              //Цвет получается не тот
              child: Icon(
                Icons.person,
                size: 100.0,
                color: AppColors.focusedBorderTextField,
              ),
            ),
            const SizedBox(height: 22),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: const Text(
                'Мы заняты поиском менти для вас! Не забывайте проверять почту.',
                style: Styles.roboroRegular,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
    } else {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            width: 1.0,
            color: AppColors.shadowColor,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 38),
            Text(userModel.name!, style: Styles.roboto_18_500_blue),
            SizedBox(height: 26),
            Avatar(
              radius: 61,
              user: userModel,
            ),
            SizedBox(height: 12),
            Text(
              userModel.carrierRole!, //menti.profession
              style: Styles.roboto_14_500_black,
            ),
            const SizedBox(height: 6),
            Text(
              'Завершено', //menti.status
              style: Styles.roboto_14_500_lightBlue,
            ),
            const SizedBox(height: 31),
            CustomButtonWidget.white(
              title: 'Подробнее',
              callback: () {},
            ),
            const SizedBox(height: 31),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(235, 237, 240, 1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0))),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '3',
                            style: Styles.mulish_18_700_grey,
                          ),
                          Text(
                            'Проведенных встреч',
                            style: Styles.roboto_14_700_lightGrey,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '1',
                            style: Styles.mulish_18_700_grey,
                          ),
                          Text(
                            'Достигнуто целей',
                            style: Styles.roboto_14_700_lightGrey,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
