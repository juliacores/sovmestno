import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/themes.dart';
<<<<<<< HEAD
import 'package:sovmestno/presentation/registration/form_main.dart';
import 'package:sovmestno/presentation/registration/forms/mentor_skills.dart';
import 'package:sovmestno/presentation/registration/forms/user_information.dart';
=======
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sovmestno',
        theme: mainTheme(),
<<<<<<< HEAD
        initialRoute: Routes.authRoute,
        routes: Routes.customRoutes,
=======
        initialRoute: '/authorization',
        routes: customRoutes,
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1
      ),
    );
  }
}
