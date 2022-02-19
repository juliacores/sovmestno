import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final actions;

  const CustomAppBar({
    Key? key,
     this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 280,

      leading:  Container(
        padding: EdgeInsets.only(
          left: 70.0,
        ),
        alignment: Alignment.center,
        child: Text(
          'Совместно',
          style: Styles.mainTitle,
        ),
      ),
      backgroundColor: AppColors.appBarColor,
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      title: title,
      actions: actions.runtimeType == List ? actions : [actions],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
