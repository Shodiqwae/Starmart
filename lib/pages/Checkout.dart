import 'package:ecomerce_app/widgets/Checkoutappbar.dart';
import 'package:ecomerce_app/widgets/Checkoutbotnavbar.dart';
import 'package:ecomerce_app/widgets/checkoutisi.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  final VoidCallback? onBackButtonPressed;
  List<Map<String, dynamic>> cart;
  final Function removePressed;

  Payment(
      {this.onBackButtonPressed,
      required this.cart,
      required this.removePressed});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
        home: Scaffold(
          body: ListView(
            children: [
              CekotAppBar(onPressed: widget.onBackButtonPressed),
              Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Cekotisi(
                        cart: widget.cart,
                        removePressed: widget.removePressed,
                      )
                    ],
                  ))
            ],
          ),
          bottomNavigationBar: CekotBottomNavbar(cart: widget.cart),
        ));
  }
}
