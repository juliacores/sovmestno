import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/widgets/buttons/application_button_widget.dart';

class ApplicationSend extends StatefulWidget {
  ApplicationSend({Key? key}) : super(key: key);

  @override
  State<ApplicationSend> createState() => _ApplicationSendState();
}

class _ApplicationSendState extends State<ApplicationSend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          const Text(
            'Это сообщение будет отправлено ментору:',
            style: Styles.colorBlack14bold,
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(ConstText.cardText, style: Styles.hintColor14Bold),
            ),
            height: 333,
            width: 476,
            decoration: BoxDecoration(
              // color: Colors.white,
              border: Border.all(color: AppColors.hintColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          const SizedBox(
            height: 33,
          ),
          Row(
            children: const [
              SizedBox(
                width: 234,
              ),
              ApplicationButtonWidget(
                name: 'Отправить',
                width: 226,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
