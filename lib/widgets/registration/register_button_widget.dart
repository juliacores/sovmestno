import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        child: const Text(
          'Зарегестрироваться',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: MyColors.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
