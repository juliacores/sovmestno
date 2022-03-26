import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';

class DropdownFormFieldWidget extends StatelessWidget {
  const DropdownFormFieldWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 960,
      height: 40,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: AppColors.grayscale,
          hintText: 'Выберите навык',
          hintStyle: const TextStyle(color: AppColors.hintColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: AppColors.borderTextField,
              width: 0.5,
            ),
          ),
        ),
        onChanged: Provider.of<UserComplitedRegisterProvider>(context,listen: false).setSkills,
        //TODO вынести в отдельный файл констант - навыки пришлю в ближайшее время
        items: <String>['1', '2', '3', '4'].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
