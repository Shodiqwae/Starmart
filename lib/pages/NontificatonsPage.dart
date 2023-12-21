import 'package:ecomerce_app/widgets/CInfo.dart';
import 'package:ecomerce_app/widgets/CPromo.dart';
import 'package:ecomerce_app/widgets/CTransaction.dart';
import 'package:ecomerce_app/widgets/PilihanNotif.dart';
import 'package:flutter/material.dart';

import '../widgets/HomeAppBar.dart';

class notificationpage extends StatefulWidget {
  @override
  _notificationpageState createState() => _notificationpageState();
}

class _notificationpageState extends State<notificationpage> {
  int selectedCategoryIndex = -1;
  Widget displayedWidget =
      CTransaction(); // Widget yang ditampilkan secara default
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: Color.fromARGB(255, 255, 255, 255),
                padding: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        "Notification",
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
                      margin: EdgeInsets.symmetric(
                        vertical: 7,
                      ),
                    ),
                    NotifChoice(onCategorySelected: (index) {
                      _handleCategorySelection(index);
                    }),
                    SizedBox(height: 20),
                    _buildAnimatedWidget(displayedWidget),
                  ],
                ),
              ),
            ],
          ),
          if (isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  void _handleCategorySelection(int index) {
    setState(() {
      isLoading = true;
    });

    // Atur Lamanya waktu loading
    Future.delayed(Duration(seconds: 0), () {
      setState(() {
        switch (index) {
          case 0:
            displayedWidget = CTransaction();
            break;
          case 1:
            displayedWidget = CPromo();
            break;
          case 2:
            displayedWidget = CInfo();
            break;
          // tambahin case untuk pilihan notif yang lain, index nya juga inget!!
        }
        selectedCategoryIndex = index;
        isLoading = false;
      });
    });
  }

  Widget _buildAnimatedWidget(Widget widget) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 0),
      child: isLoading ? Container() : widget,
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
    );
  }
}
