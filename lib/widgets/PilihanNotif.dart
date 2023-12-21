import 'package:flutter/material.dart';

class NotifChoice extends StatefulWidget {
  final Function(int) onCategorySelected;

  NotifChoice({required this.onCategorySelected});

  @override
  _NotifChoiceState createState() => _NotifChoiceState();
}

class _NotifChoiceState extends State<NotifChoice> {
  int selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // Atur Banyaknya atau nama pilihan Notif
          _buildCategory("Transaction", 0),
          _buildCategory("Promo", 1),
          _buildCategory("Info", 2),
          _buildCategory("Feed", 3),
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
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          // Atur bgColor ketika pilihan notif dipencet
          color: selectedCategoryIndex == index
              ? Color.fromARGB(255, 224, 241, 255)
              : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            // Yang ini Outlinenya
            color: selectedCategoryIndex == index
                ? Color.fromARGB(255, 57, 57, 57)
                : Colors.transparent,
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
              color: Color.fromARGB(255, 86, 86, 86),
            ),
          ),
        ),
      ),
    );
  }
}
