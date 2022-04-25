import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:elmohandes/core/services/custom_snackbar.dart';
import 'package:elmohandes/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Rx<UserModle> _userModel = UserModle().obs;

  UserModle get user => _userModel.value;

  set user(UserModle value) => _userModel.value = value;

  void clear() => _userModel.value = UserModle();

  void createUser(UserModle userModle) async {
    try {
      print(userModle.email);
      print('dfdfgdfgdfg ${userModle.membership}');
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
