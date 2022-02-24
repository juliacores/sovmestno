import 'package:flutter/material.dart';

//Круглый аватар с параметрами радиусаБ ссылки на фото и имени Менти.
// Если фото не загружено то в круглом аватаре выводится первая буква имени.
class Avatar extends StatelessWidget {
  final double radius;
  final String? name;
  final String? avatarUrl;

  const Avatar({
    Key? key,
    required this.radius,
    this.name,
    this.avatarUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (avatarUrl == null) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: Color.fromRGBO(141, 191, 255, 1),
        child: Text(
          name![0].toUpperCase(),
          style: TextStyle(color: Colors.white, fontSize: 48),
        ),
      );
    } else {
      return CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(avatarUrl!),
      );
    }
  }
}
