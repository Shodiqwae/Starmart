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
  bool vafaqua = false;
  bool vafaoka = false;
  bool vafbatagor = false;
  bool vafcireng = false;
  bool vafgorengan = false;
  bool vafsusu = false;
  bool vafnasi_bakar = false;
  bool vafnasi_uduk = false;
  List<Map<String, dynamic>> cart = [];

  void addItem(
      String name, int price, String rateS, double rateD, String display) {
    // Cek apakah item sudah ada di dalam list
    int existingIndex = cart.indexWhere((item) => item['nama'] == name);

    if (existingIndex != -1) {
      // Jika item sudah ada, tambahkan count
      setState(() {
        cart[existingIndex]['count'] += 1;
      });
    } else {
      // Jika item belum ada, tambahkan item baru
      setState(() {
        cart.add({
          'nama': name,
          'price': price,
          'count': 1,
          'productinitrate': rateS,
          'productRatings': rateD,
          'dnama': display,
        });
      });
    }
  }

  void removeItem(int index) {
    setState(() {
      cart.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(216, 0, 85, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => ZoomDrawer.of(context)!.close(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        alignment: Alignment.center,
                        child: const Text(
                          'P',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: const [
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
            ),
          ],
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

                  SizedBox(
                    height: 20,
                  ),
                  //carousel
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.7,
                      aspectRatio: 64 / 19,
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
                      "images/carousel1.jpg",
                      "images/carousel2.jpg",
                      "images/carousel1.jpg"
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
                  ItemsWidget(
                    vafaqua1: vafaqua,
                    vafaoka1: vafaoka,
                    vafbatagor1: vafbatagor,
                    vafcireng1: vafcireng,
                    vafgorengan1: vafgorengan,
                    vafsusu1: vafsusu,
                    vafnasi_bakar1: vafnasi_bakar,
                    vafnasi_uduk1: vafnasi_uduk,
                    //tombol add to favorite
                    aquaPressed: () async {
                      setState(() {
                        vafaqua = !vafaqua;
                      });
                    },
                    aokaPressed: () async {
                      setState(() {
                        vafaoka = !vafaoka;
                      });
                    },
                    batagorPressed: () async {
                      setState(() {
                        vafbatagor = !vafbatagor;
                      });
                    },
                    cirengPressed: () async {
                      setState(() {
                        vafcireng = !vafcireng;
                      });
                    },
                    gorenganPressed: () async {
                      setState(() {
                        vafgorengan = !vafgorengan;
                      });
                    },
                    susuPressed: () async {
                      setState(() {
                        vafsusu = !vafsusu;
                      });
                    },
                    nasi_bakarPressed: () async {
                      setState(() {
                        vafnasi_bakar = !vafnasi_bakar;
                      });
                    },
                    nasi_udukPressed: () async {
                      setState(() {
                        vafnasi_uduk = !vafnasi_uduk;
                      });
                    },
                    //tombol add to cart
                    aquaPressedCart: () async {
                      addItem('aqua', 3000, '4.0', 4.0, 'Aqua');
                    },
                    aokaPressedCart: () async {
                      addItem('aoka', 3000, '4.5', 4.5, 'Aoka');
                    },
                    batagorPressedCart: () async {
                      addItem('batagor', 5000, '4.5', 4.5, 'Batagor');
                    },
                    cirengPressedCart: () async {
                      addItem('cireng', 5000, '4.5', 4.5, 'Cireng');
                    },
                    gorenganPressedCart: () async {
                      addItem('gorengan', 1000, '4.5', 4.5, 'Gorengan');
                    },
                    susuPressedCart: () async {
                      addItem('susu', 5000, '4.5', 4.5, 'Susu');
                    },
                    nasi_bakarPressedCart: () async {
                      addItem('nasi_bakar', 5000, '4.5', 4.5, 'Nasi Bakar');
                    },
                    nasi_udukPressedCart: () async {
                      addItem('nasi_uduk', 5000, '4.5', 4.5, 'Nasi Uduk');
                    },
                  ),
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
            cart: cart,
            removePressed: (int index) => removeItem(index));
      case 2:
        return MyHomePage(
          initialUsername1: widget.initialUsername,
          initialEmail1: widget.initialEmail,
          initialPassword1: widget.initialPassword,
          vafaqua1: vafaqua,
          aquaPressed: () async {
            setState(() {
              vafaqua = !vafaqua;
            });
          },
          vafaoka1: vafaoka,
          aokaPressed: () async {
            setState(() {
              vafaoka = !vafaoka;
            });
          },
          vafbatagor1: vafbatagor,
          batagorPressed: () async {
            setState(() {
              vafbatagor = !vafbatagor;
            });
          },
          vafcireng1: vafcireng,
          cirengPressed: () async {
            setState(() {
              vafcireng = !vafcireng;
            });
          },
          vafgorengan1: vafgorengan,
          gorenganPressed: () async {
            setState(() {
              vafgorengan = !vafgorengan;
            });
          },
          vafsusu1: vafsusu,
          susuPressed: () async {
            setState(() {
              vafsusu = !vafsusu;
            });
          },
          vafnasi_bakar1: vafnasi_bakar,
          nasi_bakarPressed: () async {
            setState(() {
              vafnasi_bakar = !vafnasi_bakar;
            });
          },
          vafnasi_uduk1: vafnasi_uduk,
          nasi_udukPressed: () async {
            setState(() {
              vafnasi_uduk = !vafnasi_uduk;
            });
          },
          initialPin1: initialPin,
          initialaddress1: initialaddress,
          initialCity1: initialCity,
          initialCountry1: initialCountry,
        );
      case 3:
        return notificationpage();
      default:
        return Container();
    }
  }

  Widget _buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: _currentIndex,
      color: Color.fromARGB(216, 0, 85, 255),
      backgroundColor: const Color.fromARGB(
          255, 234, 242, 249), // Sesuaikan dengan kebutuhan Anda
      items: [
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_cart_rounded,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.notifications,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
