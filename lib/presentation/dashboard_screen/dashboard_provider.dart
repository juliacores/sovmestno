import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/session.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/user_session_info/user_session_screen.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/utils.dart';

class DashboardProvider extends BaseProvider {
  final RealtimeBDApi _realtimeBDApi = RealtimeBDApi();
  final FirestoreApi _firestoreApi = FirestoreApi();
  UserModel? _user;
  late BuildContext _currentContext;

  UserModel? get user => _user;

  set user(UserModel? value) {
    _user = value;
    notifyListeners();
  }

  List<Session>? _userSessions;

  List<Session>? get userSessions => _userSessions;

  set userSessions(List<Session>? value) {
    _userSessions = value;
    notifyListeners();
  }

  DashboardProvider(String userId, BuildContext context) {
    _getUserSessions(userId);
    _currentContext = context;
  }

  _getUserSessions(userId) async {
    user = await _firestoreApi.getUser(userId: userId);
    //проверяем нет ли входящих запросов на сессии
    //TODO убрать
    if (user!.status == AccountRole.mentor) {
      final List<Request?> requests = await _realtimeBDApi.getRequestsByUserId(
          user!.id!, AccountRole.mentor);
      if (requests.isNotEmpty) {
        List<String> newSessions = [];
        ///берем идешники
        ///удаляем запросы
        for (Request? r in requests) {
          if (r != null && r.createdSessionId != null) {
            newSessions.add(r.createdSessionId!);
            _realtimeBDApi.deleteRequest(r.id!);
          }
        }
        await _firestoreApi.updateUser(
            user: _user!.copyWith(
                sessions: [...(_user!.sessions ?? []), ...newSessions]));
        user = await _firestoreApi.getUser(userId: userId);
      }
    }
    //получаем каждую сессию по ид
    for (String sessionId in _user!.sessions ?? []) {
      final session = await _firestoreApi.getSession(sessionId: sessionId);
      if (session != null) {
        userSessions = [...(_userSessions ?? []), session];
      }
    }
  }

  getUser(String userId) => _firestoreApi.getUser(userId: userId);

  openUserInfo(UserModel user, Session session) {
    Navigator.of(_currentContext).pushNamed(Routes.userSessionInfoRoute,
        arguments: UserSessionArgs(user: user, session: session));
  }
}
