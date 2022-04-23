import 'package:elmhandes/controllers/auth_controller.dart';
import 'package:elmhandes/views/pages/auth/login.dart';
import 'package:elmhandes/views/pages/auth/signup.dart';
import 'package:elmhandes/views/pages/user/topic_view.dart';
import 'package:flutter/material.dart';
import 'package:elmhandes/views/pages/user/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then(
    (value) {
      print(value);
      Get.put(AuthController);
    },
    onError: (e) => print(e),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData.light(),

      // initialRoute: Login.id,
      // // initialRoute: TopicView.id,
      home: const Login(),

      getPages: [
        GetPage(name: '/login', page: () => const Login()),
        GetPage(name: '/signup', page: () => const SignUp()),
        GetPage(name: '/topic', page: () => const TopicView()),
        GetPage(name: '/main', page: () => const MainPage()),
      ],
    );
  }
}
