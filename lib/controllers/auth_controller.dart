import 'package:elmhandes/views/services/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAllNamed('/login');
    } else {
      Get.offAllNamed('/main');
    }
  }

  void createUser(String email, password) {
    try {
      auth.createUserWithEmailAndPassword(
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

  void logout() {
    // print('auth.signOut();');
    // CustomSnackbar(
    //   title: 'Log Out',
    //   message: 'Done',
    //   icon: Icons.logout,
    // );
  }
}
