import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class SaveButtonWidget extends StatelessWidget {
  final GestureTapCallback onPressed;

  const SaveButtonWidget({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Сохранить'),
      style: ElevatedButton.styleFrom(
        primary: MyColors.backgroundButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        // minimumSize: 
        // maximumSize: 
        fixedSize: const Size(225, 40),
      ),
    );
  }
}
