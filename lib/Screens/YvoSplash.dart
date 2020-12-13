import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
import 'package:yvo_service/Components/myRoute.dart';

class YvoSplash extends StatefulWidget {
  @override
  _YvoSplashState createState() => _YvoSplashState();
}

class _YvoSplashState extends State<YvoSplash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MyRouter(Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Hero(
              child: Image.asset('images/Logo.jpg'),
              tag: 'logo',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(70.0),
            child: Container(
              child: CircularProgressIndicator(
                backgroundColor: Color(0xff00a850),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
