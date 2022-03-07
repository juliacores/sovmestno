import 'package:firebase_auth/firebase_auth.dart';

//TODO use freezed to convert json object to dart class and back to json
//freezed + json_annotation
//flutter packages pub run build_runner watch while you developing
class UserModel {
  //TODO make required
  //other fiels will be nullable so you can understand what registration page user needs to continue
  String? id;
  //TODO add real user model - name,skills and ect.
  // email?
  UserModel({required this.id});

  UserModel.fromFirbase(User userFromFirbase) {
    id = userFromFirbase.uid;
  }
}
