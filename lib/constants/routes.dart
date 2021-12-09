import 'package:flutter/material.dart';
import 'package:sovmestno/modules/form/form_screens/main_form.dart';
import 'package:sovmestno/modules/form/form_screens/mentor_skills.dart';
import 'package:sovmestno/modules/registration/registration_screens/authorization_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/login_by_email_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/registration_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  //TODO посмотреть как в преокте Valtab2b сделано. переделать по аналогии
  
  '/authorization': (context) => const AuthorizationScreen(),
  '/loginByEmail': (context) => const LoginByEmail(),
  '/registration': (context) => const RegistrationScreen(),
  '/main_form': (context) => const MainForm(),
  '/mentor_skills': (context) => const MentorSkills()
};
