import 'package:flutter/material.dart';

class CreateBlog extends StatefulWidget {
  static String id = 'CreateBlog';
  CreateBlog({Key? key}) : super(key: key);

  @override
  _CreateBlogState createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Our',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              'App',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.upload),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Icon(
                Icons.add_a_photo,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
