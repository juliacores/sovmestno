import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sovmestno/domain/models/meeting.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/exceptions/firestore_api_exception.dart';

class FirestoreApi {
  final CollectionReference userCollection =
  FirebaseFirestore.instance.collection('users');
  final CollectionReference meetingCollection =
  FirebaseFirestore.instance.collection('meetings');
  // final CollectionReference requestCollection =
  // FirebaseFirestore.instance.collection("requests");

  Future<void> addUser({required UserModel user}) async {
    try {
      final userDocument = userCollection.doc(user.id.toString());
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
      final userDocument = userCollection.doc(user.id.toString());
      await userDocument.update(user.toJson());
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to update user',
        devDetails: '$error',
      );
    }
  }


  //
  // Future<List<Map<String, dynamic>>?> getClients() async {
  //   try {
  //     final docref = await clientCollection.get();
  //     final docData =
  //     docref.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  //     return docData;
  //   } catch (err) {
  //     throw FirestoreApiException(message: 'Can\'t load client from firebase');
  //   }
  // }

  Future<UserModel?> getUser({ String? userId}) async {
    try {
      if (userId!=null) {
        final docref = userCollection.doc(userId);
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
      final docref = userCollection.where('status', isEqualTo: 0);
      final userDoc = await docref.get();

      final docData = userDoc.docs
          .map((doc) => doc.data() as Map<String, dynamic>)
          .toList();
      return docData;
    } catch (err) {
      throw FirestoreApiException(message: err.toString());
    }
  }

  // Future<List<Map<String, dynamic>>?> getMasters() async {
  //   try {
  //     final docref = await masterCollection.get();
  //     final docData =
  //     docref.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  //     return docData;
  //   } catch (err) {
  //     throw FirestoreApiException(message: 'Can\'t load masters from firebase');
  //   }
  // }
  //
  // Future<Use?> getMaster({required String userId}) async {
  //   try {
  //     if (userId.isNotEmpty) {
  //       final docref = masterCollection.doc(userId);
  //       final userDoc = await docref.get();
  //       print('userdoc');
  //       print(userDoc);
  //       print('userId: ' + userId);
  //       if (!userDoc.exists) {
  //         return null;
  //       }
  //
  //       Map<String, dynamic> userData = userDoc.data() as Map<String, dynamic>;
  //       // print(userData.map((key, value) => value).toString());
  //       // final userData = userDoc.data();
  //
  //       return MasterModel.fromJson(userData);
  //     } else {
  //       throw FirestoreApiException(
  //           message:
  //           'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
  //     }
  //   } catch (err) {
  //     throw FirestoreApiException(message: 'Can\'t loadd master from firebase');
  //   }
  // }
  //
  // Future<List<Map<String, dynamic>>?> getMasterWhereContains(
  //     {required List<String> masterIds}) async {
  //   try {
  //     final docref = masterCollection.where('id', whereIn: masterIds);
  //     final userDoc = await docref.get();
  //
  //     final docData = userDoc.docs
  //         .map((doc) => doc.data() as Map<String, dynamic>)
  //         .toList();
  //     // print(userData.map((key, value) => value).toString());
  //     // final userData = userDoc.data();
  //
  //     return docData;
  //   } catch (err) {
  //     throw FirestoreApiException(message: err.toString());
  //   }
  // }

  Future<void> addMeeting({required Meeting meeting}) async {
    try {
      final requests = meetingCollection.doc(meeting.id.toString());
      await requests.set(meeting.toJson());
      // await clientCollection.add(user.toJson()).then((value) {
      //   print("User Added${value}");
      // }).catchError((error) => print("Failed to add user: $error"));
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new request',
        devDetails: '$error',
      );
    }
  }
  //
  // Future<List<Map<String, dynamic>>?> getRequestsWhere(String userId) async {
  //   try {
  //     final docref =
  //     await requestCollection.where('client', isEqualTo: userId).get();
  //     final docData =
  //     docref.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  //     return docData;
  //   } catch (err) {
  //     throw FirestoreApiException(
  //         message:
  //         'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
  //   }
  // }
  //
  // Future<List<Map<String, dynamic>>?> getRequests() async {
  //   try {
  //     final docref = await requestCollection.get();
  //     final docData =
  //     docref.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  //     return docData;
  //   } catch (err) {
  //     throw FirestoreApiException(message: 'Can\'t load masters from firebase');
  //   }
  // }
  //
  // Future<void> addRequestApplicant(String id, Applicant applicant) async {
  //   try {
  //     final reqDocument = requestCollection.doc(id);
  //     final json = applicant.toJson();
  //     await reqDocument.update({
  //       'applicants': FieldValue.arrayUnion([json])
  //     });
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> masterAcceptRequest(Request request, String masterId) async {
  //   try {
  //     final reqDocument = requestCollection.doc(request.id);
  //     // final json = applicant.toJson();
  //     request.applicants.length = 0;
  //     await reqDocument.update({
  //       'status': RequestStatus.confirmed.name,
  //       'applicants': [],
  //       'masterId': masterId,
  //     });
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> masterRejectRequest(Request request, String masterId) async {
  //   try {
  //     final reqDocument = requestCollection.doc(request.id);
  //     // final json = applicant.toJson();
  //     // final applicants = request.applicants;
  //     // Applicant single =
  //     //     applicants.firstWhere((element) => element.masterId == masterId);
  //     // single.isRejected = true;
  //     // single.status = RequestStatus.rejected;
  //     // final json = request.toJson();
  //     await reqDocument.update({'status': RequestStatus.rejected.name});
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to reject request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> masterRejectRequestMain(Request request, String masterId) async {
  //   try {
  //     final reqDocument = requestCollection.doc(request.id);
  //     // final json = applicant.toJson();
  //     final applicants = request.applicants;
  //     Applicant single =
  //     applicants.firstWhere((element) => element.masterId == masterId);
  //     single.isRejected = true;
  //     single.status = RequestStatus.rejected;
  //     final json = request.toJson();
  //     await reqDocument.set(json);
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to reject request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> deleteRequest(String id) async {
  //   try {
  //     await requestCollection.doc(id).delete();
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to delete request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> updateClientRequestCoverLetter(
  //     String id, String coverLetter) async {
  //   try {
  //     final request = requestCollection.doc(id.toString());
  //     await request.update({'coverLetter': coverLetter});
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update request',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<String> getContact(
  //     String clientId, String masterId, int availableContacts) async {
  //   try {
  //     final docref = clientCollection.doc(clientId);
  //     final clientDoc = await docref.get();
  //     String telegramUrl = clientDoc['telegramUrl'];
  //     print('masterId: ' + masterId);
  //     final userDocument = masterCollection.doc(masterId);
  //     print('masterId: ' + masterId);
  //     await userDocument.update({'availableContacts': availableContacts - 1});
  //     return telegramUrl;
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update master',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<bool> openContact(String masterId) async {
  //   try {
  //     final userDocument = masterCollection.doc(masterId);
  //     final master = await userDocument.get();
  //     int availableContacts = master['availableContacts'];
  //     print('availablecontacts $availableContacts');
  //     if (availableContacts <= 0) {
  //       return false;
  //     } else {
  //       await userDocument
  //           .update({'availableContacts': FieldValue.increment(-1)});
  //       return true;
  //     }
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update master',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<bool> addOpens(String masterId, int availableContacts) async {
  //   try {
  //     final userDocument = masterCollection.doc(masterId);
  //     await userDocument.update(
  //         {'availableContacts': FieldValue.increment(availableContacts)});
  //     return true;
  //   } catch (error) {
  //     throw FirestoreApiException(
  //       message: 'Failed to update master',
  //       devDetails: '$error',
  //     );
  //   }
  // }
  //
  // Future<void> addRating(String master, Map<String, dynamic> json) async {
  //   try {
  //     final masterDocument = masterCollection.doc(master);
  //     await masterDocument.update({
  //       'rating': FieldValue.arrayUnion([json])
  //     });
  //   } catch (err) {
  //     throw FirestoreApiException(
  //       message: 'Failed to rate master',
  //       devDetails: '$err',
  //     );
  //   }
  // }
}
