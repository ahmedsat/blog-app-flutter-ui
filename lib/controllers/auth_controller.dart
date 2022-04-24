import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/views/services/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Rx<User> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
    print(_user);
  }

  _initialScreen(User user) {
    if (user == null) {
      Get.offAllNamed('/login');
    } else {
      Get.offAllNamed('/main');
    }
  }

  void createUser(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      CustomSnackbar(
        message: 'فشل انشاء حساب',
        title: e.toString(),
        icon: Icons.error,
      );
    }
  }

  Future<void> login(String email, password) async {
    try {
      await auth
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        print(auth.currentUser);
      });
    } catch (e) {
      CustomSnackbar(
        message: 'فشل تسجيل الدخول',
        title: e.toString(),
        icon: Icons.error,
      );
    }
  }

  Future<void> logout() async {
    await auth.signOut();
    CustomSnackbar(
      title: 'Log Out',
      message: 'Done',
      icon: Icons.logout,
    );
  }
}
