import 'package:firebase_auth/firebase_auth.dart';
import 'package:sovmestno/domain/models/user.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future? singInWithEmailAndPassword(String email, String password) async {
    try {
      final authResault = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = authResault.user;
      return UserModel.fromFirbase(user!);
    } catch (e) {
      throw Exception('Eror Fetching User');
    }
  }

  Future? registInWithEmailAndPassword(String email, String password) async {
    try {
      final authResault = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = authResault.user;
      return UserModel.fromFirbase(user!);
    } catch (e) {
      throw Exception('Eror Fetching User');
    }
  }

  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }

  Stream<UserModel> get currentUser {
    return _firebaseAuth.authStateChanges().map((user) => user != null
        ? UserModel.fromFirbase(user)
        : throw Exception('userfrom fairbase null! Cant map'));
  }
}
