import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ApplicationButtonWidget extends StatelessWidget {
  const ApplicationButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 226,
      height: 40,
      child: ElevatedButton(
        child: const Text(
          'Выбрать этого ментора',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '');
        },
        style: ElevatedButton.styleFrom(
          primary: AppColors.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
