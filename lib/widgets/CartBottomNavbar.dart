import 'package:flutter/material.dart';

class CartBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total :",
                style: TextStyle(
                  color:  Color.fromARGB(255, 0, 0, 0),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
              ),
              ),
              Text("Rp. 530.000",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,

              ), 
              )
            ],
            ),

            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                 color:  Color.fromARGB(216, 0, 85, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Beli sekarang", 
                style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
