import 'package:BlogApp/views/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:BlogApp/views/admin/create_blog.dart';
import 'package:BlogApp/views/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData.dark(),

      initialRoute: Login.id,
      // initialRoute: HomePage.id,

      routes: {
        Login.id: (context) => Login(),
        HomePage.id: (context) => HomePage(),
        CreateBlog.id: (context) => CreateBlog()
      },
    );
  }
}
