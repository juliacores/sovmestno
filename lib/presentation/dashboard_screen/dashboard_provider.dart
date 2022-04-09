import 'package:sovmestno/domain/models/session.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/utils.dart';

class DashboardProvider extends BaseProvider {
  final RealtimeBDApi _realtimeBDApi = RealtimeBDApi();
  final FirestoreApi _firestoreApi = FirestoreApi();
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? value){
    _user = value;
    notifyListeners();
  }

  List<Session>? _userSessions;

  List<Session>? get userSessions => _userSessions;

  set userSessions(List<Session>? value) {
    _userSessions = value;
    notifyListeners();
  }

  DashboardProvider(String userId) {
    _getUserSessions(userId);
  }

  _getUserSessions(userId) async {
    user = await _firestoreApi.getUser(userId: userId);
    for(String sessionId in _user!.sessions ?? []){
      final session = await _firestoreApi.getSession(sessionId:sessionId);
      if(session!=null) {
        userSessions = [...(_userSessions ?? []), session];
      }
    }

  }

  getUser(String userId) => _firestoreApi.getUser(userId: userId);
}
