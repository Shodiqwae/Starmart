import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late Animation<double> _textOpacityAnimation;
  late AnimationController _imageAnimationController;
  late Animation<double> _imageOpacityAnimation;

  @override
  void initState() {
    super.initState();

    _textAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textAnimationController,
        curve: Curves.easeIn,
      ),
    );

    _imageAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _imageOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _imageAnimationController,
        curve: Curves.easeIn,
      ),
    );

    _textAnimationController.forward();

    _textAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(seconds: 1), () {
          _imageAnimationController.forward();
        });
      }
    });

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/');
    });
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    _imageAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _textOpacityAnimation,
              child: Text(
                '',
                style: TextStyle(
                  color: const Color.fromARGB(255, 3, 3, 3),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            FadeTransition(
              opacity: _imageOpacityAnimation,
              child: AnimatedBuilder(
                animation: _imageAnimationController,
                builder: (context, child) {
                  return _imageOpacityAnimation.value > 0
                      ? Image.asset('images/keranjang.png')
                      : SizedBox();
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selamat datang',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
