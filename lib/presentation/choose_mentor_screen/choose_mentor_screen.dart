import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/request.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/choose_mentor_screen/application_send.dart';
import 'package:sovmestno/presentation/choose_mentor_screen/request_provider.dart';
import 'package:sovmestno/services/firestore_service.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/custom_loading_indicator.dart';
import 'package:sovmestno/widgets/usercard/user_card.dart';

import '../registration_screen/user_provider.dart';

class ChooseMentorScreen extends StatelessWidget {
  const ChooseMentorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserComplitedRegisterProvider readable =
        Provider.of<UserComplitedRegisterProvider>(context, listen: false);

    final FirestoreApi _api = FirestoreApi();
    return ChangeNotifierProvider(
        create: (context) => RequestProvider(context),
        child: Scaffold(
            appBar: CustomAppBar(
                actions: ProfileActions(
              user: readable.user!,
            )),
            body: Consumer<RequestProvider>(builder: (context, provider, _) {
              if (provider.request == null) {
                final args = ModalRoute.of(context)!.settings.arguments;
                provider.request = args as Request;
                return const Center(
                  child: CustomLoadingIndicator(),
                );
              }

              if (provider.request!.selectedMentorId != null) {
                return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 26, vertical: 33),
                    child: Column(
                      children: [
                        const Text(
                            'Отличный выбор! Теперь вам нужно отправить заявку этому ментору.'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FutureBuilder(
                                future: _api.getUser(
                                    userId: provider.request!.selectedMentorId),
                                builder: (context, snapshot) => snapshot.hasData
                                    ? UserCard(
                                        user: snapshot.data as UserModel,
                                        vertical: true,
                                      )
                                    //TODO add shimmer
                                    : Align()),
                            ApplicationSend(
                              controller: provider.requestController,
                              callback: provider.updateAndSendRequest,
                            )
                          ],
                        )
                      ],
                    ));
              }

              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 26, vertical: 33),
                child: Column(
                    children: provider.request?.mentorIds
                            ?.map((e) => FutureBuilder(
                                future: _api.getUser(userId: e),
                                builder: (context, snapshot) => snapshot.hasData
                                    ? UserCard(
                                        user: snapshot.data as UserModel,
                                        callback: provider.selectMentor(e),
                                      )
                                    //TODO add shimmer
                                    : Align()))
                            .toList() ??
                        [
                          const Text(
                              'к сожалению процесс подбора ментора еще идет')
                        ]),
              );
            })));
  }
}
