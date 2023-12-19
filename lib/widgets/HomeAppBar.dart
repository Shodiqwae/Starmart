import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:ecomerce_app/widgets/HomeAppBar.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.sort,
              size: 30,
              color: Color.fromARGB(255, 8, 8, 8),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Starbhak Mart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -8, end: -2),
            showBadge: true,
            ignorePointer: false,
            onTap: () {
              Navigator.pushNamed(context, "UserProfile");
            },
            child: Icon(
              Icons.supervised_user_circle_rounded,
              size: 30,
              color: const Color.fromARGB(255, 17, 17, 17),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Beranda'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Pengaturan'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}