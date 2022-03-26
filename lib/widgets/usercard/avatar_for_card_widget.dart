import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/widgets/avatar.dart';

class AvatarForCard extends StatelessWidget {
  const AvatarForCard({Key? key, this.userModel}) : super(key: key);
  final UserModel? userModel;

  @override
  Widget build(BuildContext context) {
    if (userModel == null) return Align();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Avatar(radius: 65,user: userModel!,),
        const SizedBox(height: 10),
        Text(
          userModel!.firstName! + ' ' + userModel!.lastName!,
          style: Styles.roboto_18_500_blue,
        ),
        const SizedBox(height: 10),
        Text(
          '${userModel!.city}, ${userModel!.age} лет',
          style: Styles.roboto_14_500_hintColor,
        ),
        Text(userModel!.carrierRole ?? 'разработчик',
            style: Styles.roboto_14_500_black),
      ],
    );
  }
}
