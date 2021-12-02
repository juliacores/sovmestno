import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 225,
      height: 40,
      child: ElevatedButton(
        child: const Text('Сохранить'),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: MyColors.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
