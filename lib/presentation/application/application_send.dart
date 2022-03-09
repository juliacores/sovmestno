import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ApplicationSend extends StatefulWidget {
  ApplicationSend({Key? key}) : super(key: key);

  @override
  State<ApplicationSend> createState() => _ApplicationSendState();
}
//TODO stateless!!
class _ApplicationSendState extends State<ApplicationSend> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          const Text(
            'Это сообщение будет отправлено ментору:',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: const Text(
                'Привет! Меня зовут Татьяна. \n\n\nЯ очень позитивный и веселый человек. Помимо \nпрофессиональных интересов, я люблю проводить \nвремя на природе с семьей - кататься на велосипеде, \nбегать.\n\nЯ люблю ответсвенность, поэтому уже больше 10 лет \nработаю в управлении. Являюсь спикером \nмеждународных конференций.\n\nЯ хотела бы научиться управлять командой. Буду рада \nесли вы поможете!\n\n\nС уважением,\nТатьяна',
                style: TextStyle(
                    color: AppColors.hintColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            height: 333,
            width: 476,
            decoration: BoxDecoration(
              // color: Colors.white,
              border: Border.all(color: AppColors.hintColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Row(
            children: [
              SizedBox(
                width: 234,
              ),
              //TODO поставить кнопки за widgets/buttons
              SizedBox(
                width: 226,
                height: 40,
                child: ElevatedButton(
                  child: const Text(
                    'Отправить',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.backgroundButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
