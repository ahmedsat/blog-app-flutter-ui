import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final Widget child;
  const Accordion({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
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
          _showContent ? Container() : Container(),
        ],
      ),
    );
  }
}
