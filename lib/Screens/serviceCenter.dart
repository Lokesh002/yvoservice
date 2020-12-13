import 'package:flutter/material.dart';
import 'package:yvo/Components/reusable_card.dart';
import 'package:yvo/Components/constants.dart';
import 'package:yvo/Components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServiceCenter extends StatefulWidget {
  @override
  _ServiceCenterState createState() => _ServiceCenterState();
}

class _ServiceCenterState extends State<ServiceCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(child: Text('YVO Service')),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('images/scenter.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Ashu service center',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Rs. 300/service',
                            style: TextStyle(
                              color: Colors.lightGreen,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('4.2',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: ksliderThumbColor,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                  child: Text(
                'BOOK SERVICE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: klabelColor,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ));
  }
}
