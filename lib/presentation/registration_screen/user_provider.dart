import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/auth_service.dart';
import 'package:sovmestno/services/database_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/utils.dart';

class UserComplitedRegisterProvider extends BaseProvider {
  UserModel? _user;
  RegistrationSteps _step = RegistrationSteps.notLogined;
  final FirestoreApi _firestoreApi = FirestoreApi();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _carrierController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();

  List<String> tags = [];

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

  setSkills(String? value) {
    if (_user != null && value != null) {
      _user = _user!.copyWith(skills: []);
      _user!.skills!.add(value);
    }
  }

  Future<Request> startMentorSearch() async {
    RealtimeBDApi _realtimeBDApi = RealtimeBDApi();
    //проверяем нет ли уже созданного запроса, который не дошел до конца
    for (String i in (_user?.requests ?? [])) {
      final _r = await _realtimeBDApi.getRequestById(i);
      if (_r.requestText == null) {
        return _r;
      }
    }
    //создаем запрос
    final request =  await _realtimeBDApi.addRequest(Request(userId: _user!.id));
    //сохраняем юзеру ид запроса
    _user = _user!.copyWith(requests: [..._user!.requests ?? [],request.id!]);
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
