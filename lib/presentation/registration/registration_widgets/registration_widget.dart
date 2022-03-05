import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/models/user_login.dart';

import '../../../widgets/buttons/custom_main_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  bool _showPassword = false;

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();
  final sendInfoFocus = FocusNode();

  UserLogin newUserLogin = UserLogin();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    sendInfoFocus.dispose();
    super.dispose();
  }

  void _fieldFocusChanged(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.backgroundButton,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              TextFormField(
                focusNode: emailFocus,
                autofocus: true,
                onFieldSubmitted: (_) {
                  _fieldFocusChanged(context, emailFocus, passwordFocus);
                },
                controller: emailController,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.grayscale,
                  hintText: 'Введите ваш Email',
                  hintStyle: const TextStyle(color: AppColors.hintColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: AppColors.borderTextField,
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: AppColors.focusedBorderTextField,
                      width: 0.5,
                    ),
                  ),
                ),
                validator: _validateEmail,
                onSaved: (value) => newUserLogin.email = value!,
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  const Text(
                    'Пароль',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 170),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Забыли пароль?',
                      style: TextStyle(color: AppColors.hintColor),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 6),
              TextFormField(
                focusNode: passwordFocus,
                onFieldSubmitted: (_) {
                  _fieldFocusChanged(context, passwordFocus, sendInfoFocus);
                },
                controller: passwordController,
                textAlign: TextAlign.start,
                obscureText: !_showPassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.grayscale,
                  hintText: 'Введите пароль',
                  hintStyle: const TextStyle(color: AppColors.hintColor),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: AppColors.borderTextField,
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: AppColors.focusedBorderTextField,
                      width: 0.5,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: _showPassword ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => _showPassword = !_showPassword);
                    },
                  ),
                ),
                validator: _validatePassword,
                onSaved: (value) => newUserLogin.password = value!,
              ),
              const SizedBox(height: 30),
              CustomButtonWidget.blue(title: 'Войти', callback: (){submitForm();},)
              // const RegistrationButtonWidget()
            ],
          ),
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Поле Email не может быть пустым';
    } else if (!emailController.text.contains('@')) {
      return 'Неверный формат email адреса';
    } else {
      return null;
    }
  }

  String? _validatePassword(String? value) {
    if (passwordController.text.length != 8) {
      return 'Пароль должен содержать не менее 8 символов';
    } else {
      return null;
    }
  }

  void submitForm() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print('Email: ${newUserLogin.email}');
      print('Password: ${newUserLogin.password}');
    }
  }
}


