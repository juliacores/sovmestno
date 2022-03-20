import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/presentation/registration/registration_widgets/user_image_widget.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class DetailedRegistrationWidget extends StatelessWidget {
  const DetailedRegistrationWidget({Key? key}) : super(key: key);

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
              'Имя',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: Provider.of<LoginProvider>(context).nameController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.grayscale,
                hintText: 'Введите ваше имя',
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
            const Text(
              'Фамилия',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: Provider.of<LoginProvider>(context).surnameController,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.grayscale,
                hintText: 'Введите вашу фамилию',
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
            const Text(
              'Пароль',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                    color: Provider.of<LoginProvider>(context).showPassword
                        ? Colors.blue
                        : Colors.grey,
                  ),
                  onPressed:
                  Provider.of<LoginProvider>(context,listen: false).changeShowPasswordState,
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Ваш пароль должен содержать от 8 символов.',
              style: TextStyle(fontSize: 12, color: AppColors.backgroundButton),
            ),
            const SizedBox(height: 19),
            UserImageWidget(
              addAvatar: Provider.of<LoginProvider>(context,listen: false).addImage,
            ),
            CustomButtonWidget.blue(
              title: 'Зарегестрироваться',
              callback: Provider.of<LoginProvider>(context,listen: false).register,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
