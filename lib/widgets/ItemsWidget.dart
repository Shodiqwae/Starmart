import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatefulWidget {
  bool vafaqua1;
  final Function aquaPressed;
  final Function aquaPressedCart;

  bool vafaoka1;
  final Function aokaPressed;
  final Function aokaPressedCart;

  bool vafbatagor1;
  final Function batagorPressed;
  final Function batagorPressedCart;

  bool vafcireng1;
  final Function cirengPressed;
  final Function cirengPressedCart;

  bool vafgorengan1;
  final Function gorenganPressed;
  final Function gorenganPressedCart;

  bool vafsusu1;
  final Function susuPressed;
  final Function susuPressedCart;

  bool vafnasi_bakar1;
  final Function nasi_bakarPressed;
  // ignore: non_constant_identifier_names
  final Function nasi_bakarPressedCart;

  bool vafnasi_uduk1;
  final Function nasi_udukPressed;
  final Function nasi_udukPressedCart;

  ItemsWidget({
    required this.vafaqua1,
    required this.aquaPressed,
    required this.aquaPressedCart,
    required this.vafaoka1,
    required this.aokaPressed,
    required this.aokaPressedCart,
    required this.vafbatagor1,
    required this.batagorPressed,
    required this.batagorPressedCart,
    required this.vafcireng1,
    required this.cirengPressed,
    required this.cirengPressedCart,
    required this.vafgorengan1,
    required this.gorenganPressed,
    required this.gorenganPressedCart,
    required this.vafsusu1,
    required this.susuPressed,
    required this.susuPressedCart,
    required this.vafnasi_bakar1,
    required this.nasi_bakarPressed,
    required this.nasi_bakarPressedCart,
    required this.vafnasi_uduk1,
    required this.nasi_udukPressed,
    required this.nasi_udukPressedCart,
  });

  @override
  State<ItemsWidget> createState() => ItemsWidgetState();
}

class ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-31%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafaqua1 ? Icons.favorite : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.aquaPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageAqua");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/aqua.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Aqua",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "aqua lezat",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp.5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.aquaPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

        //aoka
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafaoka1 ? Icons.favorite : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.aokaPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageAoka");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/aoka.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Aoka",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "roti aoka",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 3.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.aokaPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

        //batagor
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafbatagor1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.batagorPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageBatagor");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/batagor.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Batagor",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.batagorPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

        //cireng
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafcireng1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.cirengPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageCireng");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/cireng.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cireng",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.cirengPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

//gorengan
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafgorengan1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.gorenganPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageGorengan");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/gorengan.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gorengan",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 1.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.gorenganPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

//susu
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafsusu1 ? Icons.favorite : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.susuPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageSusu");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/susu.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Susu",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.susuPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

//nasi_bakar
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafnasi_bakar1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.nasi_bakarPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageNasi_Bakar");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/nasi_bakar.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nasi Bakar",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.nasi_bakarPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

//nasi_uduk
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(216, 0, 85, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-40%",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.vafnasi_uduk1
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: const Color.fromARGB(255, 244, 54, 124),
                    ),
                    onPressed: () => widget.nasi_udukPressed(),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPageNasi_Uduk");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset(
                    "images/nasi_uduk.jpeg",
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Nasi Uduk",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "om teten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rp. 5.000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart_checkout,
                        color: Color.fromARGB(216, 0, 85, 255)),
                    onPressed: () => widget.nasi_udukPressedCart(),
                  ),
                ],
              ),
            ],
          ),
        ),

        //cart 3

        // Container(
        //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(5),
        //             decoration: BoxDecoration(
        //               color: Color.fromARGB(216, 0, 85, 255),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             child: Text(
        //               "-28%",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           Icon(
        //             Icons.favorite_border,
        //             color: const Color.fromARGB(255, 244, 54, 124),
        //           ),
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, "itemPageKebab");
        //         },
        //         child: Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.asset(
        //             "images/3.png",
        //             height: 120,
        //             width: 120,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(bottom: 8),
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Kebab",
        //           style: TextStyle(
        //             fontSize: 18,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Kebab turki",
        //           style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Rp.22.000",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //               color: Color.fromARGB(255, 0, 0, 0),
        //             ),
        //           ),
        //           Icon(
        //             Icons.shopping_cart_checkout,
        //             color: Color.fromARGB(216, 0, 85, 255),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        // //cart 4

        // Container(
        //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(5),
        //             decoration: BoxDecoration(
        //               color: Color.fromARGB(216, 0, 85, 255),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             child: Text(
        //               "-11%",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           Icon(
        //             Icons.favorite_border,
        //             color: const Color.fromARGB(255, 244, 54, 124),
        //           ),
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, "itemPageAyam");
        //         },
        //         child: Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.asset(
        //             "images/4.png",
        //             height: 120,
        //             width: 120,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(bottom: 8),
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Chickenwings",
        //           style: TextStyle(
        //             fontSize: 18,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Daging ayam",
        //           style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Rp.32.500",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //               color: Color.fromARGB(255, 0, 0, 0),
        //             ),
        //           ),
        //           Icon(
        //             Icons.shopping_cart_checkout,
        //             color: Color.fromARGB(216, 0, 85, 255),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        // //cart 5

        // Container(
        //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(5),
        //             decoration: BoxDecoration(
        //               color: Color.fromARGB(216, 0, 85, 255),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             child: Text(
        //               "-13%",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           Icon(
        //             Icons.favorite_border,
        //             color: const Color.fromARGB(255, 244, 54, 124),
        //           ),
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, "itemPage");
        //         },
        //         child: Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.asset(
        //             "images/5.png",
        //             height: 120,
        //             width: 120,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(bottom: 8),
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Es capucino",
        //           style: TextStyle(
        //             fontSize: 18,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Capucino cincau",
        //           style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Rp.14.000",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //               color: Color.fromARGB(255, 0, 0, 0),
        //             ),
        //           ),
        //           Icon(
        //             Icons.shopping_cart_checkout,
        //             color: Color.fromARGB(216, 0, 85, 255),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        // //cart 6

        // Container(
        //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(5),
        //             decoration: BoxDecoration(
        //               color: Color.fromARGB(216, 0, 85, 255),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             child: Text(
        //               "-11%",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           Icon(
        //             Icons.favorite_border,
        //             color: const Color.fromARGB(255, 244, 54, 124),
        //           ),
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, "itemPage");
        //         },
        //         child: Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.asset(
        //             "images/6.png",
        //             height: 120,
        //             width: 120,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(bottom: 8),
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "SateTaichan",
        //           style: TextStyle(
        //             fontSize: 18,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Daging kambing",
        //           style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Rp.35.500",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //               color: Color.fromARGB(255, 0, 0, 0),
        //             ),
        //           ),
        //           Icon(
        //             Icons.shopping_cart_checkout,
        //             color: Color.fromARGB(216, 0, 85, 255),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),

        // //cart 7

        //  Container(
        //   padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //             padding: EdgeInsets.all(5),
        //             decoration: BoxDecoration(
        //               color: Color.fromARGB(216, 0, 85, 255),
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //             child: Text(
        //               "-5%",
        //               style: TextStyle(
        //                 fontSize: 14,
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //           ),
        //           Icon(
        //             Icons.favorite_border,
        //             color: const Color.fromARGB(255, 244, 54, 124),
        //           ),
        //         ],
        //       ),
        //       InkWell(
        //         onTap: () {
        //           Navigator.pushNamed(context, "itemPage");
        //         },
        //         child: Container(
        //           margin: EdgeInsets.all(10),
        //           child: Image.asset(
        //             "images/7.png",
        //             height: 120,
        //             width: 120,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         padding: EdgeInsets.only(bottom: 8),
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "LemonTea",
        //           style: TextStyle(
        //             fontSize: 18,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //       Container(
        //         alignment: Alignment.centerLeft,
        //         child: Text(
        //           "Kesegaran lemon",
        //           style: TextStyle(
        //             fontSize: 15,
        //             color: Color.fromARGB(255, 0, 0, 0),
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10), // Jarak antara konten card dan ikon + teks
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Text(
        //             "Rp.15.500",
        //             style: TextStyle(
        //               fontSize: 16,
        //               fontWeight: FontWeight.bold,
        //               color: Color.fromARGB(255, 0, 0, 0),
        //             ),
        //           ),
        //           Icon(
        //             Icons.shopping_cart_checkout,
        //             color: Color.fromARGB(216, 0, 85, 255),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
