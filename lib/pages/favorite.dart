import 'package:ecomerce_app/pages/profile.dart';
import 'package:ecomerce_app/widgets/ItemsWidget.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_app/widgets/cartfvr.dart';

class MyHomePage extends StatefulWidget {
  String initialUsername1;
  String initialEmail1;
  String initialPassword1;
  bool vafaqua1;
  final Function aquaPressed;
  bool vafaoka1;
  final Function aokaPressed;
  bool vafbatagor1;
  final Function batagorPressed;
  bool vafcireng1;
  final Function cirengPressed;
  bool vafgorengan1;
  final Function gorenganPressed;
  bool vafsusu1;
  final Function susuPressed;
  bool vafnasi_bakar1;
  final Function nasi_bakarPressed;
  bool vafnasi_uduk1;
  final Function nasi_udukPressed;

  MyHomePage({
    required this.initialUsername1,
    required this.initialEmail1,
    required this.initialPassword1,
    required this.vafaqua1,
    required this.aquaPressed,
    required this.vafaoka1,
    required this.aokaPressed,
    required this.vafbatagor1,
    required this.batagorPressed,
    required this.vafcireng1,
    required this.cirengPressed,
    required this.vafgorengan1,
    required this.gorenganPressed,
    required this.vafsusu1,
    required this.susuPressed,
    required this.vafnasi_bakar1,
    required this.nasi_bakarPressed,
    required this.vafnasi_uduk1,
    required this.nasi_udukPressed,
    required String initialaddress1,
    required String initialPin1,
    required String initialCity1,
    required String initialCountry1,
  });
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String initialPin1 = '';
  String initialaddress1 = '';
  String initialCity1 = '';
  String initialCountry1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Container pertama dengan IconButton dan Drawer
          ContainerWidget(
            onPressed: () async {
              final changedData = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Prfr(
                    username: widget.initialUsername1,
                    email: widget.initialEmail1,
                    password: widget.initialPassword1,
                    pin: initialPin1,
                    address: initialaddress1,
                    city: initialCity1,
                    country: initialCountry1,
                  ),
                ),
              );

              if (changedData != null) {
                setState(() {
                  widget.initialUsername1 = changedData['name'];
                  widget.initialEmail1 = changedData['email'];
                  widget.initialPassword1 = changedData['password'];
                  initialPin1 = changedData['pin'];
                  initialaddress1 = changedData['address'];
                  initialCity1 = changedData['city'];
                  initialCountry1 = changedData['country'];
                });
              }
            },
          ),

          // Container kedua menggunakan ScrollableContainer
          Expanded(
            child: ScrollableContainer(
              vafaoka3: widget.vafaoka1,
              vafaqua3: widget.vafaqua1,
              vafbatagor3: widget.vafbatagor1,
              vafcireng3: widget.vafcireng1,
              vafgorengan3: widget.vafgorengan1,
              vafsusu3: widget.vafsusu1,
              vafnasi_bakar3: widget.vafnasi_bakar1,
              vafnasi_uduk3: widget.vafnasi_uduk1,
              aquaPressed: widget.aquaPressed,
              aokaPressed: widget.aokaPressed,
              batagorPressed: widget.batagorPressed,
              cirengPressed: widget.cirengPressed,
              gorenganPressed: widget.gorenganPressed,
              susuPressed: widget.susuPressed,
              nasi_bakarPressed: widget.nasi_bakarPressed,
              nasi_udukPressed: widget.nasi_udukPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatefulWidget {
  final Function onPressed;

  ContainerWidget({required this.onPressed});
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
            onPressed: () => widget.onPressed(),
            icon: Icon(
              Icons.supervised_user_circle_outlined,
              size: 35,
            ),
            iconSize: 40,
          )
        ],
      ),
    );
  }
}

class ScrollableContainer extends StatefulWidget {
  bool vafaqua3;
  final Function aquaPressed;
  bool vafaoka3;
  final Function aokaPressed;
  bool vafbatagor3;
  final Function batagorPressed;
  bool vafcireng3;
  final Function cirengPressed;
  bool vafgorengan3;
  final Function gorenganPressed;
  bool vafsusu3;
  final Function susuPressed;
  bool vafnasi_bakar3;
  final Function nasi_bakarPressed;
  bool vafnasi_uduk3;
  final Function nasi_udukPressed;

  ScrollableContainer({
    required this.vafaqua3,
    required this.aquaPressed,
    required this.vafaoka3,
    required this.aokaPressed,
    required this.vafbatagor3,
    required this.batagorPressed,
    required this.vafcireng3,
    required this.cirengPressed,
    required this.vafgorengan3,
    required this.gorenganPressed,
    required this.vafsusu3,
    required this.susuPressed,
    required this.vafnasi_bakar3,
    required this.nasi_bakarPressed,
    required this.vafnasi_uduk3,
    required this.nasi_udukPressed,
  });

  @override
  _ScrollableContainerState createState() => _ScrollableContainerState();
}

class _ScrollableContainerState extends State<ScrollableContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1700.0, // Atur tinggi container kedua sesuai kebutuhan

        decoration: BoxDecoration(
          color: Color.fromARGB(241, 241, 241, 241),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Crt(
          aqua: widget.vafaqua3,
          aoka: widget.vafaoka3,
          batagor: widget.vafbatagor3,
          cireng: widget.vafcireng3,
          gorengan: widget.vafgorengan3,
          susu: widget.vafsusu3,
          nasi_bakar: widget.vafnasi_bakar3,
          nasi_uduk: widget.vafnasi_uduk3,
          aquaPressed: widget.aquaPressed,
          aokaPressed: widget.aokaPressed,
          batagorPressed: widget.batagorPressed,
          cirengPressed: widget.cirengPressed,
          gorenganPressed: widget.gorenganPressed,
          susuPressed: widget.susuPressed,
          nasi_bakarPressed: widget.nasi_bakarPressed,
          nasi_udukPressed: widget.nasi_udukPressed,
        ),
      ),
    );
  }
}
