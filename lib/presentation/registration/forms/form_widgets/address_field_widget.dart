import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class AddressField extends StatefulWidget {
<<<<<<< HEAD:lib/presentation/registration/forms/form_widgets/address_field_widget.dart
  const AddressField({Key? key}) : super(key: key);
=======
  const   AddressField({Key key}) : super(key: key);
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1:lib/modules/form/form_widgets/address_field_widget.dart

  @override
  _AddressFieldState createState() => _AddressFieldState();
}
class _AddressFieldState extends State<AddressField> {
  TextEditingController addresFieldController = TextEditingController();
  TextEditingController ageFieldController = TextEditingController();

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
            controller: addresFieldController,
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
            controller: ageFieldController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              filled: true,
<<<<<<< HEAD:lib/presentation/registration/forms/form_widgets/address_field_widget.dart
              fillColor: AppColors.grayscale,
              hintText: 'Введите ваш город',
              hintStyle: const TextStyle(color: AppColors.hintColor),
=======
              fillColor: MyColors.grayscale,
              hintText: 'Введите ваш возраст',
              hintStyle: const TextStyle(color: MyColors.hintColor),
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1:lib/modules/form/form_widgets/address_field_widget.dart
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
