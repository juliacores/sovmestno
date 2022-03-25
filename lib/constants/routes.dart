import 'package:flutter/material.dart';
import 'package:sovmestno/presentation/registration/form_main.dart';

import 'package:sovmestno/presentation/registration/forms/main_form.dart';
import 'package:sovmestno/presentation/registration/forms/matching_for_mentor.dart';
import 'package:sovmestno/presentation/registration/forms/mentor_skills.dart';
import 'package:sovmestno/presentation/auth/authorization_screen.dart';

import '../presentation/splash/splash_screen.dart';

class Routes {
  static const String authRoute = '/authorization';
  static const String regRoute = '/registration';

  // static const String loginRoute = '/loginByEmail';
  // static const String regRoute = '/registration';

  static final Map<String, WidgetBuilder> customRoutes = {
    //registration screens
    '/': (context) => Splash(),
    authRoute: (context) => const AuthorizationScreen(),
    regRoute: (context) => FormMainScreen(),

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
