import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ApplicationImageWidget extends StatelessWidget {
  const ApplicationImageWidget({Key? key}) : super(key: key);
//TODO почему все захардкожено? надо сделать прием параметров
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 130,
          height: 130,
          child: ClipOval(
            child: Image.network('src'),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Татьяна Иванова',
          style: TextStyle(
            color: AppColors.backgroundButton,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Москва, 35 лет',
          style: TextStyle(
            color: AppColors.hintColor,
            fontSize: 14,
          ),
        ),
        const Text('Директор по маркетингу',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
