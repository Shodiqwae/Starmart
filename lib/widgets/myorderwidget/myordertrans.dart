import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyTransaction extends StatelessWidget {
  List<Map<String, dynamic>> cart;
  int total;

  MyTransaction({required this.cart, required this.total});

  final List<String> productTitles = [
    'Burger Mang Jay',
    'Batagor Mang Jay'
    // Tambahkan judul produk yang lain di sini
  ];

  final List<String> variationTitles = [
    'chesee',
    'meat',
    'chicken',
    // Tambahkan judul produk yang lain di sini
  ];

  final List<int> productPrices = [
    20000,
    23000,

    // Tambahkan harga produk yang lain di sini
  ];

  List<int> quantities = [2, 2];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < cart.length; i++)
          Container(
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color:
                    const Color.fromARGB(255, 210, 210, 210), // Warna outline
                width: 1.0, // Lebar outline
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  height: 110,
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/${cart[i]['nama']}.jpeg"),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cart[i]['dnama'],
                          style: TextStyle(
                            fontFamily: "Montsserat-Bold",
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 5), // Atur jarak
                        Text(
                          'Rp ${cart[i]['price']}',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montsserat-Regular",
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Quantity: ${cart[i]['count']}',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                            fontFamily: "Montsserat-Semi",
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Row(
                          children: List.generate(
                            variationTitles.length,
                            (index) => Container(
                              padding: EdgeInsets.all(7),
                              margin: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "${variationTitles[index]}",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(width: 10), // Atur kelebaran text
              ],
            ),
          ),
      ],
    );
  }
}
