import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.grayscale,
      child: Row(
        children: [
          const Text('Sovmestno 2022'),
          TextButton(onPressed: ()=>launch('sovmestno.co'), child: Text('sovmestno.co'))
        ],
      ),
    );
  }
}
