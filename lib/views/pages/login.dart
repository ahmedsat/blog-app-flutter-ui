import 'dart:developer';

import 'package:elmhanes/views/pages/user/main_page.dart';
import 'package:elmhanes/views/widgets/login_card.dart';
import 'package:elmhanes/views/widgets/my_header.dart';
import 'package:elmhanes/views/widgets/social_icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = '', password = '';

  final controller = ScrollController();
  double offset = 0;
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    var cred;
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/barbecue.svg",
              textTop: "El-Mohandes ",
              textBottom: "الحل لكل مشاكلك",
              offset: offset,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  loginCard(),
                  const SizedBox(height: 40),
                  InkWell(
                    child: Container(
                      width: 330,
                      height: 100,
                      decoration: BoxDecoration(color: const Color(0xFF3382CC), borderRadius: BorderRadius.circular(6.0), boxShadow: [
                        BoxShadow(color: const Color(0xFF4056C6).withOpacity(.15), offset: const Offset(0.0, 8.0), blurRadius: 8.0)
                      ]),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: login,
                          child: const Center(
                            child: Text("SIGNIN", style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold", fontSize: 18, letterSpacing: 1.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 12.0,
                      ),
                      GestureDetector(
                        onTap: _radio,
                        child: radioButton(_isSelected),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Text("Remember me", style: TextStyle(fontSize: 12, fontFamily: "Poppins-Medium"))
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "New User? ",
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text("SignUp", style: TextStyle(color: Color(0xFF5d74e3), fontFamily: "Poppins-Bold")),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void login() async {
    print('object');
    // Navigator.pushNamedAndRemoveUntil(context, MainPage.id, (route) => false);
  }

  Widget horizontalLine() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 120,
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }
}
