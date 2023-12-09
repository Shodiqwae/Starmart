import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color.fromARGB(255, 0, 0, 0),
            ), // Use Icons.arrow_back instead of Icon.arrow_back
          ),
          Padding(padding: EdgeInsets.only(left: 20),
          child: Text(
            "Keranjang",
            style: TextStyle(
              fontSize: 23, 
              fontWeight: FontWeight.bold, 
              color:  Color.fromARGB(216, 0, 85, 255),
            ),
          ),
          ),
          Spacer(),
          Icon(Icons.more_vert,
          size: 30,
          color: Color.fromARGB(255, 0, 0, 0),
          ),  
      ]),
    );
  }
}
