import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';

class AddressField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Где вы живёте?',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 225,
          height: 40,
          child: TextField(
            controller: Provider.of<UserComplitedRegisterProvider>(context)
                .cityController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: 'Введите ваш город',
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
        ),
        const SizedBox(height: 38),
        const Text(
          'Сколько вам лет?',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 225,
          height: 40,
          child: TextField(
            controller: Provider.of<UserComplitedRegisterProvider>(context)
                .ageController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: 'Введите ваш возраст',
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
        ),
        const SizedBox(height: 38),
        const Text(
          'Какая у вас профессия?',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 225,
          height: 40,
          child: TextField(
            controller: Provider.of<UserComplitedRegisterProvider>(context)
                .carrierController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grayscale,
              hintText: 'Введите ваш возраст',
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
        ),
      ],
    );
  }
}
