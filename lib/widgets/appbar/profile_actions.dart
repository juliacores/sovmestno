import 'package:flutter/material.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/widgets/avatar.dart';
import 'package:sovmestno/widgets/dropdown_button_widget.dart';

import '../../constants/colors.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions(
      {Key? key, required this.user})
      : super(key: key);

  // final String? name;
  // final String? avatarUrl;
  // final AccountRole? role;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 105),
      child: Row(
        children: [
          Container(
            width: 0.5,
            height: 49,
            color: Colors.grey,
          ),
          const SizedBox(width: 23),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                user.name!,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.backgroundButton,
                ),
              ),
              Text(
                user.status?.toRusString() ?? 'Не выбрана роль',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )
              // mentor ? const Text('Ментор') : const Text('Менти')
            ],
          ),
          const SizedBox(width: 23),
          Avatar(radius: 24, user: user),
          const MenuDropdown(),
        ],
      ),
    );
  }
}
