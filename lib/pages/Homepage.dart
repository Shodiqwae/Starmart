import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce_app/pages/NontificatonsPage.dart';
import 'package:ecomerce_app/pages/Signin.dart';
import 'package:ecomerce_app/pages/favorite.dart';
import 'package:ecomerce_app/widgets/PilihanNotif.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../widgets/CategorisWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';
import 'package:ecomerce_app/pages/profile.dart';

import 'Checkout.dart';
import 'myorder.dart';

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
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
  child: Container(
    padding: EdgeInsets.zero,
    child: DrawerHeader(
    
      decoration: BoxDecoration(
        color: Color.fromARGB(216, 0, 85, 255),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
        child: Container(
          height: 100,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amber,
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'P',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                     SizedBox(
                    height: 10,
                  ),
                  Divider(
  height: 20, // tinggi garis
  color: Colors.black, // warna garis
  thickness: 2,
),
               
                  Column(
                    children:  [
                      
                      ListTile(
                        leading: Icon(
                          Icons.home_outlined,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                       
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_outline,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Account',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.wallet_outlined,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Wallet',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.notifications_outlined,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Notifications',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                            onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Notif()),);},
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.bedtime_outlined,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Night Mode',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Color.fromARGB(255, 47, 47, 47),
                        ),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                            color: Color.fromARGB(255, 47, 47, 47),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
    
    ),
  ),
),

      body: _getCurrentPage(),
      bottomNavigationBar:
          _currentIndex == 1 ? null : _buildCurvedNavigationBar(),
    );
  }

  Widget _getCurrentPage() {
    switch (_currentIndex) {
      case 0:
        return ListView(
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
                          width: 200,
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

                  SizedBox(
                    height: 20,
                  ),
                  //carousel
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.7,
                      aspectRatio: 64/19,
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
                      "images/carousel2.jpg",
                      "images/carousel2.jpg",
                      "images/carousel2.jpg"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 7,
                              
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(child: Image.asset(i)),
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
        );
      case 1:
        return Payment(
          onBackButtonPressed: () {
            setState(() {
              _currentIndex = 0; // Change to the index of FirstWidget
            });
          },
        );
      case 2:
        return MyHomePage(
          initialUsername1: widget.initialUsername,
          initialEmail1: widget.initialEmail,
          initialPassword1: widget.initialPassword,
          initialPin1: initialPin,
          initialaddress1: initialaddress,
          initialCity1: initialCity,
          initialCountry1: initialCountry,
        );
      case 3:
        return Notif();
      default:
        return Container();
    }
  }

  Widget _buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: _currentIndex,
      color:  Color.fromARGB(216, 0, 85, 255),
      backgroundColor: const Color.fromARGB(
          255, 234, 242, 249), // Sesuaikan dengan kebutuhan Anda
      items: [
        Icon(Icons.home, size: 30, color: Colors.white,),
        Icon(Icons.shopping_cart_rounded, size: 30,color: Colors.white,),
        Icon(Icons.favorite, size: 30,color: Colors.white,),
        Icon(Icons.notifications, size: 30,color: Colors.white,),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
