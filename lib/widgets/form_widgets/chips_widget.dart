import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  final String title;
  final Color chipsColor;
  final Color textColor;
  final Color borderColor;

  const ChipsWidget({
    Key key,
    @required this.title,
    this.chipsColor,
    this.textColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(9),
        ),
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        color: chipsColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 9,
        ),
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 11),
        ),
      ),
    );
  }
}
