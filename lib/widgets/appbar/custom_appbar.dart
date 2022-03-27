import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final actions;

  const CustomAppBar({
    Key? key,
    this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'appbar',
        transitionOnUserGestures: true,
        child: AppBar(
          leadingWidth: 280,
          leading: Container(
            padding: const EdgeInsets.only(
              left: 70.0,
            ),
            alignment: Alignment.center,
            child: const Text(
              'Совместно',
              style: Styles.mainTitle,
            ),
          ),
          backgroundColor: AppColors.appBarColor,
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          title: title,
          actions: actions.runtimeType == List ? actions : [actions],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
