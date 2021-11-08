import 'package:flutter/material.dart';
import 'package:sovmestno/constants/colors.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key key}) : super(key: key);

  @override
  _AuthorizationScreenState createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.appBarColor,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 70.0,
          ),
          child: Text(
            'Совместно',
            style: TextStyle(
              fontSize: 32,
              color: MyColors.backgroundButton,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: MyColors.appBarColor,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 105),
            child: Row(
              children: [
                Container(
                  width: 0.5,
                  height: 49,
                  color: Colors.grey,
                ),
                const SizedBox(width: 35),
                SizedBox(
                  width: 207,
                  height: 40,
                  child: ElevatedButton(
                    child: Text(
                      'Зарегестрироваться',
                      style: TextStyle(color: MyColors.backgroundButton),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.blue[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          width: 1.0,
                          color: MyColors.backgroundButton,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 28),
                SizedBox(
                  width: 98,
                  height: 40,
                  child: ElevatedButton(
                    child: const Text(
                      'Далее',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: MyColors.backgroundButton,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ), // Container(
          //   color: MyColors.borderTextField,
          //   width: 50,
          //   height: 49,
          // )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 200),
          SizedBox(
            width: 655,
            height: 42,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: 'Введите ваш Email',
                hintStyle: TextStyle(color: MyColors.hintColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.borderTextField,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: MyColors.focusedBorderTextField,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 117,
            height: 40,
            child: ElevatedButton(
              child: const Text(
                'Далее',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: MyColors.backgroundButton,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Уже есть аккаунт?',
                  style: TextStyle(fontSize: 14, color: MyColors.hintColor),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Войти',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: MyColors.backgroundButton),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
