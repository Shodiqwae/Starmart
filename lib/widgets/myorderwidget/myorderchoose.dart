import 'package:flutter/material.dart';

class MyOrderchoose extends StatefulWidget {
  final Function(int) onCategorySelected;

  MyOrderchoose({required this.onCategorySelected});

  @override
  _MyOrderchooseState createState() => _MyOrderchooseState();
}

class _MyOrderchooseState extends State<MyOrderchoose> {
  int selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Atur Banyaknya atau nama pilihan Notif
          _buildCategory("Cook", 0),
          _buildCategory("Wrap", 1),
          _buildCategory("Sent", 2),
          _buildCategory("End", 3),
        ],
      ),
    );
  }

  Widget _buildCategory(String categoryName, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print("Category $categoryName clicked");
          selectedCategoryIndex = index;
          widget.onCategorySelected(index);
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          // Atur bgColor ketika pilihan notif dipencet
          color: selectedCategoryIndex == index ? Color.fromARGB(255, 224, 241, 255) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            // Yang ini Outlinenya
            color: selectedCategoryIndex == index ? const Color.fromARGB(255, 84, 178, 255) : Colors.transparent,
            width: 1.0,
          ),
        ),
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 10,
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Montsserat-Regular",
              color: Color.fromARGB(255, 86, 86, 86),
            ),
          ),
        ),
      ),
    );
  }
}
