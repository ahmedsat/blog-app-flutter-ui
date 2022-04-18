import 'package:BlogApp/views/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = 'Login';
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = '', password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Our',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              'App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Welcome to our app',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue),
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
                    Navigator.popAndPushNamed(context, HomePage.id);
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
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
