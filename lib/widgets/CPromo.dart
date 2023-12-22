import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CPromo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 110,
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("images/1.jpg"),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Usep Sang pencari Rezeki",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 5), // Atur jarak
                        Text(
                          "Slamet Yono dan Siti Berjalan Mencari jati diri",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    width:
                        10), // Ngatur kelebaran text biar kg keluar dari container
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(243, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(180, 46, 112, 255), width: 2),
                  ),
                  child: Center(
                    child: Text(
                      "USE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromARGB(180, 46, 112, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
