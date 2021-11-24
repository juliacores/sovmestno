import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/screens/form/main_form.dart';

class RegistrationButtonWidget extends StatelessWidget {
  const RegistrationButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            child: const Text(
              'Зарегестрироваться',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const  MainForm()));
            },
            style: ElevatedButton.styleFrom(
              primary: MyColors.backgroundButton,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Нет аккаунта?',
                style: TextStyle(color: MyColors.hintColor),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Зарегестрироваться',
                style: TextStyle(
                  color: MyColors.backgroundButton,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
