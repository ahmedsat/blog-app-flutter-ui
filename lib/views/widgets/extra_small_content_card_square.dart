import 'package:elmhanes/views/pages/user/cat_page.dart';
import 'package:flutter/material.dart';

class ExtraSmallContentCardSquare extends StatelessWidget {
  String? title;
  IconData? icon;

  ExtraSmallContentCardSquare({this.title, this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoryPage.id);
      },
      child: Container(
        color: const Color(0xffeffaff),
        width: MediaQuery.of(context).size.width / 3.7,
        height: MediaQuery.of(context).size.width / 3.7,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              size: 35,
              color: const Color(0Xff46D6B3),
            ),
            Text(
              title!,
              style: const TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
