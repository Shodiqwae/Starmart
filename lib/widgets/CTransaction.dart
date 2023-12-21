import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 8; i++)
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
                  child: Image.asset("images/notif.png"),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30% discount up to 10K - Cheap and cheerful",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: 5), // Atur jarak
                        Text(
                          "\Discount for those of you who buy more than 15 thousand",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
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
