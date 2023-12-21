import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavbar extends StatelessWidget {
  String harga;

  ItemBottomNavbar({required this.harga});
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 95,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rp. ${harga}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // ElevatedButton.icon(
            //   onPressed: () {},
            //   icon: Icon(CupertinoIcons.cart_fill_badge_plus),
            //   label: Text(
            //     "Tambah",
            //     style: TextStyle(
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(
            //         const Color.fromARGB(255, 0, 0, 0)),
            //     padding: MaterialStateProperty.all(
            //       EdgeInsets.symmetric(vertical: 13, horizontal: 15),
            //     ),
            //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //         RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(30))),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
