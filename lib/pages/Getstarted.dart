import 'package:ecomerce_app/pages/Homepage.dart';
import 'package:ecomerce_app/widgets/ItemsWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/HomeAppBar.dart';

class Gst extends StatefulWidget {
  final String username;
  final String email;
  final String password;

  Gst({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  _GstState createState() => _GstState();
}

class _GstState extends State<Gst> {    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(                                                                  
          image: DecorationImage(
            image: AssetImage('images/tebe.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: YourContentWidget(username: widget.username, email: widget.email,password: widget.password,),
      ),
    );
  }
}
class YourContentWidget extends StatefulWidget {
  final String username;
  final String email;
  final String password;

  YourContentWidget({
    required this.username,
    required this.email,
    required this.password,
  });

  @override
  _YourContentWidgetState createState() => _YourContentWidgetState();
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: const Color.fromARGB(255, 0, 88, 184),
  minimumSize: Size(70, 20),
  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  ),
);

class _YourContentWidgetState extends State<YourContentWidget> {
  String _welcomeText = '';
  String _nameText = '';
  String _descriptionText = '';

  @override
  void initState() {
    super.initState();
    _startTypingAnimation();
  }

  Future<void> _startTypingAnimation() async {
    await _typeText('Welcome To SmartVest,', 100, '_welcomeText');
    await _typeText('${widget.username}', 100, '_nameText');
    await _typeText('find it here, buy it now', 60, '_descriptionText');
  }

  Future<void> _typeText(
      String text, int millisecondDelay, String field) async {
    for (int i = 0; i <= text.length; i++) {
      setState(() {
        switch (field) {
          case '_welcomeText':
            _welcomeText = text.substring(0, i);
            break;
          case '_nameText':
            _nameText = text.substring(0, i);
            break;
          case '_descriptionText':
            _descriptionText = text.substring(0, i);
            break;
        }
      });
      await Future.delayed(Duration(milliseconds: millisecondDelay));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  color: Color.fromARGB(100, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 35),
                            child: Text(
                              _welcomeText,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "Montsserat-Medium"),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        _nameText, 
                        style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontFamily: "Montsserat-Medium"),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          _descriptionText,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: "Montsserat-Regular"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              style: raisedButtonStyle,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homepage(
                                      initialUsername: widget.username,
                                      initialEmail: widget.email,
                                      initialPassword: widget.password,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontFamily: 'Montsserat-Semi',
                                    fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 36),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
