import 'package:elmhanes/views/pages/login.dart';
import 'package:elmhanes/views/widgets/customDrawer.dart';
import 'package:elmhanes/views/widgets/extraSmallContentCardRic.dart';
import 'package:elmhanes/views/widgets/extraSmallContentCardSquare.dart';
import 'package:elmhanes/views/widgets/smallContentCard.dart';
import 'package:elmhanes/views/widgets/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainPage extends StatefulWidget {
  static String id = 'MainPage';
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> topList = [
    SmallContentCard(
      title: 'الأدوات',
      icon: Icons.handyman,
      startColor: Colors.blue,
      endColor: Colors.lightBlue,
    ),
    SmallContentCard(
      title: 'الأجهزة',
      icon: Icons.handyman,
      startColor: Colors.green,
      endColor: Colors.lightGreen,
    ),
    SmallContentCard(
      title: 'المكونات المادية',
      icon: Icons.handyman,
      startColor: Color(0xff45d6b5),
      endColor: Color(0xff63c6c1),
    ),
    SmallContentCard(
      title: 'المكونات الالكترونية',
      icon: Icons.handyman,
      startColor: Colors.orange,
      endColor: Colors.orangeAccent,
    ),
    ///////////////////////////////
    SmallContentCard(
      title: 'الأدوات',
      icon: Icons.handyman,
      startColor: Colors.blue,
      endColor: Colors.lightBlue,
    ),
    SmallContentCard(
      title: 'الأجهزة',
      icon: Icons.handyman,
      startColor: Colors.green,
      endColor: Colors.lightGreen,
    ),
    SmallContentCard(
      title: 'المكونات المادية',
      icon: Icons.handyman,
      startColor: Color(0xff45d6b5),
      endColor: Color(0xff63c6c1),
    ),
    SmallContentCard(
      title: 'المكونات الالكترونية',
      icon: Icons.handyman,
      startColor: Colors.orange,
      endColor: Colors.orangeAccent,
    ),
  ];

  final List<Widget> midList = [
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardSquare(
      title: 'test',
      icon: Icons.ac_unit,
    ),
  ];

  final List<Widget> lowList = [
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
    ExtraSmallContentCardRic(
      title: 'test',
      icon: Icons.ac_unit,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      /** */
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
                crossAxisCount: 2,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: topList.length,
              itemBuilder: (BuildContext ctx, index) {
                return topList[index];
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                crossAxisCount: 1,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: midList.length,
              itemBuilder: (BuildContext ctx, index) {
                return midList[index];
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 2,
                crossAxisCount: 2,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: lowList.length,
              itemBuilder: (BuildContext ctx, index) {
                return lowList[index];
              },
            ),
          ),
        ],
      ),
      /**/
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          width: 50,
        ),
        color: Colors.black,
        elevation: 10,
      ),
    );
  }
}
