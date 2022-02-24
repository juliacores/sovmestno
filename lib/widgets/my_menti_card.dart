import 'package:flutter/material.dart';
import 'package:sovmestno/widgets/avatar.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class MyMentiesCard extends StatelessWidget {

  final String? name;
  final String? avatarUrl;

  final bool mentiesAvailable;

  const MyMentiesCard({Key? key, required this.mentiesAvailable, this.name, this.avatarUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mentiesAvailable == false ? EmptyMentiCard() : MentiCard(name: name!,);
  }
}

class EmptyMentiCard extends StatelessWidget {
  const EmptyMentiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 376,
        height: 317,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          //         boxShadow: [
          //   BoxShadow(
          //       color: Color.fromRGBO(0, 0, 0, 0.16),
          //       spreadRadius: 0,
          //       blurRadius: 16,
          //       offset: Offset(0, 8))
          // ],
        ),
        child: Column(
          children: [
            SizedBox(height: 38),
            Text(
              'Пока нет заявок',
              style: TextStyle(
                  color: Color.fromRGBO(2, 50, 112, 1),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 26),
            CircleAvatar(
              radius: 61,
              backgroundColor: Color.fromRGBO(55, 81, 255, 1), //Цвет получается не тот
              child: Icon(
                Icons.person,
                size: 100.0,
                color: Color.fromRGBO(141, 191, 255, 1),
              ),
            ),
            // ClipOval(
            //   child: Icon(
            //     Icons.person,
            //     size: 100.0,
            //     color: Color.fromRGBO(141, 191, 255, 1),
            //   ),
            // ),
            SizedBox(height: 22),
            Text(
              'Мы заняты поиском менти для вас! \nНе забывайте проверять почту.',
              style: TextStyle(
                  color: Color.fromRGBO(37, 39, 51, 1),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class MentiCard extends StatelessWidget {

  final String name;
  final String? avatarUrl;

  const MentiCard({Key? key, required this.name, this.avatarUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 376,
        height: 448,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            SizedBox(height: 38),
            Text(
              name!,
              style: TextStyle(
                  color: Color.fromRGBO(2, 50, 112, 1),
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 26),
            Avatar(radius: 61, name: name,),
            SizedBox(height: 12),
            Text(
              'Junior разработчик', //menti.profession
              style: TextStyle(
                  color: Color.fromRGBO(37, 39, 51, 1),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 6),
            Text(
              'Завершено', //menti.status
              style: TextStyle(
                  color: Color.fromRGBO(141, 191, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 31),
            SizedBox(
              width: 172,
              height: 40,
              child: ElevatedButton(
                child: const Text(
                  'Подробнее',
                  style: TextStyle(color: AppColors.backgroundButton),
                ),
                onPressed: () {},
                style: Styles.registrationButtonStyle,
              ),
            ),
            SizedBox(height: 31),
            Container(
              width: 376,
              height: 87,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(235, 237, 240, 1),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '3',
                            style: TextStyle(
                              color: Color.fromRGBO(119, 121, 134, 1),
                              fontFamily: 'Mulish',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Проведенных встреч',
                            style: TextStyle(
                              color: Color.fromRGBO(159, 162, 180, 1),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(
                              color: Color.fromRGBO(119, 121, 134, 1),
                              fontFamily: 'Mulish',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Достигнуто целей',
                            style: TextStyle(
                              color: Color.fromRGBO(159, 162, 180, 1),
                              fontFamily: 'Roboto',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
