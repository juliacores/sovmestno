import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class DropdownFormFieldWidget extends StatefulWidget {
  const DropdownFormFieldWidget({Key? key}) : super(key: key);

  @override
  State<DropdownFormFieldWidget> createState() =>
      _DropdownFormFieldWidgetState();
}
//TODO сделать список с предложениями. Сделать строку ввода, в которую можно вводить любые теги
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
          fillColor: AppColors.grayscale,
          hintText: 'Отметьте все навыки из списка',
          hintStyle: const TextStyle(color: AppColors.hintColor),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: AppColors.borderTextField,
              width: 0.5,
            ),
          ),
        ),
        onChanged: (String? newValue) {
          setState(() {});
        },
        //TODO вынести в отдельный файл констант - навыки пришлю в ближайшее время
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
