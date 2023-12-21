import 'package:ecomerce_app/pages/myorder.dart';
import 'package:ecomerce_app/widgets/paymentwidget/paymentappbar.dart';
import 'package:ecomerce_app/widgets/paymentwidget/paymentisi.dart';
import 'package:flutter/material.dart';


class selectpay extends StatefulWidget {
  List<Map<String, dynamic>> cart;
  int total;

  selectpay({required this.cart, required this.total});

  @override
  State<selectpay> createState() => _selectpayState();
}

class _selectpayState extends State<selectpay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SelectpayAppbar(),
            Container(
              height: 800,
              child: Column(
                children: [
                  PaymentScreen(cart: widget.cart, total: widget.total),
                 
                  
                ],
              ),
              
            ),
            
          ],
        ),
      ),
    );
  }
}
  void showPaymentSuccessDialog(BuildContext context, int total1, List<Map<String, dynamic>> cart1) {
   

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: 170,
            width: 50,
            child: Column(
              children: [
                Image.asset(
                  'images/success.gif',
                  width: 100.0,
                  height: 100.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Pembayaran Berhasil',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrder(total: total1, cart: cart1,)));
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
