import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class DropdownFormFieldWidget extends StatefulWidget {
  const DropdownFormFieldWidget({Key key}) : super(key: key);

  @override
  State<DropdownFormFieldWidget> createState() =>
      _DropdownFormFieldWidgetState();
}

class _DropdownFormFieldWidgetState extends State<DropdownFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 960,
      height: 40,
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: MyColors.grayscale,
          hintText: 'Отметьте все навыки из списка',
          hintStyle: const TextStyle(color: MyColors.hintColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: MyColors.borderTextField,
              width: 0.5,
            ),
          ),
        ),
        onChanged: (String newValue) {
          setState(() {});
        },
        items: <String>['1', '2', '3', '4'].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
