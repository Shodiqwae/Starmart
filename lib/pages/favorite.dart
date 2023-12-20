import 'package:ecomerce_app/widgets/ItemsWidget.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_app/widgets/cartfvr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Container pertama dengan IconButton dan Drawer
          ContainerWidget(),

          // Container kedua menggunakan ScrollableContainer
          Expanded(
            child: ScrollableContainer(),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 100,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.sort),
            iconSize: 40,
          ),
          Text(
            'Favorite',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montsserat-Semi',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.supervised_user_circle_outlined),
            iconSize: 40,
          )
        ],
      ),
    );
  }
}

class ScrollableContainer extends StatefulWidget {




  @override
  _ScrollableContainerState createState() => _ScrollableContainerState();
}

class _ScrollableContainerState extends State<ScrollableContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: 
              Container(
                height: 800.0, // Atur tinggi container kedua sesuai kebutuhan
              
                decoration: BoxDecoration(
                  color: Color.fromARGB(241, 241, 241, 241),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Crt(),
              ),
    );
  }
}
