import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title, desc;
  final Widget child;
  Accordion({
    Key? key,
    required this.title,
    required this.child,
    this.desc = '',
  }) : super(key: key);
  @override
  _AccordionState createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      widget.desc != ''
                          ? Text(
                              widget.desc,
                              style: const TextStyle(
                                fontSize: 24,
                              ),
                            )
                          : Container(),
                      const SizedBox(
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
