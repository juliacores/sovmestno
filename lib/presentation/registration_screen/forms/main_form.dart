import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/address_field_widget.dart';
import 'package:sovmestno/presentation/registration_screen/forms/form_widgets/checkbox_widget.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class StartForm extends StatelessWidget {
  final VoidCallback onSavePressed;

  const StartForm({Key? key, required this.onSavePressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Кем вы хотите быть?',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        SizedBox(height: 30.h),
        CheckboxWidget(
          onChangedMentor: (val) {
            Provider.of<UserComplitedRegisterProvider>(context, listen: false)
                .user = Provider.of<UserComplitedRegisterProvider>(context,
                    listen: false)
                .user!
                .copyWith(status: AccountRole.mentor);
          },
          onChangedMenti: (val) {
            Provider.of<UserComplitedRegisterProvider>(context, listen: false)
                .user = Provider.of<UserComplitedRegisterProvider>(context,
                    listen: false)
                .user!
                .copyWith(status: AccountRole.menti);
          },
          role:
              Provider.of<UserComplitedRegisterProvider>(context).user?.status,
        ),
        SizedBox(height: 30.h),
        AddressField(),
        SizedBox(height: 46.h),
        CustomButtonWidget.blue(
            title: 'Сохранить',
            callback: () {
              debugPrint('Сохранить');
              onSavePressed.call();
            }),
        const SizedBox(height: 100),
      ],
    );
  }
}
