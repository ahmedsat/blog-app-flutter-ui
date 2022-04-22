import 'package:elmhanes/views/pages/admin/create_blog.dart';
import 'package:elmhanes/views/pages/login.dart';
import 'package:elmhanes/views/pages/user/cat_page.dart';
import 'package:elmhanes/views/pages/user/topic_view.dart';
import 'package:flutter/material.dart';
import 'package:elmhanes/views/pages/user/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'generated_plugin_registrant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData.light(),

      initialRoute: Login.id,
      // initialRoute: TopicView.id,

      routes: {
        TopicView.id: (context) => const TopicView(),
        Login.id: (context) => Login(),
        MainPage.id: (context) => const MainPage(),
        CreateBlog.id: (context) => CreateBlog(),
        CategoryPage.id: (context) => CategoryPage(),
      },
    );
  }
}
