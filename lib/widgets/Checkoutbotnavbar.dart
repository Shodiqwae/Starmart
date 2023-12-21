import 'package:ecomerce_app/pages/placeorder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CekotBottomNavbar extends StatelessWidget {
  List<Map<String, dynamic>> cart;

  CekotBottomNavbar({required this.cart});

  int calculateTotal(List<Map<String, dynamic>> cart) {
    int total = 0;

    for (var item in cart) {
      int price = item['price'];
      int count = item['count'];
      total += price * count;
    }

    return total;
  }

  @override
  Widget build(BuildContext context) {
    // var total;

    // for (var i = 0; i < cart.length; i++) {
    //   total += cart[i]['price'] * cart[i]['count'];
    // }
    // String totals = total as String;

    int total = calculateTotal(cart);

    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 100,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => summary(
                              cart: cart,
                              total: total,
                            )));
              },
              child: Container(
                height: 60,
                width: 360,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 80, 184, 5),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${cart.length} items",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Warung Mang Ajay",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              '$total',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.only(left: 20),
                              child: Icon(
                                CupertinoIcons.shopping_cart,
                                size: 35,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
