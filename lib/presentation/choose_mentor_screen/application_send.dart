import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/presentation/choose_mentor_screen/request_provider.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class ApplicationSend extends StatelessWidget {
  const ApplicationSend({Key? key, this.controller, this.callback}) : super(key: key);
  final controller;
  final callback;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 70,
        ),
        const Text(
          'Это сообщение будет отправлено ментору:',
          style: Styles.colorBlack14bold,
        ),
        SizedBox(
          child: TextField(
            controller: controller,
            maxLines: 10,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: ConstText.hintBiography,
              hintStyle: const TextStyle(color: AppColors.hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: AppColors.borderTextField,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.focusedBorderTextField,
                  width: 0.5,
                ),
              ),
            ),
          ),
          height: 333,
          width: 476,

        ),
        const SizedBox(
          height: 33,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget.blue(
              title: 'Отправить',callback: Provider.of<RequestProvider>(context).requestSend? null: callback
            ),
          ],
        ),
      ],
    );
  }
}
