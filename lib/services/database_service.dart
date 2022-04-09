import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';

class RealtimeBDApi {
  final database = FirebaseDatabase.instance;
  DatabaseReference requests = FirebaseDatabase.instance.ref('requests');

  Future<Request> addRequest(Request request) async {
    final __r = requests.push();
    print('created request with path ${__r.path}');
    await __r.set(request.copyWith(id: __r.path.split('/').last).toJson());
    return Request.fromJson((await __r.get()).value as Map<String, dynamic>);
  }

  Future<bool> updateRequest(Request request) async {
    // await requests.get();
    final _r = requests.child(request.id!);
    if ((await _r.get()).exists) {
      await _r.set(request.toJson());
    } else {
      return false;
    }
    // requests.push();
    return true;
  }

  Future<Request?> getRequestById(String requestId) async {
    final _r = (await requests.child(requestId).get()).value;
    if (_r == null) return null;
    return Request.fromJson(_r as Map<String, dynamic>);
  }

  Future<List<Request?>> getRequestsByUserId(String userId, AccountRole userRole) async {
    final _r = (await requests.get()).children.map((e) {
      if(e.value!= null){
        final __r = Request.fromJson(e.value as Map<String, dynamic>);
        if(userRole == AccountRole.menti) {
          if (__r.mentiUserId == userId) {
            return __r;
          }
        } else if (__r.selectedMentorId == userId) {
          return __r;
        }
      }
    }).toList();
     return _r;
  }

  Stream getRequestStream(String? requestId) => requests.onValue.map((event) {
        print('got event like this: ${event.snapshot}');
        if (event.snapshot.value != null) {
          final Request _request =
              Request.fromJson(event.snapshot.value as Map<String, dynamic>);
          if (_request.id == requestId) {
            return event.snapshot.value;
          }
        }
      });
}
