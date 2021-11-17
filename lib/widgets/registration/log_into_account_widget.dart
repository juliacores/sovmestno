import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/screens/registration/login_by_email_screen.dart';

class LogIntoAccountWidget extends StatelessWidget {
  const LogIntoAccountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Уже есть аккаунт?',
          style: TextStyle(color: MyColors.hintColor),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginByEmail()),
                    );
          },
          child: Text(
            'Войти',
            style: TextStyle(
              color: MyColors.backgroundButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
