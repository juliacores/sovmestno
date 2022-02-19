import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/styles.dart';

class AuthActions extends StatelessWidget {
  const AuthActions({Key? key, this.regCallback, this.authCallback}) : super(key: key);

  final regCallback;
  final authCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 105),
      child: Row(
        children: [
          Container(
            width: 0.5,
            height: 49,
            color: Colors.grey,
          ),
          const SizedBox(width: 35),
          SizedBox(
            width: 207,
            height: 40,
            child: ElevatedButton(
              child: const Text(
                'Зарегестрироваться',
                style: TextStyle(color: AppColors.backgroundButton),
              ),
              onPressed: regCallback,
              style: Styles.registrationButtonStyle,
            ),
          ),
          const SizedBox(width: 28),
          SizedBox(
            width: 98,
            height: 40,
            child: ElevatedButton(
              child: const Text(
                'Войти',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: authCallback,
              style: ElevatedButton.styleFrom(
                primary: AppColors.backgroundButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
