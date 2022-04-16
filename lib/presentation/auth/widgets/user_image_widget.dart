import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/widgets/avatar.dart';
import 'package:sovmestno/widgets/buttons/custom_main_button.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget({Key? key, this.addAvatar}) : super(key: key);
  final Function()? addAvatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Фотография'),
        const SizedBox(height: 5),
        Row(
          children: [
            Avatar(
                radius: 33,
                user: UserModel(
                    avatarImage: Provider.of<LoginProvider>(context).image,
                    firstName:
                        Provider.of<LoginProvider>(context).nameController.text,
                    lastName: Provider.of<LoginProvider>(context)
                        .surnameController
                        .text)),
            const SizedBox(height: 30),
            CustomButtonWidget.white(
              title: 'Загрузить фотографию',
              callback: addAvatar,
            ),
          ],
        ),
        const SizedBox(height: 18),
        const Text(
          'Максимальный размер фото  1 MB.',
          style: TextStyle(fontSize: 12, color: AppColors.backgroundButton),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
