import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class BottomTextWidget extends StatelessWidget {
  const BottomTextWidget(
      {Key? key, required this.title, required this.actionTitle, this.callback})
      : super(key: key);

  final String title;
  final String actionTitle;
  final callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(color: AppColors.hintColor),
        ),
        TextButton(
          onPressed: callback,
          child: Text(
            actionTitle,
            style: const TextStyle(
              color: AppColors.backgroundButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
