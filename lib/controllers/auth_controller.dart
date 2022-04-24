import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/views/core/constants.dart';
import 'package:elmohandes/views/services/custom_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static AuthController instance = Get.find();

  int _membership = -1;

  String get membership => membershipMap[_membership];

  var membershipMap = {
    -1: 'غير مشترك',
    0: 'اداري',
    1: 'شامل',
    2: 'بلاتنيوم',
    3: 'ماسي',
    4: 'ذهبي',
    5: 'فضي',
    6: 'برونزي',
  };

  Rx<User> _user;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  void onReady() {
    super.onReady();
    _user = Rx<User>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
    ever(_user, _setMembership);
  }

  _initialScreen(User user) {
    if (user == null) {
      Get.offAllNamed('/login');
    } else {
      Get.offAllNamed('/main');
    }
  }

  _setMembership(User user) async {
    var usersRef = FirebaseFirestore.instance.collection(usersCollection);
    var snapshot = await usersRef.where('id', isEqualTo: auth.currentUser.uid).get();
    print(snapshot.docs.first.data());

    _membership = 0;
  }

  void createUser(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await _firestore.collection(usersCollection).add({
        'id': auth.currentUser.uid,
        'membership': -1,
      });
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
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
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

class UserDocumentSnapshot {
  String id;
  int membership;
}
