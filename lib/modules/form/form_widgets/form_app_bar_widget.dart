import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'dropdown_button_widget.dart';

class FormAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String name;
  //TODO почему стринг? логично же булевую переменную делать ментор/менти
  final String mentor;

  const FormAppBar({
    Key key,
    @required this.title,
    @required this.name,
    this.mentor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(
          left: 70.0,
        ),
        child: Text(
          title,
          style: Styles.mainTitle,
        ),
      ),
      backgroundColor: MyColors.appBarColor,
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      actions: [
        Padding(
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
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      color: MyColors.backgroundButton,
                    ),
                  ),
                  Text(
                    mentor ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 23),
              SizedBox(
                width: 49,
                height: 49,
                child: ClipOval(
                  child: Image.network('src'),
                ),
              ),
              const PopupMenuButtonWidget(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
