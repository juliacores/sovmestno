import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class AuthActions extends StatelessWidget {
  const AuthActions({Key? key, this.regCallback, this.authCallback})
      : super(key: key);

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
          CustomButtonWidget.white(
            title: 'Зарегестрироваться',
            callback: regCallback,
          ),
          const SizedBox(width: 28),
          CustomButtonWidget.blue(
            title: 'Войти',
            callback: authCallback,
          ),
        ],
      ),
    );
  }
}
