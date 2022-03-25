import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/presentation/registration/user_provider.dart';

class UserBiography extends StatelessWidget {
  const UserBiography({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final TextEditingController questionnaireController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Расскажите немного о себе и своих интересах. (макс. 500 символов)',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 960,
          height: 160,
          child: TextField(
            controller: Provider.of<UserComplitedRegisterProvider>(context).aboutController,
            maxLines: 10,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: ConstText.hintBiography,
              hintStyle: const TextStyle(color: AppColors.hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
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
        ),
      ],
    );
  }
}
