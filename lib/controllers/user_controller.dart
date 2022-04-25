import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/controllers/auth_controller.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:elmohandes/core/services/custom_snackbar.dart';
import 'package:elmohandes/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Rx<UserModle> _userModel = UserModle().obs;

  UserModle get user => _userModel.value;

  Rx<int> _membership;

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
  // _setMembership(User user) async {
  //   var snapshot = await FirebaseFirestore.instance.collection(usersCollection).where('id', isEqualTo: auth.currentUser.uid).get();

  //   _membership = snapshot.docs.first.data()['membership'];
  // }

  set user(UserModle value) => _userModel.value = value;

  void clear() => _userModel.value = UserModle();

  @override
  void onReady() async {
    super.onReady();
    DocumentSnapshot snapshot = await _firestore.collection(usersCollection).doc(AuthController.instance.auth.currentUser.email).get();
    _membership = Rx<int>(snapshot['membership']);
  }

  void createUser(UserModle userModle) async {
    try {
      print(userModle.email);
      await _firestore.collection(usersCollection).doc(userModle.email).set({
        'membership': userModle.membership,
      });
    } catch (e) {
      CustomSnackbar(
        icon: Icons.error,
        title: 'فشل انشاء حساب',
        message: e.message,
      );
    }
  }

  Future<UserModle> getUser(String email) async {
    try {
      DocumentSnapshot snapshot = await _firestore.collection(usersCollection).doc(email).get();
      return UserModle.fromDocumentSnapshot(snapshot);
    } catch (e) {
      CustomSnackbar(
        icon: Icons.error,
        title: 'حدث خطأ ما',
        message: e.message,
      );
      rethrow;
    }
  }
}
