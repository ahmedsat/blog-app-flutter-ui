import 'package:flutter/material.dart';

class ExtraSmallContentCardRic extends StatelessWidget {
  String? title;
  IconData? icon;

  ExtraSmallContentCardRic({this.title, this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width / 2,
      color: Color(0xffeffaff),
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 35,
            color: Color(0Xff46D6B3),
          ),
          Text(
            title!,
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
