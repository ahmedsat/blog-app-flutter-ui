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
      startColor: const Color(0xff45d6b5),
      endColor: const Color(0xff63c6c1),
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
      startColor: const Color(0xff45d6b5),
      endColor: const Color(0xff63c6c1),
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
      appBar: const CustomAppBar(),

      /** */
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 300,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 2,
                crossAxisCount: 2,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: topList.length,
              itemBuilder: (BuildContext ctx, index) {
                return topList[index];
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
      drawer: const CustomDrawer(),
    );
  }
}
