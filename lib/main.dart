import 'package:elmhanes/views/pages/admin/create_blog.dart';
import 'package:elmhanes/views/pages/login.dart';
import 'package:elmhanes/views/pages/user/cat_page.dart';
import 'package:elmhanes/views/pages/user/topic_view.dart';
import 'package:flutter/material.dart';
import 'package:elmhanes/views/pages/user/main_page.dart';

void main() => runApp(const MyApp());

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

      // initialRoute: Login.id,
      initialRoute: TopicView.id,

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
