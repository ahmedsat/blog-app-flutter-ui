import 'package:flutter/material.dart';

class SmallContentCard extends StatelessWidget {
  String? title;
  IconData? icon;
  Color? startColor, endColor;
  SmallContentCard({this.title, this.icon, this.startColor, this.endColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
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
                padding: const EdgeInsets.only(right: 5),
                child: Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 20,
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
                  size: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
