import 'package:ecomerce_app/widgets/CInfo.dart';
import 'package:ecomerce_app/widgets/CPromo.dart';
import 'package:ecomerce_app/widgets/CTransaction.dart';
import 'package:ecomerce_app/widgets/PilihanNotif.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategoryIndex = -1;
  Widget displayedWidget = CTransaction(); // Widget yang ditampilkan secara default
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
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
    Future.delayed(Duration(seconds: 1), () {
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
      duration: Duration(milliseconds: 100),
      child: isLoading ? Container() : widget,
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeOut,
    );
  }
}









// child: InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, "");
//               },
//               Icon(
//                 Icons.list_outlined, 
//                 size: 30, 
//                 olor: Colors.white,
//               ),
//             ),