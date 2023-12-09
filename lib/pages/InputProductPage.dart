import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30,left: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("Welcome",
                        style: TextStyle(fontFamily: "Montsserat-Bold", fontSize: 45,),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("SmartVest!",
                        style: TextStyle(fontFamily: "Montsserat-Bold",fontSize: 45,),),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}