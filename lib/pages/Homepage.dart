import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/CategorisWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';
import 'InputProductPage.dart';
import 'package:badges/badges.dart' as badges;

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            //temporary height
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color:  Color.fromARGB(213, 227, 227, 227),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(

                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here',
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.search_rounded,
                        size: 27,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ), 
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Semua makanan",
                    style: TextStyle(
                      fontSize: 25, 
                      fontWeight: FontWeight.bold, 
                      color: Color.fromARGB(255, 0, 0, 0),),
                  ),
                ),

                //Categories
                CategoriesWidget(),

                //items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Terlaris",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:  Color.fromARGB(255, 0, 0, 0),
                    ),
                    ),
                ),

                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InputProdukPage()),
            );
          }
        },
        height: 70,
        color:  Color.fromARGB(216, 0, 85, 255),
        items: [
          Icon(
            Icons.home_rounded, 
            size: 27, 
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          badges.Badge(
            onTap: () { 
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
               CupertinoIcons.cart_fill,
              size: 27,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            badgeStyle: badges.BadgeStyle(
              badgeColor: const Color.fromARGB(255, 254, 82, 70),
              padding: EdgeInsets.all(7),
            ),
          ),
          Icon(
            Icons.filter_list, 
            size: 27, 
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}