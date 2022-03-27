import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/header_with_line.dart';
import 'package:sovmestno/widgets/my_menti_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserComplitedRegisterProvider readable =
        Provider.of<UserComplitedRegisterProvider>(context, listen: false);

    return Scaffold(
      appBar: CustomAppBar(
          actions: ProfileActions(
        user: readable.user!,
      )),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 33),
          child: Column(
            children: [
              HeaderWithLine(
                title:
                    'Мои ${readable.user!.status == AccountRole.mentor ? 'менти' : 'менторы'}',
              ),
              const SizedBox(
                height: 20,
              ),
              if (readable.user!.connectedUsers != null &&
                  readable.user!.connectedUsers!.isNotEmpty)
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: readable.user!.connectedUsers!
                      .map((e) => FutureBuilder(
                    //TODO add fuction to find statuses
                          // future: ,
                          builder: (context, snapshot) =>
                              MyMentiesCard.empty(userModel: readable.user!)))
                      .toList(),
                )
            ],
          )),
    );
  }
}
