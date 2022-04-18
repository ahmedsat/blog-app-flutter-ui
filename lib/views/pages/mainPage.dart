import 'package:elmhanes/views/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class MainPage extends StatefulWidget {
  static String id = 'MainPage';
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    List<SideMenuItem> items = [
      SideMenuItem(
        priority: 0,
        title: 'Home page',
        onTap: () {
          page.jumpToPage(0);
        },
        icon: Icon(Icons.home),
        // badgeContent: Text(
        //   '3',
        //   style: TextStyle(color: Colors.white),
        // ),
      ),
      SideMenuItem(
        priority: 1,
        title: 'search',
        onTap: () {
          page.jumpToPage(1);
        },
        icon: Icon(Icons.search),
      ),
      SideMenuItem(
        priority: 2,
        title: 'categories',
        onTap: () {
          page.jumpToPage(2);
        },
        icon: Icon(Icons.category),
      ),
      SideMenuItem(
        priority: 3,
        title: 'account',
        onTap: () {
          page.jumpToPage(3);
        },
        icon: Icon(Icons.supervisor_account),
      ),
      SideMenuItem(
        priority: 4,
        title: 'Settings',
        onTap: () {
          page.jumpToPage(4);
        },
        icon: Icon(Icons.settings),
      ),
      SideMenuItem(
        priority: 6,
        title: 'log out',
        onTap: () async {
          Navigator.pushNamedAndRemoveUntil(context, Login.id, (route) => false);
        },
        icon: Icon(Icons.exit_to_app),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Our',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Text(
              'App ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.blue[100],
              selectedColor: Colors.lightBlue,
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            title: Column(
              children: [
                // ConstrainedBox(
                //   constraints: BoxConstraints(
                //     maxHeight: 150,
                //     maxWidth: 150,
                //   ),
                //   child: Image.asset(
                //     'assets/images/easy_sidemenu.png',
                //   ),
                // ),
                Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            // footer: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //     'mohada',
            //     style: TextStyle(fontSize: 15),
            //   ),
            // ),
            items: items,
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Home page',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Search',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Categories',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Account',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.pushNamed(context, CreateBlog.id);
      //   },
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.blue,
      //   tooltip: 'Create new topic',
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
