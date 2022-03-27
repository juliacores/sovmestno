import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:sovmestno/domain/models/request.dart';

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

  Future<Request> getRequestById(String requestId) async =>Request.fromJson((await requests.child(requestId).get()).value as Map<String, dynamic>);

  Stream getRequestStream(String requestId) => requests.onValue.map((event) {
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
