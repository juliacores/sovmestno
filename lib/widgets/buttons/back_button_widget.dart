import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class BackButtonWidget extends StatelessWidget {
  final GestureTapCallback onPressed;

  const BackButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: AppColors.backgroundButton,
          ),
          SizedBox(width: 8),
          Text(
            'Назад',
            style: TextStyle(color: AppColors.backgroundButton, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
