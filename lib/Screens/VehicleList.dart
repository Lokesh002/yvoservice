import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yvo/Components/orderCard.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Orders'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(children: <Widget>[
//
              OrderCard(colour: Colors.green),
              OrderCard(colour: Colors.green),
              OrderCard(colour: Colors.green),
              OrderCard(colour: Colors.green),
              OrderCard(colour: Colors.green),
              OrderCard(colour: Colors.green),
            ]),
          ),
        ],
      ),
    );
  }
}
