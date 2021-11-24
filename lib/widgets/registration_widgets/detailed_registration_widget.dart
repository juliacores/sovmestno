import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/widgets/registration_widgets/user_image_widget.dart';

class DetailedRegistrationWidget extends StatefulWidget {
  const DetailedRegistrationWidget({Key key}) : super(key: key);

  @override
  State<DetailedRegistrationWidget> createState() =>
      _DetailedRegistrationWidgetState();
}

class _DetailedRegistrationWidgetState
    extends State<DetailedRegistrationWidget> {
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
            const SizedBox(height: 18),
            const Text(
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
