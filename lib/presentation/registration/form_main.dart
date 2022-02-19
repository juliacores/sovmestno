import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/styles.dart';
import 'package:sovmestno/presentation/registration/forms/main_form.dart';
import 'package:sovmestno/presentation/registration/forms/matching_for_mentor.dart';
import 'package:sovmestno/presentation/registration/forms/mentor_skills.dart';
import 'package:sovmestno/presentation/registration/forms/user_information.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/widgets/appbar/profile_actions.dart';
import 'package:sovmestno/widgets/buttons/back_button_widget.dart';

class FormMainScreen extends StatefulWidget {
  const FormMainScreen({Key? key}) : super(key: key);

  @override
  State<FormMainScreen> createState() => _FormMainScreenState();
}

class _FormMainScreenState extends State<FormMainScreen> {
  String? _currentScreen;

  set currentScreen(String? newScreen) {
    setState(() {
      _currentScreen = newScreen;
    });
  }

  String? get nextScreen =>
      screens.keys.elementAt(screens.keys.toList().indexOf(_currentScreen) + 1);

  String? get previousScreen =>
      screens.keys.elementAt(screens.keys.toList().indexOf(_currentScreen) - 1);

  Map<String?, Widget> screens = <String?, Widget>{};

  @override
  void initState() {
    super.initState();

    screens.addAll({
      'Основное': MainForm(
        onSavePressed: () {
          currentScreen = nextScreen;
        },
      ),
      'О себе': UserInformation(
        onSavePressed: () {
          currentScreen = nextScreen;
        },
      ),
      'Навыки': MentorSkills(
        onSavePressed: () {
          currentScreen = nextScreen;
        },
      ),
      'Мэчтинг': MatchingForMentor(
        onSavePressed: () {
          currentScreen = nextScreen;
        },
      ),
    });
    _currentScreen = screens.keys.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD:lib/presentation/registration/form_main.dart
      backgroundColor: AppColors.appBarColor,
      //TODO change to real data
      appBar: const CustomAppBar(
          actions: ProfileActions(
=======
      backgroundColor: MyColors.appBarColor,
      appBar: const FormAppBar(
        mentor: false,
>>>>>>> 394cf484e9afce1bc8b322c1ca9b7379e76641c1:lib/presentation/registration/forms/form_main_screens.dart
        name: 'Татьяна Иванова',
        avatarUrl:
            'https://firebasestorage.googleapis.com/v0/b/sovmestno-co.appspot.com/o/11.png?alt=media&token=e64a6ccb-87e7-4b33-95ca-309546586901',
      )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 104.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              const Text(
                'Анкета',
                style:
                    TextStyle(fontSize: 36, color: AppColors.backgroundButton),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 0.2,
                color: AppColors.backgroundButton,
              ),
              const SizedBox(height: 20),
              if (_currentScreen != screens.keys.first)
                BackButtonWidget(
                  onPressed: () {
                    currentScreen = previousScreen;
                  },
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
