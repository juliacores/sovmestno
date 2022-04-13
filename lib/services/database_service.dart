import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/firestore_service.dart';

import 'helpers/find_in_list.dart';

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

  Future<void> deleteRequest(String requestId) =>
      requests.child(requestId).remove();

  Future<List<Request?>> getRequestsByUserId(
      String userId, AccountRole userRole) async {
    final db = await requests.get();

    if (db.exists) {
      final _r = (await requests.get()).children.map((e) {
        if (e.value != null) {
          final __r = Request.fromJson(e.value as Map<String, dynamic>);
          if (userRole == AccountRole.menti) {
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
    return [];
  }

  Stream<Request?> getRequestStream(String? requestId) =>
      requests.onValue.map((event) {
        print('got event like this: ${event.snapshot.value}');
        if (event.snapshot.value != null) {
          try {
            return Request.fromJson(
                (event.snapshot.value as Map<String, dynamic>)[requestId]);
          } catch (e) {
            // return null;
          }
          // final Request _request =
          //     Request.fromJson(event.snapshot.value as Map<String, dynamic>);
          // if (_request.id == requestId) {
          //   return event.snapshot.value;
          // }
        }
        return null;
      });

  Future<void> findMentor(Request request, FirestoreApi api) async {
    final mentorList = await api.getMentors();
    final currentUser = await api.getUser(userId: request.mentiUserId);
    final selectedMentors = mentorList!.where(
        (element) => compareLists(element.skills!, currentUser!.skills!));
    updateRequest(request.copyWith(
        mentorIds: selectedMentors.map((e) => e.id!).toList()));
  }
}
