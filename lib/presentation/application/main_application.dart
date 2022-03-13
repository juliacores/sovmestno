import 'package:flutter/material.dart';
import 'package:sovmestno/presentation/application/application_widgets/application_image_widget.dart';
import 'package:sovmestno/presentation/application/application_widgets/application_text_widget.dart';
import 'package:sovmestno/widgets/buttons/card_application_button.dart';

import '../../widgets/buttons/application_button_widget.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({Key? key}) : super(key: key);

  @override
  State<ApplicationForm> createState() => _ApplicationFormState();
}//TODO почему стейтфул?
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
          boxShadow: const [
            BoxShadow(
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
                  const SizedBox(
                    width: 36,
                  ),
                  const ApplicationImageWidget(),
                  const SizedBox(
                    width: 79,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ApplicationTextWidget(),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          CardButtom(
                              name: 'SMM', height: 24, width: 61, onTap: () {}),
                          const SizedBox(
                            width: 13,
                          ),
                          CardButtom(
                              name: 'Менеджмент команды',
                              height: 24,
                              width: 153,
                              onTap: () {}),
                          const SizedBox(
                            width: 13,
                          ),
                          CardButtom(
                              name: 'Контексная реклама',
                              height: 24,
                              width: 141,
                              onTap: () {}),
                        ],
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
                children: const [
                  SizedBox(
                    width: 701,
                  ),
                  ApplicationButtonWidget(
                      name: 'Выбрать этого ментора', height: 40, width: 226),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
