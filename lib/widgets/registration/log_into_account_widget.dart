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
        TextButton(
          onPressed: () {},
          child: Text(
            'Уже есть аккаунт?',
            style: TextStyle(color: MyColors.hintColor),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Войти',
            style: TextStyle(
              color: MyColors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
