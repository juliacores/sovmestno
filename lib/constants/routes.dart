import 'package:flutter/material.dart';
import 'package:sovmestno/presentation/auth/authorization_screen.dart';
import 'package:sovmestno/presentation/registration_screen/form_main.dart';
import 'package:sovmestno/presentation/registration_screen/forms/matching_for_mentor.dart';
import 'package:sovmestno/presentation/registration_screen/forms/mentor_skills.dart';

import '../presentation/choose_mentor_screen/choose_mentor_screen.dart';
import '../presentation/splash/splash_screen.dart';

class Routes {
  static const String authRoute = '/authorization';
  static const String regRoute = '/registration';
  static const String requestRoute = '/request';

  // static const String loginRoute = '/loginByEmail';
  // static const String regRoute = '/registration';

  static final Map<String, WidgetBuilder> customRoutes = {
    //registration screens
    '/': (context) => Splash(),
    authRoute: (context) => const AuthorizationScreen(),
    regRoute: (context) => FormMainScreen(),
    requestRoute: (context) => ChooseMentorScreen(),

    // loginRoute: (context) => const LoginByEmail(),
    // regRoute: (context) => const RegistrationScreen(),
//TODO add consts for other routes
    //form screens
    // '/main_form': (context) => const MainForm(),
    '/mentor_skills': (context) => const MentorSkills(),
    '/matching_for_mentor': (context) => const MatchingForMentor(),
    // '/user_information': (context) => const UserInformation()
  };
}
