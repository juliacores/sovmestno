import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/screens/registration/authorization_screen.dart';
import 'package:sovmestno/widgets/registration/log_into_account_widget.dart';
import 'package:sovmestno/widgets/registration/registration_app_bar.dart';
import 'package:sovmestno/widgets/registration/user_image_widget.dart';
//

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                'Регистрация',
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
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const AuthorizationScreen(),
                    ),
                  );
                },
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
              'Имя',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите ваше имя',
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
            const Text(
              'Фамилия',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите вашу фамилию',
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
            const Text(
              'Пароль',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
            const SizedBox(height: 18),
            Text(
              'Ваш пароль должен содержать от 8 символов.',
              style: TextStyle(fontSize: 12, color: MyColors.blue),
            ),
            const SizedBox(height: 19),
            const UserImageWidget(),
          ],
        ),
      ),
    );
  }
}
