import 'package:flutter/material.dart';
import 'package:sovmestno/modules/form/form_screens/main_form.dart';
import 'package:sovmestno/modules/form/form_screens/matching_for_mentor.dart';
import 'package:sovmestno/modules/form/form_screens/mentor_skills.dart';
import 'package:sovmestno/modules/form/form_screens/user_information.dart';
import 'package:sovmestno/modules/registration/registration_screens/authorization_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/login_by_email_screen.dart';
import 'package:sovmestno/modules/registration/registration_screens/registration_screen.dart';

var customRoutes = <String, WidgetBuilder>{
<<<<<<< HEAD
  //registration screens
=======
  //TODO посмотреть как в преокте Valtab2b сделано. переделать по аналогии
  
>>>>>>> 73f20e23ba36eb09592b0d97abaf4ac104b42ce2
  '/authorization': (context) => const AuthorizationScreen(),
  '/loginByEmail': (context) => const LoginByEmail(),
  '/registration': (context) => const RegistrationScreen(),

  //form screens
  '/main_form': (context) => const MainForm(),
  '/mentor_skills': (context) => const MentorSkills(),
  '/matching_for_mentor': (context) => const MatchingForMentor(),
  '/user_information': (context) => const UserInformation()
  
};
