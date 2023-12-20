import 'package:ecomerce_app/widgets/Checkoutappbar.dart';
import 'package:ecomerce_app/widgets/Checkoutbotnavbar.dart';
import 'package:ecomerce_app/widgets/checkoutisi.dart';
import 'package:flutter/material.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
      
      body: ListView(
        children: [
          CekotAppBar(),

          Container(
            height: 2000,
            padding: EdgeInsets.only(top: 15),
           
           child: Column(
  children: [
    Cekotisi()
  ],
)
          )
        ],
      ),
      bottomNavigationBar: CekotBottomNavbar(),
    )
    );
    
  }
}
