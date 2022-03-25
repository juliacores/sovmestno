import 'package:flutter/material.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/widgets/dropdown_button_widget.dart';

import '../../constants/colors.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({Key? key, this.name, this.avatarUrl, this.role}) : super(key: key);

  final String? name;
  final String? avatarUrl;
  final AccountRole? role;

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
                name!,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.backgroundButton,
                ),
              ),
               Text(
                role?.toRusString() ?? 'Не выбрана роль',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              )
              // mentor ? const Text('Ментор') : const Text('Менти')
            ],
          ),
          const SizedBox(width: 23),
          if(avatarUrl!=null)
            SizedBox(
              width: 49,
              height: 49,
              child: ClipOval(
                //TODO add placeholder
                child: Image.network(avatarUrl??''),
              ),
            ),
          const MenuDropdown(),
        ],
      ),
    );
  }
}
