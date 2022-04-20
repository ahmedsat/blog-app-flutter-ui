import 'package:elmhanes/views/pages/user/main_page.dart';
import 'package:elmhanes/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static String id = 'Login';

  @override
  String username = '', password = '';
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      // CustomAppBar
      appBar: CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Welcome to our app ',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: colorScheme.primary),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(hintText: 'Password '),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, MainPage.id);
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: colorScheme.primary,
                    child: Icon(Icons.login),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
