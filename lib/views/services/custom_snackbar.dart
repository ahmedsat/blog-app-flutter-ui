import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomSnackbar {
  String message;

  String title;

  IconData? icon;

  CustomSnackbar({
    required this.message,
    required this.title,
    this.icon,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      borderRadius: 25,
      margin: EdgeInsets.all(15),
      duration: Duration(
        seconds: 5,
      ),
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      forwardAnimationCurve: Curves.easeOutBack,
    );
  }
}
