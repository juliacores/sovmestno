import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:sovmestno/domain/models/request.dart';

class RealtimeBDApi{
  final database = FirebaseDatabase.instance;
  DatabaseReference requests = FirebaseDatabase.instance.ref('requests');

  addRequest(){

  }

  getRequestStream(String requestId) => requests.onValue.map((event) {

    if(event.snapshot.value!=null){
      final Request _request = Request.fromJson(event.snapshot.value as Map<String, dynamic>);
      if(_request.id==requestId)
        return event.snapshot.value;
    }
  });
}

