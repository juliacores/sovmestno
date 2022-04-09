import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class ChipsWidget extends StatelessWidget {


  final String title;
  final bool? selected;
  final ValueChanged<bool>? onSelected;


  const ChipsWidget({
    Key? key, required this.title, this.selected, this.onSelected,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 38),
      child: FilterChip(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.grayscale, width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        label: Text(title),
        labelStyle: const TextStyle(color: AppColors.grayscale),
        backgroundColor: AppColors.appBarColor,
        selected: selected ?? false,
        onSelected: onSelected
      )

    );
  }
}
