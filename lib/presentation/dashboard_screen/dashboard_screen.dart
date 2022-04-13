import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/dashboard_screen/dashboard_provider.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/bottom_bar/bottom_bar.dart';
import 'package:sovmestno/widgets/custom_loading_indicator.dart';
import 'package:sovmestno/widgets/header_with_line.dart';
import 'package:sovmestno/widgets/my_menti_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserComplitedRegisterProvider readable =
        Provider.of<UserComplitedRegisterProvider>(context, listen: false);

    return ChangeNotifierProvider(
        create: (context) => DashboardProvider(readable.user!.id!,context),
        child: Scaffold(
          bottomNavigationBar: const BottomBar(),
          appBar: CustomAppBar(
              actions: ProfileActions(
            user: readable.user!,
          )),
          body: Consumer<DashboardProvider>(builder: (context, provider, _) {
            if (provider.user == null) {
              return const Center(
                child: CustomLoadingIndicator(),
              );
            }

            final AccountRole _currentUserRole = provider.user!.status!;

            return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 33),
                child: Column(
                  children: [
                    HeaderWithLine(
                      title:
                          'Мои ${provider.user!.status == AccountRole.mentor ? 'менти' : 'менторы'}',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: provider.userSessions != null &&
                              provider.userSessions!.isNotEmpty
                          ? provider.userSessions!
                              .map((e) => FutureBuilder(
                                  future: provider.getUser(
                                      _currentUserRole == AccountRole.mentor
                                          ? e.request!.mentiUserId!
                                          : e.request!.selectedMentorId!),
                                  builder: (context, snapshot) {
                                    if (!snapshot.hasData) {
                                      return const Center(
                                          child: CustomLoadingIndicator());
                                    }
                                    return MyMentiesCard.available(
                                        userModel: snapshot.data as UserModel,
                                        session: e);
                                  }))
                              .toList()
                      //показываем одну пустую карточку если нет сессий
                          : [MyMentiesCard.empty()],
                    )
                  ],
                ));
          }),
        ));
  }
}
