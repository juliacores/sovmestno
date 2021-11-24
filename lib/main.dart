import 'package:flutter/material.dart';
import 'package:sovmestno/screens/form/main_form.dart';
import 'package:sovmestno/screens/registration/authorization_screen.dart';

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
      //TODO set ThemeData for inputs,elevated buttons,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainForm(),
    );
  }
}
