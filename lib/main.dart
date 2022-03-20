import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/themes.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: "AIzaSyCRmcDX15i8yrMvAWO8jrbrz0vakIOQ30Q",
    authDomain: "sovmestno-co.firebaseapp.com",
    databaseURL: "https://sovmestno-co-default-rtdb.europe-west1.firebasedatabase.app",
    projectId: "sovmestno-co",
    storageBucket: "sovmestno-co.appspot.com",
    messagingSenderId: "167388937151",
    appId: "1:167388937151:web:bb1aa86f404a252245ff0a",
    measurementId: "G-SDSKYZ1YNS",
  ));

  FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
  FirebaseStorage.instance.useStorageEmulator('localhost', 9199);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<LoginProvider>(
            create: (_) => LoginProvider(),
          ),
        ],
    child: ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sovmestno',
        theme: mainTheme(),
        initialRoute: Routes.authRoute,
        routes: Routes.customRoutes,
      ),
    ));
  }
}
