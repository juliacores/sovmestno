import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class MenuDropdown extends StatelessWidget {
  const MenuDropdown({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: const EdgeInsets.all(0),
      offset: const Offset(20,50),
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black,
      ),
      color: Colors.white,
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: AppColors.hintColor,
                  size: 22,
                ),
              ),
              const Text(
                'Настройки',
                style: TextStyle(fontSize: 18, color: AppColors.hintColor),
              ),
            ],
          ),
          value: 1,
        ),
        PopupMenuItem(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: AppColors.hintColor,
                  size: 22,
                ),
              ),
              const Text(
                'Выйти',
                style: TextStyle(fontSize: 18, color: AppColors.hintColor),
              ),
            ],
          ),
          value: 2,
        ),
      ],
    );
  }
}
