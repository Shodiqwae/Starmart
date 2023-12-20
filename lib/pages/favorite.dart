import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Fvt(),
    );
  }
}

class Fvt extends StatefulWidget {
  const Fvt({super.key});

  @override
  State<Fvt> createState() => _FvtState();
}

class _FvtState extends State<Fvt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
              Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    Text('Favorite'),
                    IconButton(onPressed: () {}, icon: Icon(Icons.supervised_user_circle_outlined))
                  ],
                )
              )
            ],
          )
        
    );
  }
}