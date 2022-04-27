import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/controllers/topic_controller.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:elmohandes/views/widgets/accordion.dart';
import 'package:elmohandes/views/widgets/custom_scaffold.dart';
import 'package:elmohandes/views/widgets/topic_list.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Stream<QuerySnapshot> _categoryStream =
      FirebaseFirestore.instance.collection(categoryCollection).snapshots();

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
        child: StreamBuilder<QuerySnapshot>(
          stream: _categoryStream,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading");
            }
            return ListView(
              children: snapshot.data.docs.map(
                (DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;

                  return Accordion(
                    title: document.id,
                    desc: document['description'],
                    child: TopicList(
                      category: document.id,
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
      ),
    );
  }
}
