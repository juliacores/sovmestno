import 'package:flutter/material.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/themes.dart';

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
      initialRoute: '/authorization',
      routes: customRoutes,
    );
  }
}
