import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class RegistrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegistrationAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Padding(
        padding: EdgeInsets.only(
          left: 70.0,
        ),
        child: Text(
          'Совместно',
          style: TextStyle(
            color: MyColors.backgroundButton,
            fontFamily: 'mak',
            fontSize: 36
          ),
        ),
      ),
      backgroundColor: MyColors.appBarColor,
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
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
                    style: TextStyle(color: MyColors.backgroundButton),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/registration');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginByEmail');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: MyColors.backgroundButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
