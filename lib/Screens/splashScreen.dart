import 'package:flutter/material.dart';
import 'package:yvo/Screens/login.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);

    return Scaffold(
        backgroundColor: Color(0xff009679),
        body: Center(
          child: Container(
            width: screenSize.screenWidth * 40,
            height: screenSize.screenHeight * 20,
            child: Image.asset("images/yvo.png"),
          ),
        ));
  }
}
