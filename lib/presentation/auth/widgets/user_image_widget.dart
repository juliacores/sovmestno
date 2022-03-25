import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/auth/login_provider.dart';

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
            SizedBox(
              width: 66,
              height: 66,
              child: ClipOval(
                //TODO add image placeholder
                child: Image.network(context.watch<LoginProvider>().image ??
                    'https://firebasestorage.googleapis.com/v0/b/sovmestno-co.appspot.com/o/11.png?alt=media&token=e64a6ccb-87e7-4b33-95ca-309546586901'),
              ),
            ),
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
