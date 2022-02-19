import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class LogIntoAccountWidget extends StatelessWidget {
  const LogIntoAccountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Уже есть аккаунт?',
          style: TextStyle(color: MyColors.hintColor),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/loginByEmail');
          },
          child: const Text(
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
