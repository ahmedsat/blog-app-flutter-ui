import 'dart:ui';

import 'package:elmhanes/modules/topic.dart';
import 'package:elmhanes/views/widgets/accordion.dart';
import 'package:elmhanes/views/widgets/custom_drawer.dart';
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
  List<String> categories = [
    'الأدوات المطلوبة لصيانة المحمول',
    'أجهزة قياس مكونات بوردة المحمول',
    'الأجهزة المطلوبة في صيانة المحمول',
    'فك وتركيب اي موبايل',
    'المكونات المادية للمحمول',
    'المكونات الألكترونية لبوردة المحمول',
    'الدوائر الرئيسية في المحمول ',
    'الدوائر الفرعية في المحول',
    'كيفية ازالة وتركيب المكونات',
    'اعطال وحلول',
  ];
  List<RowCard> rowCards = [
    RowCard(),
    RowCard(),
    RowCard(),
    RowCard(),
    RowCard(),
    RowCard(),
  ];
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
          itemCount: categories.length,
          itemBuilder: (context, i) {
            return Accordion(
              title: categories[i],
              child: Column(
                children: rowCards,
              ),
            );
          },
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class RowCard extends StatelessWidget {
  const RowCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffeffaff),
      ),
      width: MediaQuery.of(context).size.width,
      child: Text(
        "عنوان الموضوع",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
