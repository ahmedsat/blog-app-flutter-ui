import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowCard extends StatelessWidget {
  const RowCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/topic');
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffeffaff),
        ),
        width: MediaQuery.of(context).size.width,
        child: const Text(
          "عنوان الموضوع",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
