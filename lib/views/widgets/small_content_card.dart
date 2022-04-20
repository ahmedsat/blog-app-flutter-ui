import 'package:elmhanes/views/pages/user/cat_page.dart';
import 'package:flutter/material.dart';

class SmallContentCard extends StatelessWidget {
  String? title;
  IconData? icon;
  Color? startColor, endColor;
  SmallContentCard(
      {this.title, this.icon, this.startColor, this.endColor, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CategoryPage.id);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            stops: const [
              0.10,
              0.90,
            ],
            // extra
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              startColor!,
              endColor!,
            ],
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                    title!,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
