import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/presentation/registration/registration_widgets/user_image_widget.dart';
import 'package:sovmestno/services/auth_service.dart';
import '../../../widgets/buttons/custom_main_button.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

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
              controller: Provider.of<LoginProvider>(context).loginController,
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
              controller: Provider.of<LoginProvider>(context).passwordController,
              textAlign: TextAlign.start,
              obscureText: Provider.of<LoginProvider>(context).showPassword,
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
                    color: Provider.of<LoginProvider>(context).showPassword ? Colors.blue : Colors.grey,
                  ),
                  onPressed: Provider.of<LoginProvider>(context,listen: false).changeShowPasswordState,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButtonWidget.blue(
              callback: Provider.of<LoginProvider>(context,listen: false).auth,
              title: 'Войти',
            )
            // const RegistrationButtonWidget()
          ],
        ),
      ),
    );
  }
}
