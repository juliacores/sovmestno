import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({Key key}) : super(key: key);

  @override
  _ChipsWidgetState createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  int defaultChoiceIndex;
  final List<String> _choicesList = ['Основное', 'О себе', 'Навыки', 'Мэчтинг'];

  @override
  void initState() {
    super.initState();
    defaultChoiceIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      children: List.generate(_choicesList.length, (index) {
        return ChoiceChip(
          shape: const StadiumBorder(
            side: BorderSide(color: Colors.grey, width: 0.1),
          ),
          label: Container(
            alignment: Alignment.center,
            width: 90,
            height: 32,
            child: Text(
              _choicesList[index],
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white, fontSize: 14),
            ),
          ),
          selected: defaultChoiceIndex == index,
          selectedColor: MyColors.backgroundButton,
          onSelected: (value) {
            setState(() {
              defaultChoiceIndex = value ? index : defaultChoiceIndex;
            });
          },
          elevation: 2,
        );
      }),
    );
  }
}
