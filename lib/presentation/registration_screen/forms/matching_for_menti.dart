import 'package:firebase_database/ui/firebase_list.dart';
import 'package:flutter/material.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/constants/text.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

import '../../../widgets/custom_loading_indicator.dart';

class MatchingForMenti extends StatelessWidget {
  const MatchingForMenti(
      {Key? key, required this.onSavePressed, required this.user})
      : super(key: key);
  final onSavePressed;
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    if (user.connectedUsers == null || user.connectedUsers!.isEmpty) {
      onSavePressed().then((request) {
        Navigator.of(context)
            .pushReplacementNamed(Routes.requestRoute, arguments: request);
      });
    } else {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) =>
          Navigator.of(context).pushReplacementNamed(Routes.dashboardRoute));
    }

    return Row(
      children: [
        const CustomLoadingIndicator(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: const Text('Подбираем подходящего ментора'),
        )
      ],
    );
  }
}
