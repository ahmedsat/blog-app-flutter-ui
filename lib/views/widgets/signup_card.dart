
import 'package:flutter/material.dart';

class SignUpCard extends StatelessWidget {
  bool passwordInvisible = true;

  SignUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(color: Colors.black12, offset: Offset(0.0, 15.0), blurRadius: 15.0),
          BoxShadow(color: Colors.black12, offset: Offset(0.0, -10.0), blurRadius: 10.0),
        ],
      ),