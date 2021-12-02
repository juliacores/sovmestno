import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/registration/registration_widgets/registration_app_bar.dart';
import 'package:sovmestno/modules/registration/registration_widgets/registration_widget.dart';


class LoginByEmail extends StatefulWidget {
  const LoginByEmail({Key key}) : super(key: key);

  @override
  _LoginByEmailState createState() => _LoginByEmailState();
}

class _LoginByEmailState extends State<LoginByEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const RegistrationAppBar(title: 'Совместно'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 104, right: 104),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              const Text(
                'Вход в аккаунт',
                style:
                    TextStyle(fontSize: 36, color: MyColors.backgroundButton),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
              ),
              const SizedBox(height: 19),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/authorization');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: MyColors.backgroundButton,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Назад',
                      style: TextStyle(
                          color: MyColors.backgroundButton, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),
              const Registration(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
