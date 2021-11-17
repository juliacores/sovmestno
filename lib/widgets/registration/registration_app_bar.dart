import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/screens/registration/login_by_email_screen.dart';
import 'package:sovmestno/screens/registration/registration_screen.dart';

class RegistrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  const RegistrationAppBar({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          left: 70.0,
        ),
        child: Text(
          title,
          style: Styles.mainTitle,
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
                  child: Text(
                    'Зарегестрироваться',
                    style: TextStyle(color: MyColors.backgroundButton),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(
                        width: 1.0,
                        color: MyColors.backgroundButton,
                      ),
                    ),
                  ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginByEmail()),
                    );
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
