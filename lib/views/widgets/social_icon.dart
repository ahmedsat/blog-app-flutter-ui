import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function onPressed;
  const SocialIcon({
    Key key,
    this.color,
    this.iconData,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: RawMaterialButton(
          shape: const CircleBorder(),
          onPressed: () {},
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}
