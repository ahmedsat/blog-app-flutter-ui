import 'package:elmhanes/views/widgets/custom_app_bar.dart';
import 'package:elmhanes/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  var body;
  CustomScaffold({this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: body,
        drawer: const CustomDrawer(),
      ),
    );
  }
}
