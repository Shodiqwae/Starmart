import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'ItemsWidget.dart';

class Crt extends StatelessWidget {
  bool sandwich;
  final Function sandwichPressed;
  bool burger;
  final Function burgerPressed;
  Crt(
      {required this.sandwich,
      required this.sandwichPressed,
      required this.burger,
      required this.burgerPressed,
      });
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        if (sandwich)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(216, 0, 85, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-31%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => sandwichPressed(),
                      icon: Icon(
                        sandwich ? Icons.favorite : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                      ),
                      
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/1.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sandwich",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sandwich lezat",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                    height: 10), // Jarak antara konten card dan ikon + teks
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp.13.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        //cart 2
        if (burger)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(216, 0, 85, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "-40%",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => burgerPressed(),
                      icon: Icon(
                        burger ? Icons.favorite : Icons.favorite_border,
                        color: const Color.fromARGB(255, 244, 54, 124),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/2.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Burger",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Burger high kalori",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                    height: 10), // Jarak antara konten card dan ikon + teks
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp. 30.000",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        //cart plus
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(color: Color.fromARGB(180, 180, 180, 180), width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_outlined,
                size: 50,
              )
            ],
          ),
        ),
      ],
    );
  }
}
