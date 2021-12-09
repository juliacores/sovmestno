import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/themes.dart';
import 'package:sovmestno/modules/form/form_screens/form_main.dart';
import 'package:sovmestno/modules/form/form_screens/mentor_skills.dart';
import 'package:sovmestno/modules/form/form_screens/user_information.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sovmestno',
        theme: mainTheme(),
        home: const FormMainScreen(),
        // home:   const MentorSkills(),
        // initialRoute: '/authorization',
        routes: customRoutes,
      ),
    );
  }
}
