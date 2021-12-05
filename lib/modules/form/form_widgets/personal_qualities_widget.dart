import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class PersonalQualities extends StatefulWidget {
  const PersonalQualities({Key key}) : super(key: key);

  @override
  _PersonalQualitiesState createState() => _PersonalQualitiesState();
}
class Tech {
  String label;
  Color color;
  bool isSelected;
  Tech(this.label, this.color, this.isSelected);
}

bool selected = false;
final List<Tech> _chipsList = [
  Tech('Толерантный', MyColors.appBarColor, false),
  Tech('Честный', MyColors.appBarColor, false),
  Tech('Общительный', MyColors.appBarColor, false),
  Tech('Рефлексирующий', MyColors.appBarColor, false),
  Tech('Заботливый', MyColors.appBarColor, false),
  Tech('Смелый', MyColors.appBarColor, false),
  Tech('Энергичный', MyColors.appBarColor, false),
  //
  Tech('Гибкий', MyColors.appBarColor, false),
  Tech('Ответственный', MyColors.appBarColor, false),
  Tech('Интроверт', MyColors.appBarColor, false),
  Tech('Экстраверт', MyColors.appBarColor, false),
  Tech('Стрессоустойчивый', MyColors.appBarColor, false),
  Tech('Пунктуальный', MyColors.appBarColor, false),
  Tech('Логичный', MyColors.appBarColor, false),
  Tech('Веселый', MyColors.appBarColor, false),

  Tech('Инициативный', MyColors.appBarColor, false),
  Tech('Организованный', MyColors.appBarColor, false),
  Tech('Креативный', MyColors.appBarColor, false),
  Tech('Ведомый', MyColors.appBarColor, false),
  Tech('Терпеливый', MyColors.appBarColor, false),
  Tech('Перфекционист', MyColors.appBarColor, false),
  Tech('Убедительный', MyColors.appBarColor, false),
];

class _PersonalQualitiesState extends State<PersonalQualities> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 35,
      direction: Axis.horizontal,
      children: techChips(),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 0, right: 38),
        child: FilterChip(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          label: Text(_chipsList[i].label),
          labelStyle: const TextStyle(color: Colors.grey),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            setState(() {
              _chipsList[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
