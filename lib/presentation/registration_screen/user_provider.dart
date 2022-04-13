import 'dart:core';

import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/utils.dart';
import 'package:flutter/material.dart';

class UserComplitedRegisterProvider extends BaseProvider {
  UserModel? _user;
  RegistrationSteps _step = RegistrationSteps.notLogined;
  final FirestoreApi _firestoreApi = FirestoreApi();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _carrierController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();

  List<String> _userSkills = [];

  List<String> get userSkills => _userSkills;

  set userSkills(List<String> value) {
    _userSkills = value;
    notifyListeners();
  }

  List<String> _userCharacteristics = [];

  List<String> get userCharacteristics => _userCharacteristics;

  set userCharacteristics(List<String> value) {
    _userCharacteristics = value;
    notifyListeners();
  }

  TextEditingController get cityController => _cityController;

  TextEditingController get ageController => _ageController;

  TextEditingController get carrierController => _carrierController;

  TextEditingController get aboutController => _aboutController;

  TextEditingController get experienceController => _experienceController;

  set user(UserModel? value) {
    _user = value;
    if (_user != null) {
      _firestoreApi.updateUser(user: _user!);
      _step = checkRegistrationSteps(_user!) ?? RegistrationSteps.notLogined;
    }
    notifyListeners();
  }

  setStep(int id) {
    switch (id) {
      case 0:
        _step = RegistrationSteps.notLogined;
        break;
      case 1:
        _step = RegistrationSteps.start;
        break;
      case 2:
        _step = RegistrationSteps.about;
        break;
      case 3:
        _step = RegistrationSteps.skills;
        break;
      case 4:
        _step = RegistrationSteps.matching;
        if (_user!.status == AccountRole.menti) {
          startMentorSearch();
        }
        break;
    }
    notifyListeners();
  }

  UserModel? get user => _user;

  RegistrationSteps get step => _step;

  setSkills(List<String>? value) {
    if (_user != null && value != null) {
      _user = _user!.copyWith(skills: value);
    }
  }

  Future<Request> startMentorSearch() async {
    RealtimeBDApi _realtimeBDApi = RealtimeBDApi();
    //проверяем нет ли уже созданного запроса, который не дошел до конца
    final _prevRequests =
        await _realtimeBDApi.getRequestsByUserId(_user!.id!, _user!.status!);
    for (Request? i in _prevRequests) {
      if (i != null && i.requestText == null) {
        return i;
      }
    }
    //создаем запрос
    final request =
        await _realtimeBDApi.addRequest(Request(mentiUserId: _user!.id));
    //сохраняем юзеру ид запроса
    // _user = _user!.copyWith(requests: [..._user!.requests ?? [],request.id!]);
    return request;
  }
}

RegistrationSteps? checkRegistrationSteps(UserModel user) {
  if (user.status == null || user.city == null || user.age == null)
    return RegistrationSteps.start;
  else if (user.description == null || user.tags == null)
    return RegistrationSteps.about;
  else if (user.skills == null || user.skills!.isEmpty)
    return RegistrationSteps.skills;
  if (user.experience != null) return RegistrationSteps.matching;

  return null;
}

enum RegistrationSteps { notLogined, start, about, skills, matching }
