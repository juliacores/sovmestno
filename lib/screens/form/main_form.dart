import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';
import 'package:sovmestno/widgets/form_widgets/address_field.dart';
import 'package:sovmestno/widgets/form_widgets/checkbox_widget.dart';
import 'package:sovmestno/widgets/form_widgets/chips_widget.dart';
import 'package:sovmestno/widgets/form_widgets/form_app_bar.dart';
import 'package:sovmestno/widgets/form_widgets/save_button_widget.dart';

class MainForm extends StatefulWidget {
  const MainForm({Key key}) : super(key: key);

  @override
  _MainFormState createState() => _MainFormState();
}

class _MainFormState extends State<MainForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: const FormAppBar(title: 'Совместно'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 104, right: 104),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 66),
              const Text(
                'Анкета',
                style:
                    TextStyle(fontSize: 36, color: MyColors.backgroundButton),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                height: 0.2,
                color: MyColors.backgroundButton,
              ),
              const SizedBox(height: 50),
              const ChipsWidget(
                title: 'Основное',
                chipsColor: MyColors.backgroundButton,
                textColor: Colors.white,
                borderColor: MyColors.backgroundButton,
              ),
              const SizedBox(height: 60),
              const Text(
                'Кем вы хотите быть?',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
              const SizedBox(height: 30),
              const CheckboxWidget(),
              const SizedBox(height: 30),
              const AddressField(),
              const SizedBox(height: 46),
              const SaveButtonWidget(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
