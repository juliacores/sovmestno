import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/presentation/registration/user_provider.dart';
import 'package:sovmestno/services/firestore_service.dart';

import '../../domain/models/user.dart';
import '../../services/auth_service.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);
  final AuthService _authService = AuthService();
  final FirestoreApi _firestoreApi = FirestoreApi();

  _isAuth(context) async {
    if (_authService.currentUser != null) {
      UserModel? _user =
          await _firestoreApi.getUser(userId: _authService.currentUser.uid);
      if (_user != null) {
        Provider.of<UserComplitedRegisterProvider>(context, listen: false)
            .user = _user;
        RegistrationSteps _step =
            checkRegistrationSteps(_user) ?? RegistrationSteps.notLogined;

        if (_step == RegistrationSteps.matching)
          //TODO goto dashboard
          return;
        else
          Navigator.of(context).pushReplacementNamed(Routes.regRoute);
        return;
      }
    }
    Navigator.of(context).pushReplacementNamed(Routes.authRoute);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance
        ?.addPostFrameCallback((timeStamp) => _isAuth(context));

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
