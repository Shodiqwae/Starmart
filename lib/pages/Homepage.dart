import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecomerce_app/pages/Signin.dart';
import 'package:ecomerce_app/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/CategorisWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';
import 'package:badges/badges.dart' as badges;

class Homepage extends StatefulWidget {
 String initialUsername;
  String initialEmail;
  String initialPassword;


  Homepage({
    required this.initialUsername,
    required this.initialEmail,
    required this.initialPassword,
 
  });

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 String initialPin = '';
 String initialaddress = '';
 String initialCity = '';
 String initialCountry = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(
             onPressed: () async {
                final changedData = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Prfr(
                      username: widget.initialUsername,
                      email: widget.initialEmail,
                      password: widget.initialPassword,
                      pin: initialPin,
                      address: initialaddress,
                      city: initialCity,
                      country: initialCountry,

                    ),
                  ),
                );

                if (changedData != null) {
                  setState(() {
                    widget.initialUsername = changedData['name'];
                    widget.initialEmail = changedData['email'];
                    widget.initialPassword = changedData['password'];
                    initialPin = changedData['pin'];
                    initialaddress = changedData['address'];
                    initialCity = changedData['city'];
                    initialCountry = changedData['country'];
                  });
                }
              },
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
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
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),

                //Categories
                CategoriesWidget(),


                  SizedBox(height: 20,),
                //carousel
                  CarouselSlider(
                  options: CarouselOptions(viewportFraction: 0.95, aspectRatio: 63/16,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 3),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    "images/carousel-1.jpg",
                    "images/carousel-2.jpg",
                    "images/carousel-1.jpg"
                    ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5,),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Container(
                              child: Image.asset(i)),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                //items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Terlaris",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
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
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage(initialUsername:'',
                                      initialEmail: '',
              initialPassword: '')),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Input()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Input()),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Input()),
            );
          }
        },
        height: 70,
        color: Color.fromARGB(216, 0, 85, 255),
        items: [
          Icon(
            Icons.home_rounded,
            size: 27,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.favorite,
            size: 27,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.shopping_cart,
            size: 27,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.notifications,
            size: 27,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ],
      ),
    );
  }
}
