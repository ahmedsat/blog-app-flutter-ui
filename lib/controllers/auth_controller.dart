import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
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
    print('createUser');
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e);
      Get.snackbar(
        'title',
        'message',
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text('data'),
        messageText: Text(
          e.toString(),
        ),
      );
    }
  }
}
