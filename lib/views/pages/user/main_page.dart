import 'package:elmohandes/controllers/topic_controller.dart';
import 'package:elmohandes/views/widgets/custom_scaffold.dart';
import 'package:elmohandes/views/widgets/row_car.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
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
    try {
      return CustomScaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
          ),
          child: StreamBuilder(
            stream: TopicController.instance.categoryStream(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text('fghgfh');
              } else {
                return Text('fghgfh');
              }
            },
          ),
        ),
      );
    } catch (e) {
      return CustomScaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
          ),
          child: Text(e.message),
        ),
      );
    }
  }
}

/*
ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, i) {
            return Accordion(
              title: categories[i],
              desc: 'وصف مختصر للقسم',
              child: Column(
                children: rowCards,
              ),
            );
          },
        ),
*/
// child: GetX<TopicController>(
//   init: Get.put<TopicController>(TopicController()),
//   builder: (TopicController topicController) {
//     if (topicController != null && topicController.categorys != null) {
//       print('object');
//       // return Expanded(
//       //   child: ListView.builder(
//       //     itemCount: topicController.categorys.length,
//       //     itemBuilder: (_, index) {
//       //       return Text(topicController.categorys[index].title);
//       //       // return TodoCard(
//       //       //   uid: controller.user.uid,
//       //       //   todo: todoController.todos[index],
//       //       // );
//       //     },
//       //   ),
//       // );
//     } else {
//       return Text("loading...");
//     }
//     return Text("done...");
//   },
// ),
