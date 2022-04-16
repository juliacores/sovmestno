import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/routes.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/presentation/auth/widgets/bottom_text_auth.dart';
import 'package:sovmestno/presentation/auth/widgets/detailed_registration_widget.dart';
import 'package:sovmestno/presentation/auth/widgets/registration_widget.dart';
import 'package:sovmestno/widgets/appbar/auth_actions.dart';
import 'package:sovmestno/widgets/appbar/custom_appbar.dart';
import 'package:sovmestno/widgets/bottom_bar/bottom_bar.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';
import 'package:sovmestno/widgets/header_with_line.dart';

class AuthorizationScreen extends StatelessWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Provider.of<LoginProvider>(context).user != null) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) =>
          Navigator.of(context).pushReplacementNamed(Routes.regRoute));
    }

    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: CustomAppBar(
        actions: AuthActions(
          regCallback: () => goToFirstStep(context),
          authCallback: () => goToAuthStep(context),
        ),
      ),
      body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Center(
              child: Column(
        children: Provider.of<LoginProvider>(context).regState == 0
            ? firstRegStep(context)
            : (Provider.of<LoginProvider>(context, listen: false).regState == 1
                ? secondRegStep(context)
                : authStep(context)),
      ))),
      bottomNavigationBar: const BottomBar(),
    );
  }

  goToFirstStep(context) {
    Provider.of<LoginProvider>(context, listen: false).regState = 0;
  }

  goToSecondStep(context) {
    Provider.of<LoginProvider>(context, listen: false).regState = 1;
  }

  goToAuthStep(context) {
    Provider.of<LoginProvider>(context, listen: false).regState = 2;
  }

  authStep(context) => [
        Padding(
            padding: EdgeInsets.only(left: 104.w, right: 104.w),
            child: HeaderWithLine(
              title: 'Вход в аккаунт',
              backCallback: () => goToFirstStep(context),
            )),
        const Auth(),
        BottomTextWidget(
          title: 'Нет аккаунта?',
          actionTitle: 'Зарегестрироваться',
          callback: () => goToFirstStep(context),
        ),
      ];

  firstRegStep(context) => [
        SizedBox(height: 200.h),
        SizedBox(
          width: MediaQuery.of(context).size.width<400 ? 300:655,
          height: 42,
          child: TextField(
            controller: Provider.of<LoginProvider>(context).loginController,
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
        CustomButtonWidget.blue(
          title: 'Далее',
          callback: () => goToSecondStep(context),
        ),

        const SizedBox(height: 30),
        BottomTextWidget(
          title: 'Уже есть аккаунт?',
          actionTitle: 'Войти',
          callback: () => goToAuthStep(context),
        ),
        //Вывод виджетов на экран авторизации для проверки
        const SizedBox(height: 30),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     SizedBox(width: 50,),
        //     MyMentiesCard.empty(),
        //     SizedBox(width: 50,),
        //     MyMentiesCard.available(name: 'Иван Зайцев'),
        //     SizedBox(width: 50,),
        //     CustomButtonWidget.blue(title: 'Синяя-синяя кнопка', callback: (){},),
        //     SizedBox(width: 50,),
        //     CustomButtonWidget.white(title: 'White', callback: (){},),
        //   ],
        // )
      ];

  secondRegStep(context) => [
        Padding(
            padding: EdgeInsets.only(left: 104.w, right: 104.w),
            child: HeaderWithLine(
              title: 'Регистрация',
              backCallback: () => goToFirstStep(context),
            )),
        const DetailedRegistrationWidget(),
        BottomTextWidget(
          title: 'Уже есть аккаунт?',
          actionTitle: 'Войти',
          callback: () => goToAuthStep(context),
        ),
      ];
}
