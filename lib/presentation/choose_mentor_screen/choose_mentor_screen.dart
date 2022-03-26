import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/usercard/user_card.dart';

import '../registration_screen/user_provider.dart';

class ChooseMentorScreen extends StatelessWidget {
  const ChooseMentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserComplitedRegisterProvider readable =
        Provider.of<UserComplitedRegisterProvider>(context, listen: false);

    final FirestoreApi _api = FirestoreApi();
    return Scaffold(
        appBar: CustomAppBar(
            actions: ProfileActions(
          name: (readable.user?.firstName ?? 'Anomim') +
              ' ' +
              (readable.user?.lastName ?? 'Anomim'),
          avatarUrl: readable.user?.avatarImage,
          role: readable.user?.status,
        )),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 33),
          child: Column(
              children: readable.user?.matchedUsers
                      ?.map((e) => FutureBuilder(
                          future: _api.getUser(userId: e),
                          builder: (context, snapshot) => snapshot.hasData
                              ? UserCard(user: snapshot.data as UserModel)
                              //TODO add shimmer
                              : Align()))
                      .toList() ??
                  [Text('к сожалению процесс подбора ментора еще идет')]),
        ));
  }
}
