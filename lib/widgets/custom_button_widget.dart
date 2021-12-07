import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const CustomButtonWidget({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: MyColors.backgroundButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        fixedSize: const Size(225, 40),
      ),
    );
  }
}
