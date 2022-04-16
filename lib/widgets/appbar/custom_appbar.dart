import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          leadingWidth: 300.w,
          leading: Container(
            padding: EdgeInsets.only(
              left: 70.w,
            ),
            alignment: Alignment.center,
            child: Text(
              'Совместно',
              style: Styles.mainTitle.copyWith(fontSize: 30.w),
            ),
          ),
          backgroundColor: AppColors.appBarColor,
          toolbarHeight: 100.h,
          automaticallyImplyLeading: false,
          title: title,
          actions: actions.runtimeType == List ? actions : [actions],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
