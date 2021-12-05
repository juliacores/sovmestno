import 'package:flutter/material.dart';

class ChipsWidget extends StatelessWidget {
  const ChipsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titleList = ['Jdkld', 'skdnsk', 'njsdn', 'nsdid'];
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6),
              ),
              color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(titleList[0]),
          ),
        )
      ],
    );
  }
}
