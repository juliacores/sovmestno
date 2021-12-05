import 'package:flutter/material.dart';
import 'package:sovmestno/constants/themes.dart';
import 'package:sovmestno/modules/form/form_screens/user_information.dart';
import 'package:sovmestno/modules/form/form_screens/main_form.dart';
import 'package:sovmestno/modules/registration/registration_screens/authorization_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/login_by_email_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sovmestno',
      theme: mainTheme(),
      home: const AboutMeForm(),
      routes: {
        '/authorization': (context) => const AuthorizationScreen(),
        '/loginByEmail': (context) => const LoginByEmail(),
        '/registration': (context) => const RegistrationScreen(),
        '/main_form': (context) => const MainForm(),
      },
    );
  }
}
