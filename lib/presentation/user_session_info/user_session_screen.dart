import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/session.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/bottom_bar/bottom_bar.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';
import 'package:sovmestno/widgets/usercard/user_card.dart';

class UserSessionArgs{
  UserModel user;
  Session session;

  UserSessionArgs({required this.user,required this.session});
}


class UserSessionScreen extends StatelessWidget {
  const UserSessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final UserSessionArgs args = ModalRoute.of(context)?.settings.arguments as UserSessionArgs;

    UserComplitedRegisterProvider readable =
    Provider.of<UserComplitedRegisterProvider>(context, listen: false);

    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: CustomAppBar(
          actions: ProfileActions(
            user: readable.user!,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackButtonWidget(
              onPressed: ()=>Navigator.of(context).pop(),
            ),
            UserCard(user: args.user,)
          ],
        ),
      ),
    );
  }
}
