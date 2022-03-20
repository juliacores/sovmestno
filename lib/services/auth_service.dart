import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/firestore_service.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirestoreApi _firestoreApi = FirestoreApi();
  Future<UserModel?> singInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final authResault = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = authResault.user;
      return _firestoreApi.getUser(userId: user?.uid);
    } catch (e) {
      throw Exception('Eror Fetching User');
    }
  }

  Future? registerWithEmailAndPassword(
      {required UserModel user, required String password}) async {
    try {
      final authResault = await _firebaseAuth.createUserWithEmailAndPassword(
          email: user.email!, password: password);
      final userFromFirebase = authResault.user;
      _firestoreApi.addUser(user: user);
      return _firestoreApi.getUser(userId: userFromFirebase?.uid);
    } catch (e) {
      throw Exception('Eror Fetching User');
    }
  }

  Future<void> logOut() async {
    await _firebaseAuth.signOut();
    //TODO reset providers
    //TODO goto auth
  }

  // Stream<UserModel> get currentUser {
  //   return _firebaseAuth.authStateChanges().map((user) => user != null
  //       ? UserModel.fromFirebase(user)
  //       : throw Exception('userfrom fairbase null! Cant map'));
  // }
}
