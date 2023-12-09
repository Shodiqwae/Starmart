import 'package:ecomerce_app/pages/CartPage.dart';
import 'package:ecomerce_app/pages/Homepage.dart';
import 'package:ecomerce_app/pages/ItemPage.dart';
import 'package:ecomerce_app/pages/ItemPageBurger.dart';
import 'package:ecomerce_app/pages/SplashScreen.dart';
import 'package:ecomerce_app/pages/itemPageAyam.dart';
import 'package:ecomerce_app/pages/itemPageKebab.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/splash", // Tentukan halaman awal sebagai SplashScreen
      routes: {
        "/splash": (context) => SplashScreen(), // Tentukan rute untuk SplashScreen
        "/": (context) => Homepage(), // Berikan "/" untuk rute Homepage
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => ItemPage(),
        "itemPageBurger": (context) => ItemPageBurger(),
        "itemPageKebab": (context) => ItemPageKebab(),
        "itemPageAyam": (context) => ItemPageAyam(),

      },
    );
  }
  
}