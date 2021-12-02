import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({Key key}) : super(key: key);

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
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
                  color: MyColors.hintColor,
                  size: 22,
                ),
              ),
              const Text(
                'Настройки',
                style: TextStyle(fontSize: 18, color: MyColors.hintColor),
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
                  color: MyColors.hintColor,
                  size: 22,
                ),
              ),
              const Text(
                'Выйти',
                style: TextStyle(fontSize: 18, color: MyColors.hintColor),
              ),
            ],
          ),
          value: 2,
        ),
      ],
    );
  }
}
