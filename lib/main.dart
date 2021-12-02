import 'package:flutter/material.dart';
import 'package:sovmestno/constants/themes.dart';
import 'package:sovmestno/screens/form/main_form.dart';
import 'package:sovmestno/screens/registration/authorization_screen.dart';
import 'package:sovmestno/screens/registration/login_by_email_screen.dart';
import 'package:sovmestno/screens/registration/registration_screen.dart';

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
      home: const AuthorizationScreen(),
      routes: {
        '/authorization': (context) => const AuthorizationScreen(),
        '/loginByEmail': (context) => const LoginByEmail(),
        '/registration': (context) => const RegistrationScreen(),
        '/main_form': (context) => const MainForm(),
      },
    );
  }
}
