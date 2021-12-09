import 'package:flutter/material.dart';
import 'package:sovmestno/modules/form/form_widgets/address_field_widget.dart';
import 'package:sovmestno/modules/form/form_widgets/checkbox_widget.dart';
import 'package:sovmestno/widgets/custom_button_widget.dart';

class MainForm extends StatelessWidget {
  final VoidCallback onSavePressed;
  const MainForm({Key key,@required this.onSavePressed }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Кем вы хотите быть?',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 30),
          CheckboxWidget(onChanged: (val){
          print(val);
        },),
        const SizedBox(height: 30),
        const AddressField(),
        const SizedBox(height: 46),
        CustomButtonWidget(
            text: 'Сохранить',
            onPressed: () {
              debugPrint('Сохранить');
              onSavePressed.call();
            }),
        const SizedBox(height: 100),
      ],
    );
  }
}
