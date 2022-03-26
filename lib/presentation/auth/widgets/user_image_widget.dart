import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/domain/models/user.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';
import 'package:sovmestno/widgets/avatar.dart';

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
                    firstName:
                        Provider.of<LoginProvider>(context).nameController.text,
                    lastName: Provider.of<LoginProvider>(context)
                        .surnameController
                        .text)),
            const SizedBox(width: 33),
            SizedBox(
              height: 40,
              width: 246,
              child: ElevatedButton(
                child: const Text(
                  'Загрузить фотографию',
                  style: TextStyle(color: AppColors.backgroundButton),
                ),
                onPressed: addAvatar,
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(
                      width: 1.0,
                      color: AppColors.backgroundButton,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        const Text(
          'Максимальный размер фото  1 MB.',
          style: TextStyle(fontSize: 12, color: AppColors.backgroundButton),
        ),
        const SizedBox(height: 37),
      ],
    );
  }
}
