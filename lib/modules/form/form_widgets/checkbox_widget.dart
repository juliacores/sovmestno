import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class CheckboxWidget extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  const CheckboxWidget({Key key,@required this.onChanged}) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: const BorderSide(width: 0.5, color: Colors.black),
              checkColor: Colors.white,
              focusColor: Colors.black,
              fillColor: MaterialStateProperty.all(MyColors.checkboxColor),
              value: isChecked,
              onChanged: (bool value) {
                setState(
                  () {
                    isChecked = value;
                    widget.onChanged(isChecked);
                  },
                );
              },
            ),
            const SizedBox(width: 14),
            const Text(
              'Менти',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
        const SizedBox(height: 33),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              side: const BorderSide(width: 0.5, color: Colors.black),
              checkColor: Colors.white,
              focusColor: Colors.black,
              fillColor: MaterialStateProperty.all(MyColors.checkboxColor),
              value: isCheck,
              onChanged: (bool value) {
                setState(
                  () {
                    isCheck = value;
                  },
                );
              },
            ),
            const SizedBox(width: 14),
            const Text(
              'Ментор',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
        const SizedBox(height: 30),
        const Text(
          'Вы также можете быть обоими.',
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
