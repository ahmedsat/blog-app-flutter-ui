import 'package:elmhanes/views/pages/admin/create_blog.dart';
import 'package:elmhanes/views/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:elmhanes/views/pages/mainPage.dart';

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
      initialRoute: MainPage.id,

      routes: {
        Login.id: (context) => Login(),
        MainPage.id: (context) => MainPage(),
        CreateBlog.id: (context) => CreateBlog()
      },
    );
  }
}
