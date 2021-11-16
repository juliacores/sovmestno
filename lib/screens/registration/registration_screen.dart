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
                style: TextStyle(fontSize: 36, color: MyColors.backgroundButton),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
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
                      color: MyColors.backgroundButton,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Назад',
                      style: TextStyle(color: MyColors.backgroundButton, fontSize: 16),
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

//TODO move reg widgets to other files, load them continuously

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
          color: MyColors.backgroundButton,
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
              style: TextStyle(fontSize: 12, color: MyColors.backgroundButton),
            ),
            const SizedBox(height: 19),
            const UserImageWidget(),
          ],
        ),
      ),
    );
  }
}
//TODO move to another file
class UserImage extends StatelessWidget {
  const UserImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Фотография'),
        const SizedBox(height: 5),
        Row(
          children: [
            SizedBox(
              width: 66,
              height: 66,
              child: ClipOval(
                //TODO: add placeholder
                child: Image.network('src'),
              ),
            ),
            const SizedBox(width: 33),
            SizedBox(
              height: 40,
              width: 246,
              child: ElevatedButton(
                child: Text(
                  'Загрузить фотографию',
                  style: TextStyle(color: MyColors.backgroundButton),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: BorderSide(
                      width: 1.0,
                      color: MyColors.backgroundButton,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        Text(
          'Максимальный размер фото  1 MB.',
          style: TextStyle(fontSize: 12, color: MyColors.backgroundButton),
        ),
        const SizedBox(height: 37),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            child: const Text(
              'Зарегестрироваться',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: MyColors.backgroundButton,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Уже есть аккаунт?',
                style: TextStyle(color: MyColors.hintColor),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Войти',
                style: TextStyle(color: MyColors.backgroundButton),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
