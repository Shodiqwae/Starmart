import 'package:ecomerce_app/widgets/myorderwidget/myorderappbar.dart';
import 'package:ecomerce_app/widgets/myorderwidget/myorderchoose.dart';
import 'package:ecomerce_app/widgets/myorderwidget/myorderinfo.dart';
import 'package:ecomerce_app/widgets/myorderwidget/myordertrans.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {

  List<Map<String, dynamic>> cart;
  int total;

  MyOrder({required this.cart, required this.total});


  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  int selectedCategoryIndex = -1;
  Widget displayedWidget = MyTransaction(cart: [], total: 0,); // Widget yang ditampilkan secara default
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              MyorderAppbar(),
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
                    MyOrderchoose(onCategorySelected: (index) {
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
            displayedWidget = MyTransaction(
              cart: widget.cart,
              total: widget.total,
            );
            break;
          case 1:
            displayedWidget = MyorderInfo();
            break;
          case 2:
            displayedWidget = MyorderInfo();
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