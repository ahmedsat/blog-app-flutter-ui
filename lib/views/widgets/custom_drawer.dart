import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              color: Colors.lightBlue,
            ),
            child: ListTile(
              title: const Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Get.offAllNamed('/main');
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 5,
            ),
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(25),
              color: Colors.lightBlue,
            ),
            child: ListTile(
              title: const Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Get.offAllNamed('/main');
              },
            ),
          ),
        ],
      ),
    );
  }
}
