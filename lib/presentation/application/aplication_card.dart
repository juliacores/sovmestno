import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/application/application_send.dart';
import 'package:sovmestno/presentation/application/application_widgets/application_text_widget.dart';
import 'package:sovmestno/presentation/application/application_widgets/applicationcard_text_widget.dart';

class ApplicationCard extends StatefulWidget {
  ApplicationCard({Key? key}) : super(key: key);

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
              boxShadow: [
                new BoxShadow(
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
                        SizedBox(
                          width: 70,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Татьяна Иванова',
                              style: TextStyle(
                                color: AppColors.backgroundButton,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 14),
                            const Text(
                              'Москва, 35 лет',
                              style: TextStyle(
                                color: AppColors.hintColor,
                                fontSize: 14,
                              ),
                            ),
                            const Text('Директор по маркетингу',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ApplicationCardTextWidget(),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Center(
                            child: const Text(
                              'SMM',
                              style: TextStyle(
                                  color: AppColors.hintColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          height: 33,
                          width: 56,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(color: AppColors.hintColor),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                          child: Center(
                            child: const Text(
                              'Менеджмент \nкоманды',
                              style: TextStyle(
                                  color: AppColors.hintColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          height: 33,
                          width: 141,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(color: AppColors.hintColor),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Container(
                          child: Center(
                            child: const Text(
                              'Контексная \nреклама',
                              style: TextStyle(
                                  color: AppColors.hintColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          height: 33,
                          width: 130,
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(color: AppColors.hintColor),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          SizedBox(
            width: 99,
          ),
          ApplicationSend(),
        ],
      ),
    );
  }
}
