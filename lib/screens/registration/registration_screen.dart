import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/screens/registration/authorization_screen.dart';
import 'package:sovmestno/widgets/registration_widgets/detailed_registration_widget.dart';
import 'package:sovmestno/widgets/registration_widgets/registration_app_bar.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                'Регистрация',
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AuthorizationScreen(),
                    ),
                  );
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
              const DetailedRegistrationWidget(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
