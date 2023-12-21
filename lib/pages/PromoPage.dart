import 'package:ecomerce_app/pages/placeorder.dart';
import 'package:ecomerce_app/widgets/CPromo.dart';
import 'package:ecomerce_app/widgets/HomeAppBar.dart';
import 'package:ecomerce_app/widgets/placeorderwidget/placeordersummary.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class PromoPage extends StatelessWidget {
 

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Color.fromARGB(255, 8, 8, 8),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Promo",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15, bottom: 500),
            decoration: BoxDecoration(
              color: Color.fromARGB(213, 227, 227, 227),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Text(
                    "Diskon & Event",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                CPromo()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
