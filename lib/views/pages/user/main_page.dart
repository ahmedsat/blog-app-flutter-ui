import 'package:elmhanes/views/widgets/accordion.dart';
import 'package:elmhanes/views/widgets/custom_drawer.dart';
import 'package:elmhanes/views/widgets/extra_small_content_card_square.dart';
import 'package:elmhanes/views/widgets/small_content_card.dart';
import 'package:elmhanes/views/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static String id = 'MainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> items = List<String>.generate(10, (index) => 'topic $index');
  String aaaa = 'fgfdg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return const Accordion(
              title: 'test ${aaaa}',
              child: Text('data'),
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
