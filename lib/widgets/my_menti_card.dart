import 'package:flutter/material.dart';
import 'package:sovmestno/widgets/avatar.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class MyMentiesCard extends StatelessWidget {

  final name;
  final String? avatarUrl;
  final mentiesAvailable;

  const MyMentiesCard.empty({Key? key, this.name, this.avatarUrl, }) : mentiesAvailable = false;
  const MyMentiesCard.available({Key? key, required String this.name, this.avatarUrl}) : mentiesAvailable = true;

  @override
  Widget build(BuildContext context) {
    if (mentiesAvailable == false){
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
            SizedBox(height: 38),
            Text(
              'Пока нет заявок',
              style: Styles.roboto_18_500_blue,
            ),
            SizedBox(height: 26),
            CircleAvatar(
              radius: 61,
              backgroundColor: AppColors.emptyMentiIconColor,
              //Цвет получается не тот
              child: Icon(
                Icons.person,
                size: 100.0,
                color: AppColors.focusedBorderTextField,
              ),
            ),
            SizedBox(height: 22),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Text(
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
            Text(
              name,
              style: Styles.roboto_18_500_blue
            ),
            SizedBox(height: 26),
            Avatar(
              radius: 61,
              name: name,
            ),
            SizedBox(height: 12),
            Text(
              'Junior разработчик', //menti.profession
              style: Styles.roboto_14_500_black,
            ),
            SizedBox(height: 6),
            Text(
              'Завершено', //menti.status
              style: Styles.roboto_14_500_lightBlue,
            ),
            SizedBox(height: 31),
            CustomButtonWidget.white(
              title: 'Подробнее',
              callback: () {},
            ),
            SizedBox(height: 31),
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
