import 'package:elmohandes/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = AuthController.instance.auth.currentUser.email;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: RichText(
              text: TextSpan(
                text: 'مرحبا بك يh : ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: email,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              color: Colors.lightBlue,
            ),
            child: ListTile(
              title: const Text('Home'),
              trailing: const Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Get.offAllNamed('/main');
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 2,
            ),
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              color: Colors.lightBlue,
            ),
            child: ListTile(
              title: const Text('LogOut'),
              trailing: const Icon(Icons.logout),
              onTap: () {
                AuthController.instance.logout();
                // try {
                // } on Exception catch (e) {
                //   CustomSnackbar(
                //     message: 'حدث خطأ ما',
                //     title: e.toString(),
                //     icon: Icons.error,
                //   );
                // }
              },
            ),
          ),
        ],
      ),
    );
  }
}
