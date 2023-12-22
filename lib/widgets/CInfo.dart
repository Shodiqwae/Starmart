import 'package:flutter/material.dart';

class CInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 100,
          child: Image.asset(
            'images/kosong.png', 
            width: 300, 
            height: 300,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 340),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Tidak ada notifikasi',
              style: TextStyle(
                color: Color.fromARGB(255, 175, 179, 184),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
