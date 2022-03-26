import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/domain/models/user.dart';

class TextForCard extends StatelessWidget {
  const TextForCard({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {


    String lichnost = '';
    for(var i in userModel.tags!) {
      lichnost+= i + ' ,';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const Text('О себе:', style: Styles.colorBlack14bold),
        const SizedBox(height: 6),
        Text(userModel.description!,style: Styles.colorBlack11),
        const SizedBox(height: 6),
        const Text('Личность:', style: Styles.colorBlack14bold),
        const SizedBox(height: 6),
        Text(lichnost,style: Styles.colorBlack11),
        const SizedBox(height: 6),
        const Text('Профессиональный опыт:', style: Styles.colorBlack14bold),
        const SizedBox(height: 6),
        Text(userModel.experience!,style: Styles.colorBlack11),
      ],
    );
  }
}
