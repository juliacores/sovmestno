import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/presentation/application/application_send.dart';
import 'package:sovmestno/presentation/application/application_widgets/applicationcard_text_widget.dart';
import 'package:sovmestno/widgets/buttons/card_application_button.dart';

class ApplicationCard extends StatefulWidget {
  const ApplicationCard({Key? key}) : super(key: key);

  @override
  State<ApplicationCard> createState() => _ApplicationState();
}

class _ApplicationState extends State<ApplicationCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: 474,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1.0,
                ),
              ],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 130,
                          child: ClipOval(
                            child: Image.network('src'),
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Татьяна Иванова',
                                style: Styles.blueColor18bold),
                            SizedBox(height: 14),
                            Text('Москва, 35 лет', style: Styles.hintColor14),
                            Text('Директор по маркетингу',
                                style: Styles.colorBlack14bold),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const ApplicationCardTextWidget(),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CardButtom(
                            name: 'SMM', height: 33, width: 56, onTap: () {}),
                        const SizedBox(
                          width: 13,
                        ),
                        CardButtom(
                            name: 'Менеджмент \nкоманды',
                            height: 33,
                            width: 141,
                            onTap: () {}),
                        const SizedBox(
                          width: 13,
                        ),
                        CardButtom(
                            name: 'Контексная \nреклама',
                            height: 33,
                            width: 130,
                            onTap: () {}),
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            width: 99,
          ),
          ApplicationSend(),
        ],
      ),
    );
  }
}
