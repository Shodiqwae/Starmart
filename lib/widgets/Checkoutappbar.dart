              import 'package:flutter/material.dart';

              class CekotAppBar extends StatelessWidget {
                final VoidCallback? onPressed;

                CekotAppBar({this.onPressed});
                @override
                Widget build(BuildContext context) {
                  return Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                          IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios_new,
                            size: 30,
                            color: Color.fromARGB(255, 0, 0, 0),)),
                        
                      Container(
                        padding: EdgeInsets.all(10),
                        
                        child: Row(
                          
                          children: [
                            Text(
                              "Checkout",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: "Montsserat-Regular", 
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
