import 'package:elmohandes/controllers/topic_controller.dart';
import 'package:elmohandes/views/widgets/accordion.dart';
import 'package:elmohandes/views/widgets/custom_scaffold.dart';
import 'package:elmohandes/views/widgets/row_car.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  static String id = 'MainPage';
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> categories = [
    'الأدوات المطلوبة لصيانة المحمول',
    'الأجهزة قياس مكونات بوردة المحمول',
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
    const RowCard(),
    const RowCard(),
    const RowCard(),
    const RowCard(),
    const RowCard(),
    const RowCard(),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: GetX<TopicController>(
          // init: Get.put<TopicController>(TopicController()),
          builder: (TopicController topicController) {
            if (topicController != null && topicController.categorys != null) {
              return Expanded(
                child: ListView.builder(
                  itemCount: topicController.categorys.length,
                  itemBuilder: (_, index) {
                    return Text(topicController.categorys[index]);
                  },
                ),
              );
            } else {
              return Text("loading...");
            }
          },
        ),
        //
      ),
    );
  }
}
