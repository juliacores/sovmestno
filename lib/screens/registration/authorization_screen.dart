import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/widgets/registration/log_into_account_widget.dart';
import 'package:sovmestno/widgets/registration/registration_app_bar.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key key}) : super(key: key);

  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const RegistrationAppBar(title: 'Совместно'),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            SizedBox(
              width: 655,
              height: 42,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  hintText: 'Введите ваш Email',
                  hintStyle: TextStyle(color: MyColors.hintColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: MyColors.borderTextField,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: MyColors.focusedBorderTextField,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 117,
              height: 40,
              child: ElevatedButton(
                child: const Text(
                  'Далее',
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
            ),
            const SizedBox(height: 30),
            const LogIntoAccountWidget(),
          ],
        ),
      ),
    );
  }
}
