import 'package:flutter/material.dart';

class SumAppbar extends StatelessWidget {
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
              Icons.arrow_back_ios_new,
              size: 30,
              color: Color.fromARGB(255, 0, 0, 0),
            ), // Use Icons.arrow_back instead of Icon.arrow_back
          ),
          Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(left: 90),
          child: Row(
            
            children: [
              Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 23, 
                  fontWeight: FontWeight.bold, 
                  color:  Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
         ),
          Spacer(), 
      ]),
    );
  }
}
