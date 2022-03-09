import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ApplicationButtonWidget extends StatelessWidget {
  const ApplicationButtonWidget(
      {Key? key, required this.name, required this.height, required this.width})
      : super(key: key);
  final double width;
  final double height;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '');
        },
        style: ElevatedButton.styleFrom(
          primary: AppColors.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
