import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Accordion extends StatefulWidget {
  final String title, desc;
  final Widget child;
  const Accordion({
    Key? key,
    required this.title,
    required this.child,
    required this.desc,
  }) : super(key: key);
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: Icon(_showContent ? Icons.remove : Icons.add),
              onPressed: () {
                setState(() {
                  _showContent = !_showContent;
                });
              },
            ),
          ),
          _showContent
              ? Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text(widget.desc,
                          style: TextStyle(
                            fontSize: 24,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      widget.child
                    ],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
