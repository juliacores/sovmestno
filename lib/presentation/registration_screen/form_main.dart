import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/presentation/registration_screen/forms/main_form.dart';
import 'package:sovmestno/presentation/registration_screen/forms/matching_for_menti.dart';
import 'package:sovmestno/presentation/registration_screen/forms/matching_for_mentor.dart';
import 'package:sovmestno/presentation/registration_screen/forms/mentor_skills.dart';
import 'package:sovmestno/presentation/registration_screen/forms/user_information.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';
import 'package:sovmestno/widgets/header_with_line.dart';

import '../../services/firestore_service.dart';

class FormMainScreen extends StatelessWidget {
  FormMainScreen({Key? key}) : super(key: key);

  String? _currentScreen;

  //
  // set currentScreen(String? newScreen) {
  //   setState(() {
  //     _currentScreen = newScreen;
  //   });
  // }

  String? get nextScreen =>
      screens.keys.elementAt(screens.keys.toList().indexOf(_currentScreen) + 1);

  String? get previousScreen =>
      screens.keys.elementAt(screens.keys.toList().indexOf(_currentScreen) - 1);

  Map<String?, Widget> screens = <String?, Widget>{};

  @override
  Widget build(BuildContext context) {
    UserComplitedRegisterProvider readable =
        Provider.of<UserComplitedRegisterProvider>(context, listen: false);
    UserComplitedRegisterProvider watchable =
        Provider.of<UserComplitedRegisterProvider>(context);

    if (watchable.user == null) {
      WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        readable.user ??=
            Provider.of<LoginProvider>(context, listen: false).user;
      });
      print('got user ${readable.user.toString()}');
      return const CircularProgressIndicator();
    }

    print('got user ${readable.user.toString()}');

    screens.addAll({
      'Основное': StartForm(
        onSavePressed: () {
          readable.user = readable.user!.copyWith(
              city: readable.cityController.text,
              carrierRole: readable.carrierController.text,
              age: readable.ageController.text);
        },
      ),
      'О себе': UserInformation(
        onSavePressed: () {
          readable.user = readable.user!.copyWith(
              description: readable.aboutController.text, tags: readable.tags);
        },
      ),
      'Навыки': MentorSkills(
        onSavePressed: () {
          readable.user = readable.user!
              .copyWith(experience: readable.experienceController.text,
                  //TODO убрать после написания функции метчинга
                  // connectedUsers: [readable.user!.id!]
          );
        },
      ),
      'Мэчтинг':
          ((watchable.user?.status ?? AccountRole.mentor) == AccountRole.mentor
              ? MatchingForMentor(
                  onSavePressed: () {
                    print('hzz');
                  },
                )
              : MatchingForMenti(
                  user: readable.user!,
                  onSavePressed: readable.startMentorSearch,
                )),
    });
    //TODO придумать получше
    _currentScreen = screens.keys.toList()[watchable.step.index - 1];

    // print('ProfileActions - ${readable.user?.toJson()}');

    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: CustomAppBar(
          actions: watchable.user == null
              ? null
              : ProfileActions(
                  user: watchable.user!,
                )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 104.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWithLine(
                title: 'Анкета',
                backCallback: watchable.step == RegistrationSteps.start
                    ? null
                    : () => readable.setStep(readable.step.index - 1),
              ),
              const SizedBox(height: 20),
              Row(
                children: screens.keys.map((screen) {
                  final isCurrentScreen = screen == _currentScreen;
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: isCurrentScreen
                            ? AppColors.backgroundButton
                            : Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: isCurrentScreen
                            ? null
                            : Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 9, horizontal: 12),
                      child: Text(
                        screen!,
                        style: Styles.tabTitle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color:
                                isCurrentScreen ? Colors.white : Colors.grey),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 60),
              screens[_currentScreen]!
            ],
          ),
        ),
      ),
    );
  }
}
