import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class CardButtom extends StatelessWidget {
  const CardButtom(
      {Key? key,
      required this.name,
      required this.height,
      required this.width,
       this.onTap})
      : super(key: key);
  final double width;
  final double height;
  final String name;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(name, style: Styles.hintColor11bold),
        height: height,
        width: width,
        decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(color: AppColors.hintColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
