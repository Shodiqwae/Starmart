import 'package:ecomerce_app/pages/CartPage.dart';
import 'package:ecomerce_app/pages/Getstarted.dart';
import 'package:ecomerce_app/pages/Homepage.dart';
import 'package:ecomerce_app/pages/ItemPageAoka.dart';
import 'package:ecomerce_app/pages/ItemPageBatagor.dart';
import 'package:ecomerce_app/pages/ItemPageCireng.dart';
import 'package:ecomerce_app/pages/ItemPageGorengan.dart';
import 'package:ecomerce_app/pages/ItemPageNasi_Bakar.dart';
import 'package:ecomerce_app/pages/ItemPageNasi_Uduk.dart';
import 'package:ecomerce_app/pages/ItemPageSusu.dart';
import 'package:ecomerce_app/pages/Onboading.dart';
import 'package:ecomerce_app/pages/Signin.dart';
import 'package:ecomerce_app/pages/ItemPageAqua.dart';
import 'package:ecomerce_app/pages/SplashScreen.dart';

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
        "/splash": (context) =>
            SplashScreen(), // Tentukan rute untuk SplashScreen
        "cartPage": (context) => CartPage(),
        "/splash": (context) =>
            SplashScreen(), // Tentukan rute untuk SplashScreen

        "/buatdata": (context) => IntroSlider(),
        "input": (context) => Input(),
        "itemPageAqua": (context) => ItemPageAqua(),
        "itemPageAoka": (context) => ItemPageAoka(),
        "itemPageBatagor": (context) => ItemPageBatagor(),
        "itemPageCireng": (context) => ItemPageCireng(),
        "itemPageGorengan": (context) => ItemPageGorengan(),
        "itemPageSusu": (context) => ItemPageSusu(),
        "itemPageNasi_Bakar": (context) => ItemPageNasi_Bakar(),
        "itemPageNasi_Uduk": (context) => ItemPageNasi_Uduk(),

        "Input": (context) => Input(),
      },
    );
  }
}
