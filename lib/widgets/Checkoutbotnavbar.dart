import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CekotBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        
        height: 100,
        child: Column(
          
          children: [
            GestureDetector(
              onTap: () {
               
              },
              child:  Container(    
              height: 60,
              width: 360,
              decoration: BoxDecoration(
                 color:  Color.fromRGBO(0, 80, 184,5),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                child: Row(
                  children: [
                    Container(
                       padding: EdgeInsets.all(8),
                       margin: EdgeInsets.only(left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("2 items",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                          ),
                              Text(
                                    "Warung Mang Ajay", 
                                    style: TextStyle(
                                    fontSize: 14, 
                                    fontWeight: FontWeight.normal, 
                                    color: Colors.white,
                                  ),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                       children: [
                        Text("43.000",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(left: 20),
                          child: Icon(CupertinoIcons.shopping_cart,
                          size: 35,
                          color: Colors.white,
                          ),
                        )
                       ],
                      ),
                    )
              
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
