import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/auth_service.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/services/upload_service.dart';
import 'package:sovmestno/services/utils.dart';

class LoginProvider extends BaseProvider {
  final AuthService _authService = AuthService();
  final FirestoreApi _firestoreApi = FirestoreApi();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  String? image;
  UserModel? _user;

  bool showPassword = true;
  int _regState = 0;

  int get regState => _regState;

  UserModel get user => _user!;

  TextEditingController get loginController => _loginController;

  TextEditingController get nameController => _nameController;

  TextEditingController get surnameController => _surnameController;

  TextEditingController get passwordController => _passwordController;

  void changeShowPasswordState() {
    showPassword = !showPassword;
    notifyListeners();
  }

  Future auth() async {
    if (!requestSend) {
      setRequestSend = true;
    }
    try {
      var result = await _authService.singInWithEmailAndPassword(
          email: _loginController.text, password: _passwordController.text);
      setRequestSend = false;
      return result;
    } catch (e) {
      setRequestSend = false;
      // ConsoleMessages.showErrorMessage(e);
      return false;
    }
  }

  Future register() async {
    if (!requestSend) {
      setRequestSend = true;
    }
    //TODO validate
    try {
      _user = UserModel(
          firstName: _nameController.text,
          lastName: _surnameController.text,
          email: _loginController.text,
          avatarImage: image);
      var result = await _authService.registerWithEmailAndPassword(
        user: _user!,
        password: _passwordController.text,
      );
      setRequestSend = false;
      return result;
    } catch (e) {
      setRequestSend = false;
      // ConsoleMessages.showErrorMessage(e);
      return false;
    }
  }

  Future addImage() async {
    try {
      final pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        if (!requestSend) {
          setRequestSend = true;
        }
        image = await StorageRepo.uploadImageToFirebase(
            imageData: await pickedFile.readAsBytes(),
            filename: pickedFile.name);
        setRequestSend = false;
      }
    } catch (e) {
      print('error occured - $e');
    }
  }

  set regState(int value){
    _regState = value;
    notifyListeners();
  }
}
