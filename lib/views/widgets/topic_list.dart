import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elmohandes/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopicList extends StatefulWidget {
  String category;
  TopicList({this.category, Key key}) : super(key: key);

  @override
  _TopicListState createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
  @override
  Widget build(BuildContext context) {
    var categoryDoc = FirebaseFirestore.instance
        .collection(categoryCollection)
        .doc(widget.category);
    final Stream<QuerySnapshot> _topicStream =
        categoryDoc.collection(topicCollection).snapshots();
    return Container(
      child: StreamBuilder(
        stream: _topicStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          if (snapshot.data.docs.length == 0) {
            return Text("No data");
          }

          return Column(
            children: snapshot.data.docs.map(
              (DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data() as Map<String, dynamic>;
                return RowCard(
                  title: document.id,
                  data: document['data'],
                );
                // return Accordion(
                //   title: document.id,
                //   desc: document['description'],
                //   child: TopicList(
                //     category: document.id,
                //   ),
                // );
              },
            ).toList(),
          );
        },
      ),
    );
  }
}

class RowCard extends StatelessWidget {
  String title, data;
  RowCard({this.title, this.data, Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/topic');
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffeffaff),
        ),
        width: MediaQuery.of(context).size.width,
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
