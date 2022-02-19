import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/registration/registration_widgets/login_by_email_widget.dart';
import 'package:sovmestno/modules/registration/registration_widgets/registration_app_bar.dart';
import 'package:sovmestno/widgets/back_button_widget.dart';

class LoginByEmailScreen extends StatefulWidget {
  const LoginByEmailScreen({Key key}) : super(key: key);

  @override
  _LoginByEmailScreenState createState() => _LoginByEmailScreenState();
}

class _LoginByEmailScreenState extends State<LoginByEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const RegistrationAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 104.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              const Text(
                'Вход в аккаунт',
                style:
                    TextStyle(fontSize: 36, color: MyColors.backgroundButton),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
              ),
              const SizedBox(height: 19),
              BackButtonWidget(
                onPressed: () {
                  Navigator.pushNamed(context, '/FormMainScreen');
                },
              ),
              const SizedBox(height: 44),
              const LoginByEmailWidget(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
