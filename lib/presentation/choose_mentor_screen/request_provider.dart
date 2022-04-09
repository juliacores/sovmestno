import 'package:flutter/material.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/session.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/utils.dart';

class RequestProvider extends BaseProvider {
  final RealtimeBDApi _realtimeBDApi = RealtimeBDApi();
  final FirestoreApi _firestoreApi = FirestoreApi();
  Request? _request;
  BuildContext _currentContext;

  RequestProvider(context) : _currentContext = context;

  Request? get request => _request;

  set request(Request? newValue) {
    _request = newValue;
    notifyListeners();
  }

  final TextEditingController _requestTextController = TextEditingController();

  TextEditingController get requestController => _requestTextController;

  updateAndSendRequest() async {
    if (_request == null) return;
    setRequestSend = true;
    final result = await _realtimeBDApi.updateRequest(
        _request!.copyWith(requestText: _requestTextController.text));
    await _firestoreApi.addSession(
        session: Session(
            status: SessionStatus.pending,
            request:
                _request!.copyWith(requestText: _requestTextController.text),
            createdBy: DateTime.now()));
    setRequestSend = false;
    if (result) {
      Navigator.of(_currentContext).pushReplacementNamed(Routes.dashboardRoute);
    } else {
      hasError = true;
    }
  }

  selectMentor(String mentorId) {
    request = _request!.copyWith(selectedMentorId: mentorId);
  }
}
