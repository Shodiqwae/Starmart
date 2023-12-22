import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  final Function onPressed;

  HomeAppBar({required this.onPressed});

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.sort,
              size: 30,
              color: Color.fromARGB(255, 8, 8, 8),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "SmartVest",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
    
          IconButton(
            onPressed: () => widget.onPressed(),
            icon: Icon(Icons.supervised_user_circle_outlined,size: 35,),
          ),
        ],
      ),
    );
  }
}
