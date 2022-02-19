import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';

class HeaderWithLine extends StatelessWidget {
  const HeaderWithLine({Key? key, required this.title, this.backCallback})
      : super(key: key);

  final String title;
  final backCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 104, right: 104),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 66),
          Text(
            title,
            style: const TextStyle(
                fontSize: 36, color: AppColors.backgroundButton),
          ),
          const SizedBox(height: 18),
          Container(
            width: double.infinity,
            height: 0.2,
            color: AppColors.backgroundButton,
          ),
          const SizedBox(height: 19),
          if (backCallback != null)
            BackButtonWidget(
              onPressed: backCallback,
            ),
          //const SizedBox(height: 44),
        ]));
  }
}
