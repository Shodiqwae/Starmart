import 'package:ecomerce_app/pages/Signin.dart';
import 'package:flutter/material.dart';

class Gst extends StatefulWidget {
  const Gst(String text, {Key? key}) : super(key: key);
  
  get username => Input();

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
        child: YourContentWidget(username: '${widget.username}')
      ),
    );
  }
}

class YourContentWidget extends StatefulWidget {
  final String username;

  YourContentWidget({required this.username});
  @override
  _YourContentWidgetState createState() => _YourContentWidgetState();
}

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
    await _typeText('Welcome To SmartVest', 100, '_welcomeText');
    await _typeText('${widget.username}', 100, '_nameText');
    await _typeText('find it here, buy it now', 60, '_descriptionText');
  }

  Future<void> _typeText(String text, int millisecondDelay, String field) async {
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
      body: Container(
        margin: EdgeInsets.only(top: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              
              color: Color.fromARGB(100, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _welcomeText,
                        style: TextStyle(fontSize: 30, color: Colors.white,fontFamily: "Montsserat-Medium"),
                      ),
                    ],
                  ),
                  Text(
                    _nameText,
                    style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: "Montsserat-Medium",),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      _descriptionText,
                      style: TextStyle(fontSize: 15, color: Colors.white,fontFamily: "Montsserat-Medium" ),
                    ),
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
