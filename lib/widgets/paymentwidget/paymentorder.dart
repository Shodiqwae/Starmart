import 'package:flutter/material.dart';

class orderpay extends StatelessWidget {
  const orderpay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Payment Summary",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                    )),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Price",
                     style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal
                    ),
                        ),
                        Text("Rp. 43.000,00",
                        style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                        )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15,left: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Shipping",
                     style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal
                    ),
                        ),
                        Text("Rp. 0",
                        style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                        )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 15,left: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Other",
                     style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal
                    ),
                        ),
                        Text("Rp. 0",
                        style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                        )
                  ],
                ),
              ),
              Divider(
          thickness: 3,
          color: Colors.grey,
          indent: 5,
          endIndent: 5,
        ),
        Container(
                padding: EdgeInsets.only(right: 15,left: 15,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Total Payment",
                     style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                        ),
                        Text("Rp. 43.000,00",
                        style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                        )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}