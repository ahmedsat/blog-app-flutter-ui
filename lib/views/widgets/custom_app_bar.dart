import 'package:elmhanes/views/widgets/logo.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight + 0),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      title: const Logo(),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: colorScheme.primary),
    );
  }
}
