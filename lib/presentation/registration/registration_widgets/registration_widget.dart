import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/auth_service.dart';
import '../../../widgets/buttons/custom_main_button.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  void initState() {
    _authService = AuthService();
    super.initState();
  }

  bool _showPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late final AuthService _authService;
  void _loginButtonAction() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) return;
    UserModel userModel = await _authService.singInWithEmailAndPassword(
        emailController.text.trim(), passwordController.text.trim());
    if (userModel == null) {
    } else {
      emailController.clear();
      passwordController.clear();
    }
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
            TextField(
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
            ),
            const SizedBox(height: 30),
            CustomButtonWidget(
              callback: () {},
              title: 'Войти',
            )
            // const RegistrationButtonWidget()
          ],
        ),
      ),
    );
  }
}
