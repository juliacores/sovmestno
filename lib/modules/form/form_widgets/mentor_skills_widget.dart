import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/constants/text.dart';

class MentorSkillsWidget extends StatelessWidget {
  const MentorSkillsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController skillFieldController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Расскажите о своем профессиональном опыте и компетенциях. (макс. 500 символов)',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 960,
          height: 160,
          child: TextField(
            controller: skillFieldController,
            maxLines: 10,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              filled: true,
              fillColor: MyColors.grayscale,
              hintText: ConstText.hintBiography,
              hintStyle: const TextStyle(color: MyColors.hintColor),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: MyColors.borderTextField,
                  width: 0.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: MyColors.focusedBorderTextField,
                  width: 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
