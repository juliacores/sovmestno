import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/modules/registration/registration_widgets/log_into_account_widget.dart';
import 'package:sovmestno/modules/registration/registration_widgets/register_button_widget.dart';


class UserImageWidget extends StatelessWidget {
  const UserImageWidget({Key key}) : super(key: key);

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
                child: Image.network('src'),
              ),
            ),
            const SizedBox(width: 33),
            SizedBox(
              height: 40,
              width: 246,
              child: ElevatedButton(
                child: const Text(
                  'Загрузить фотографию',
                  style: TextStyle(color: MyColors.backgroundButton),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(
                      width: 1.0,
                      color: MyColors.backgroundButton,
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
          style: TextStyle(fontSize: 12, color: MyColors.backgroundButton),
        ),
        const SizedBox(height: 37),
        const RegisterButtonWidget(),
        const SizedBox(height: 16),
        const LogIntoAccountWidget()
      ],
    );
  }
}
