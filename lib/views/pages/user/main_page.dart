import 'package:elmhanes/views/widgets/custom_drawer.dart';
import 'package:elmhanes/views/widgets/extra_small_content_card_square.dart';
import 'package:elmhanes/views/widgets/small_content_card.dart';
import 'package:elmhanes/views/widgets/custom_app_bar.dart';
import 'package:getwidget/getwidget.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static String id = 'MainPage';
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        title: Text(
          'Accordion',
          style: TextStyle(fontSize: 18),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          children: <Widget>[
            GFTypography(
              text: 'Basic Accordion',
            ),
            GFAccordion(
              title: 'GF Accordion',
              content: 'GetFlutter is an open source library that comes with pre-build 1000+ UI components.',
            ),
            SizedBox(
              height: 40,
            ),
            GFTypography(
              text: 'Accordion with trailing icon',
            ),
            GFAccordion(title: 'GF Accordion', content: 'GetFlutter is an open source library that comes with  pre-build 1000+ UI components.', collapsedIcon: Icon(Icons.add), expandedIcon: Icon(Icons.minimize)),
            SizedBox(
              height: 40,
            ),
            GFTypography(
              text: 'Accordion with trailing text',
            ),
            GFAccordion(title: 'GF Accordion', content: 'GetFlutter is an open source library that comes with  pre-build 1000+ UI components.', collapsedIcon: Text('Show'), expandedIcon: Text('Hide')),
          ],
        ),
      ),
    );
  }
}
