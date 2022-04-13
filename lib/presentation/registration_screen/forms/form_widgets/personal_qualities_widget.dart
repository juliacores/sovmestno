import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/presentation/registration_screen/user_provider.dart';
//
// class PersonalQualities extends StatefulWidget {
//   const PersonalQualities({Key? key}) : super(key: key);
// //TODO set Stateless and refactor
//   @override
//   _PersonalQualitiesState createState() => _PersonalQualitiesState();
// }
// class Tech {
//   String label;
//   Color color;
//   bool isSelected;
//   Tech(this.label, this.color, this.isSelected);
// }
// //TODO сделать список с предложениями. Сделать строку ввода, в которую можно вводить любые теги
// bool selected = false;
// final List<Tech> _chipsList = [
//   Tech('Толерантный', AppColors.appBarColor, false),
//   Tech('Честный', AppColors.appBarColor, false),
//   Tech('Общительный', AppColors.appBarColor, false),
//   Tech('Рефлексирующий', AppColors.appBarColor, false),
//   Tech('Заботливый', AppColors.appBarColor, false),
//   Tech('Смелый', AppColors.appBarColor, false),
//   Tech('Энергичный', AppColors.appBarColor, false),
//   //
//   Tech('Гибкий', AppColors.appBarColor, false),
//   Tech('Ответственный', AppColors.appBarColor, false),
//   Tech('Интроверт', AppColors.appBarColor, false),
//   Tech('Экстраверт', AppColors.appBarColor, false),
//   Tech('Стрессоустойчивый', AppColors.appBarColor, false),
//   Tech('Пунктуальный', AppColors.appBarColor, false),
//   Tech('Логичный', AppColors.appBarColor, false),
//   Tech('Веселый', AppColors.appBarColor, false),
//
//   Tech('Инициативный', AppColors.appBarColor, false),
//   Tech('Организованный', AppColors.appBarColor, false),
//   Tech('Креативный', AppColors.appBarColor, false),
//   Tech('Ведомый', AppColors.appBarColor, false),
//   Tech('Терпеливый', AppColors.appBarColor, false),
//   Tech('Перфекционист', AppColors.appBarColor, false),
//   Tech('Убедительный', AppColors.appBarColor, false),
// ];
//
// class _PersonalQualitiesState extends State<PersonalQualities> {
//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 15,
//       runSpacing: 30,
//       direction: Axis.horizontal,
//       children: techChips(),
//     );
//   }
//
//   List<Widget> techChips() {
//     List<Widget> chips = [];
//     for (int i = 0; i < _chipsList.length; i++) {
//       Widget item = Padding(
//         padding: const EdgeInsets.only(left: 0, right: 38),
//         child: FilterChip(
//           shape: RoundedRectangleBorder(
//             side: const BorderSide(color: AppColors.grayscale, width: 0.5),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           label: Text(_chipsList[i].label),
//           labelStyle: const TextStyle(color: AppColors.grayscale),
//           backgroundColor: _chipsList[i].color,
//           selected: _chipsList[i].isSelected,
//           onSelected: (bool value) {
//
//             if(value){
//               Provider.of<UserComplitedRegisterProvider>(context, listen: false).tags.add(_chipsList[i].label);
//             } else {
//               Provider.of<UserComplitedRegisterProvider>(context, listen: false).tags.remove(_chipsList[i].label);
//             }
//
//             setState(() {
//               _chipsList[i].isSelected = value;
//             });
//           },
//         ),
//       );
//       chips.add(item);
//     }
//     return chips;
//   }
// }
