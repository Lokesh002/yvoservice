import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';
import 'package:yvo/Components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text('Help')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Contact us at :',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              )),
          Text('support@yvoservice.com',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightGreen,
              )),
          Text('Contact: ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              )),
          Text('+91 1234567890',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightGreen,
              )),
          Text('Working Hrs:',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              )),
          Text('8 A.M. - 10 P.M.',
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightGreen,
              )),
        ],
      )),
    );
  }
}
