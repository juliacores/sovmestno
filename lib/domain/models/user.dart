import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? id;
  UserModel({required this.id});

  UserModel.fromFirbase(User userFromFirbase) {
    id = userFromFirbase.uid;
  }
}
