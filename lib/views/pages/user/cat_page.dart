import 'package:elmhanes/views/widgets/custom_app_bar.dart';
import 'package:elmhanes/views/widgets/custom_drawer.dart';
import 'package:elmhanes/views/widgets/extra_small_content_card_ric.dart';
import 'package:elmhanes/views/widgets/login_card.dart';
import 'package:elmhanes/views/widgets/my_header.dart';
import 'package:elmhanes/views/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatefulWidget {
  static String id = 'CategoryPage';
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final controller = ScrollController();
  double offset = 0;
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/barbecue.svg",
              textTop: "عنوان القسم",
              textBottom:
                  "لا أحد يحب الألم بذاته، يسعى ورائه أو يبتغيه، ببساطة لأنه الألم... ",
              offset: offset,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
            ExtraSmallContentCardRic(
              icon: Icons.topic,
              title: 'test title',
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }
}
