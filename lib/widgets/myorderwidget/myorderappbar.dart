import 'package:ecomerce_app/pages/Homepage.dart';
import 'package:flutter/material.dart';

class MyorderAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Homepage(initialEmail: '',initialUsername: '',initialPassword: '',)),);},
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 30,
              color: Color.fromARGB(255, 0, 0, 0),
            ), // Use Icons.arrow_back instead of Icon.arrow_back
          ),
          Container(
          padding: EdgeInsets.all(10),
          
          child: Row(
            
            children: [
              Text(
                "My Order",
                style: TextStyle(
                  fontSize: 23, 
                  fontWeight: FontWeight.bold, 
                  fontFamily: "Montsserat-Regular",
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
