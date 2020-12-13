import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yvo/Components/serviceCenterCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your Location',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Text(
                'Delhi',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(children: <Widget>[
//
              ServiceCenterCard(colour: Colors.green),
              ServiceCenterCard(colour: Colors.green),
              ServiceCenterCard(colour: Colors.green),
              ServiceCenterCard(colour: Colors.green),
              ServiceCenterCard(colour: Colors.green),
              ServiceCenterCard(colour: Colors.green),
            ]),
          ),
          Container(
            width: double.infinity,
            height: 70,
            color: ksliderThumbColor,
            margin: EdgeInsets.only(top: 10.0),
            child: Row(children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  colour: kactiveColor,
                  cardChild: Text(
                    'Profile',
                    style: TextStyle(
                      color: klabelColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/orders');
                  },
                  colour: kactiveColor,
                  cardChild: Text(
                    'Orders ',
                    style: TextStyle(color: klabelColor, fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/addVehicle');
                  },
                  colour: kactiveColor,
                  cardChild: Text(
                    'Add Vehicle',
                    style: TextStyle(
                      color: klabelColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    Navigator.pushNamed(context, '/help');
                  },
                  colour: kactiveColor,
                  cardChild: Text(
                    'help',
                    style: TextStyle(
                      color: klabelColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
