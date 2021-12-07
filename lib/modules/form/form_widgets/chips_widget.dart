import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  // String title;
  // Color backgroundColor;
  // Color borderColor;
  ChipsWidget({
    Key key,
    // this.title,
    // this.backgroundColor,
    // this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(9),
            ),
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text('title'),
          ),
        ),
      ],
    );
  }
}
