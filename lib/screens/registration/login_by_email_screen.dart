import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/widgets/registration/registration_app_bar.dart';
import 'package:sovmestno/widgets/registration/registration_button_widget.dart';

class LoginByEmail extends StatefulWidget {
  const LoginByEmail({Key key}) : super(key: key);

  @override
  _LoginByEmailState createState() => _LoginByEmailState();
}

class _LoginByEmailState extends State<LoginByEmail> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: registrationAppBar(context, 'Совместно'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 104, right: 104),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              Text(
                'Вход в аккаунт',
                style: TextStyle(fontSize: 36, color: MyColors.blue),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.blue,
              ),
              const SizedBox(height: 19),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 16,
                      color: MyColors.blue,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Назад',
                      style: TextStyle(color: MyColors.blue, fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),
              const DetailedRegistration(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailedRegistration extends StatefulWidget {
  const DetailedRegistration({Key key}) : super(key: key);

  @override
  State<DetailedRegistration> createState() => _DetailedRegistrationState();
}

class _DetailedRegistrationState extends State<DetailedRegistration> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: MyColors.blue,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
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
            TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите ваш Email',
                hintStyle: TextStyle(color: MyColors.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.borderTextField,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.focusedBorderTextField,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                const Text(
                  'Пароль',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 170),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Забыли пароль?',
                    style: TextStyle(color: MyColors.hintColor),
                  ),
                )
              ],
            ),
            const SizedBox(height: 6),
            TextField(
              textAlign: TextAlign.start,
              obscureText: !_showPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите пароль',
                hintStyle: TextStyle(color: MyColors.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.borderTextField,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.focusedBorderTextField,
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
            ),
            const SizedBox(height: 30),
            const RegistrationButtonWidget()
          ],
        ),
      ),
    );
  }
}
