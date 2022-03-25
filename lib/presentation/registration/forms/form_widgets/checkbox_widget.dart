import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';

class CheckboxWidget extends StatelessWidget {
  final ValueChanged<bool?> onChangedMenti;
  final ValueChanged<bool?> onChangedMentor;
  final AccountRole? role;

  const CheckboxWidget({Key? key, required this.onChangedMenti, required this.role,required this.onChangedMentor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: const BorderSide(width: 0.5, color: Colors.black),
              checkColor: Colors.white,
              focusColor: Colors.black,
              fillColor: MaterialStateProperty.all(AppColors.checkboxColor),
              value: role == AccountRole.menti,
              onChanged: onChangedMenti,
            ),
            const SizedBox(width: 14),
            const Text(
              'Менти',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
        const SizedBox(height: 33),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: const BorderSide(width: 0.5, color: Colors.black),
              checkColor: Colors.white,
              focusColor: Colors.black,
              fillColor: MaterialStateProperty.all(AppColors.checkboxColor),
              value: role == AccountRole.mentor,
              onChanged: onChangedMentor,
            ),
            const SizedBox(width: 14),
            const Text(
              'Ментор',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
        // const SizedBox(height: 30),
        // const Text(
        //   'Вы также можете быть обоими.',
        //   style: TextStyle(fontSize: 14),
        // )
      ],
    );
  }
}
