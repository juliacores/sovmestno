import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/registration/registration_widgets/registration_button_widget.dart';

class LoginByEmail extends StatefulWidget {
  const LoginByEmail({Key key}) : super(key: key);

  @override
  State<LoginByEmail> createState() => _LoginByEmailState();
}

class _LoginByEmailState extends State<LoginByEmail> {
  bool _showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              'Email',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: emailController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите ваш Email',
                hintStyle: const TextStyle(color: MyColors.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: MyColors.borderTextField,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
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
                const SizedBox(width: 170),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Забыли пароль?',
                    style: TextStyle(color: MyColors.hintColor),
                  ),
                )
              ],
            ),
            const SizedBox(height: 6),
            TextField(
              controller: passwordController,
              textAlign: TextAlign.start,
              obscureText: !_showPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: MyColors.grayscale,
                hintText: 'Введите пароль',
                hintStyle: const TextStyle(color: MyColors.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
                    color: MyColors.borderTextField,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(
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
