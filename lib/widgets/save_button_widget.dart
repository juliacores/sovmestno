import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class SaveButtonWidget extends StatelessWidget {
  final GestureTapCallback onPressed;

  const SaveButtonWidget({
    Key key,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //TODO убрать размеры
      width: 225,
      height: 40,
      child: ElevatedButton(
        //TODO почему захардхожено сохранить?) логично же его тоже ставить
        //final Widget child;
        //SaveButtonWidget(onPressed: onPressed(), child: Text('Сохранить'))
        //поставить ниже
        //child: child,
        child: const Text('Сохранить'),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: MyColors.backgroundButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          //TODO оперировать параметром size
        ),
      ),
    );
  }
}
