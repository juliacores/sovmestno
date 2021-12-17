import 'package:flutter/material.dart';
import 'package:sovmestno/modules/form/form_screens/form_main_screens.dart';
import 'package:sovmestno/modules/registration/registration_screens/authorization_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/login_by_email_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/registration_screen.dart';

class Routes {
  static const authorization = '/';
  static const loginByEmail = '/login_by_email';
  static const registration = '/registration';
  static const mainFormScreen = '/main_form_screen';


  static final Map<String, Widget Function(BuildContext)> routes = {
    

    authorization: (context) => const AuthorizationScreen(),
    loginByEmail: (context) => const LoginByEmail(),
    registration: (context) => const RegistrationScreen(),
    mainFormScreen: (context) => const FormMainScreen(),

  };
}
