import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/application/application_widgets/application_image_widget.dart';
import 'package:sovmestno/presentation/application/application_widgets/application_text_widget.dart';

import 'application_widgets/application_button_widget.dart';

class ApplicationForm extends StatefulWidget {
  ApplicationForm({Key? key}) : super(key: key);

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        height: 297,
        width: 953,
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 36,
                  ),
                  ApplicationImageWidget(),
                  SizedBox(
                    width: 79,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ApplicationTextWidget(),
                      SizedBox(
                        height: 8,
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
                            height: 24,
                            width: 61,
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
                                'Менеджмент команды',
                                style: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: 24,
                            width: 153,
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
                                'Контексная реклама',
                                style: TextStyle(
                                    color: AppColors.hintColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            height: 24,
                            width: 141,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              border: Border.all(color: AppColors.hintColor),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 13,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 701,
                  ),
                  ApplicationButtonWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
