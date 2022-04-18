import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Widget? child;

  ContentPage({this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: colorScheme.onBackground,
      child: child,
    );
  }
}
