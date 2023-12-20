import 'package:ecomerce_app/pages/Signin.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../widgets/CategorisWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';
import 'package:ecomerce_app/pages/profile.dart';

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
     
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'User Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBody() {
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
  }

  Widget _buildBottomNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      onTap: (index) {
        if (index == 2) {
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
        badges.Badge(
          onTap: () {
            Navigator.pushNamed(context, "cartPage");
          },
          child: Icon(
            Icons.card_travel,
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
    );
  }

  
}
