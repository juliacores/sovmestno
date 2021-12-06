import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  String title;
  double y;
  double x;
  Color textColor;
  Color backgroundColor;
  Color borderColor;
  ChipsWidget({
    Key key,
    @required this.y,
    @required this.x,
    @required this.title,
    @required this.textColor,
    @required this.backgroundColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: y, horizontal: x),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(width: 1, color: borderColor ?? backgroundColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Text(
                  title,
                  style: TextStyle(color: textColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
