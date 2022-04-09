import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sovmestno/domain/models/meeting.dart';
import 'package:sovmestno/domain/models/session.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/exceptions/firestore_api_exception.dart';

class FirestoreApi {
  final CollectionReference _usersCollection =
  FirebaseFirestore.instance.collection('users');
  final CollectionReference _sessionsCollection =
  FirebaseFirestore.instance.collection('sessions');
  // final CollectionReference requestCollection =
  // FirebaseFirestore.instance.collection("requests");

  Future<void> addUser({required UserModel user}) async {
    try {
      final userDocument = _usersCollection.doc(user.id.toString());
      return userDocument.set(user.toJson());
      // await clientCollection.add(user.toJson()).then((value) {
      //   print("User Added${value}");
      // }).catchError((error) => print("Failed to add user: $error"));
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<void> updateUser({required UserModel user}) async {
    try {
      final userDocument = _usersCollection.doc(user.id.toString());
      await userDocument.update(user.toJson());
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update user',
        devDetails: '$error',
      );
    }
  }

  Future<UserModel?> getUser({ String? userId}) async {
    try {
      if (userId!=null) {
        final docref = _usersCollection.doc(userId);
        final userDoc = await docref.get();
        if (!userDoc.exists) {
          return null;
        }

        Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;

        return UserModel.fromJson(userData);
      } else {
        throw FirestoreApiException(
            message:
            'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
      }
    } catch (err) {
      throw FirestoreApiException(message: 'Can\'t load client from firebase');
    }
  }

  Future<List<Map<String, dynamic>>?> getMentors() async {
    try {
      final docref = _usersCollection.where('status', isEqualTo: 0);
      final userDoc = await docref.get();

      final docData = userDoc.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
      return docData;
    } catch (err) {
      throw FirestoreApiException(message: err.toString());
    }
  }


  Future<String?> addSession({required Session session}) async {
    try {
      final id = await _sessionsCollection.add(session.toJson());
      await _sessionsCollection.doc(id.id).update(session.copyWith(id: id.id).toJson());
      //update Mentor
      final mentor = await getUser(userId: session.request!.selectedMentorId!);
      await updateUser(user: mentor!.copyWith(sessions: [...(mentor.sessions ?? []),id.id]));
      //update Menti
      final menti = await getUser(userId: session.request!.mentiUserId!);
      await updateUser(user: menti!.copyWith(sessions: [...(menti.sessions ?? []),id.id]));
       return id.id;
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new request',
        devDetails: '$error',
      );
    }
  }

  Future<Session?> getSession({required String sessionId}) async {
    try {
      final docref = _sessionsCollection.doc(sessionId);
      final sessionDoc = await docref.get();
      if (!sessionDoc.exists) {
        return null;
      }
      Map<String, dynamic> sessionData = sessionDoc.data() as Map<String, dynamic>;
      return Session.fromJson(sessionData);
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to get session with id $sessionId',
        devDetails: '$error',
      );
    }
  }

}
