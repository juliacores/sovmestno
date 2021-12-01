import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({Key key}) : super(key: key);

  @override
  _ChipsWidgetState createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  String defaultChoiceIndex;
  final List<String> _choicesList = ['Основное', 'О себе', 'Навыки', 'Мэчтинг'];

  @override
  void initState() {
    super.initState();
    defaultChoiceIndex = _choicesList.first;
  }

  @override
  Widget build(BuildContext context) {


 
    return Wrap(
      spacing: 16,
      children:    _choicesList.map((title)=> ChoiceChip(
          shape: const StadiumBorder(
            side: BorderSide(color: Colors.grey, width: 0.1),
          ),
          label: Container(
            alignment: Alignment.center,
            width: 90,
            height: 32,
            child: Text(title,
              style: Theme.of(context)  
                  .textTheme
                  .bodyText2
                  .copyWith(color: Colors.white, fontSize: 14),
            ),
          ),
          selected: defaultChoiceIndex == title,
          selectedColor: MyColors.backgroundButton,
          onSelected: (value) {
            setState(() {
              defaultChoiceIndex = value ? title : defaultChoiceIndex;
            });
          },
          elevation: 2,
        )).toList(),

    );
  }
}
