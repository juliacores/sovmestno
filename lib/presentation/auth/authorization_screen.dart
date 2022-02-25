import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/auth/widgets/bottom_text_auth.dart';
import 'package:sovmestno/presentation/registration/registration_widgets/detailed_registration_widget.dart';
import 'package:sovmestno/presentation/registration/registration_widgets/registration_widget.dart';
import 'package:sovmestno/widgets/appbar/auth_actions.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/button_constructor.dart';
import 'package:sovmestno/widgets/header_with_line.dart';
import 'package:sovmestno/widgets/my_menti_card.dart';


class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  //TODO refactor
  //0 - email, 1 - reg with name 2 - login
  int regState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: CustomAppBar(
        actions: AuthActions(
          regCallback: () => setState(() {
            regState = 0;
          }),
          authCallback: () => setState(() {
            regState = 2;
          }),
        ),
      ),
      body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
        children: regState == 0
            ? firstRegStep()
            : (regState == 1 ? secondRegStep() : authStep()),
      ))),
    );
  }

  authStep() => [
        HeaderWithLine(
          title: 'Вход в аккаунт',
          backCallback: () => setState(() {
            regState = 0;
          }),
        ),
        const Registration(),
        BottomTextWidget(
          title: 'Нет аккаунта?',
          actionTitle: 'Зарегестрироваться',
          callback: () => setState(() {
            regState = 0;
          }),
        ),
      ];

  firstRegStep() => [
        const SizedBox(height: 200),
        SizedBox(
          width: 655,
          height: 42,
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'Введите ваш Email',
              hintStyle: const TextStyle(color: AppColors.hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.borderTextField,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: AppColors.focusedBorderTextField,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 117,
          height: 40,
          child: ElevatedButton(
            child: const Text(
              'Далее',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                regState = 1;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: AppColors.backgroundButton,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        BottomTextWidget(
          title: 'Уже есть аккаунт?',
          actionTitle: 'Войти',
          callback: () => setState(() {
            regState = 3;
          }),
        ),
    //Вывод виджетов на экран авторизации для проверки
    SizedBox(height: 30,),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 50,),
        MyMentiesCard(mentiesAvailable: false),
        SizedBox(width: 50,),
        MyMentiesCard(mentiesAvailable: true, name: 'Иван Зайцев',),
        SizedBox(width: 50,),
        ButtonConstructor(buttonIsBlue: false, buttonText: 'Белая', onPressed: (){}),
        SizedBox(width: 50,),
        ButtonConstructor(buttonIsBlue: true, buttonText: 'Синяя', onPressed: (){})
      ],
    )
      ];

  secondRegStep() => [
        HeaderWithLine(
            title: 'Регистрация',
            backCallback: () => setState(() {
                  regState = 0;
                })),
        const DetailedRegistrationWidget(),
        BottomTextWidget(
          title: 'Уже есть аккаунт?',
          actionTitle: 'Войти',
          callback: () => setState(() {
            regState = 3;
          }),
        ),
      ];
}
