import 'package:flutter/material.dart';
import 'package:sovmestno/modules/form/form_screens/form_main_screens.dart';

import '../modules/registration/registration_screens/authorization_screen.dart';
import '../modules/registration/registration_screens/login_by_email_screen.dart';
import '../modules/registration/registration_screens/registration_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  //registration screens
  '/authorization': (context) => const AuthorizationScreen(),
  '/loginByEmail': (context) => const LoginByEmail(),
  '/registration': (context) => const RegistrationScreen(),

  //form screens
  '/main_form_screen': (context) => const FormMainScreen(),
};
