import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> sandalNames = [
      "Sandwich", "Burger", "Kebab", "Korean chicken", "Es capucino", "Sate taichan", "Teguk Lemon tea"
    ]; // Nama untuk setiap teks 'sandal'

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < sandalNames.length; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/${i + 1}.png",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 8), // Adjust the spacing between image and text
                  SandalTextWidget(sandalNames[i]), // Assigning different names for each 'sandal' text based on the list
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class SandalTextWidget extends StatelessWidget {
  final String text;

  SandalTextWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        color:  Color.fromARGB(255, 0, 0, 0),
        // You can add specific styles or use this as a placeholder for class assignment
      ),
    );
  }
}
