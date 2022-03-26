import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';

//Круглый аватар с параметрами радиусаБ ссылки на фото и имени Менти.
// Если фото не загружено то в круглом аватаре выводится первая буква имени.
class Avatar extends StatelessWidget {
  final double radius;
  final UserModel user;

  const Avatar({
    Key? key,
    required this.radius,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user.avatarImage == null) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: AppColors.focusedBorderTextField,
        child: Text(
          user.name![0].toUpperCase(),
          style: const TextStyle(color: Colors.white, fontSize: 48),
        ),
      );
    } else {
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(user.avatarImage!),
      );
    }
  }
}
