import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/dropDown.dart';
import 'package:yvo/components/ManufacturerList.dart';
import 'package:yvo/components/ReusableTextField.dart';
import 'package:yvo/components/ReusableButton.dart';
import 'package:yvo/components/reusableVehicleCard.dart';
import 'package:yvo/lists/vehicleList.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yvo/components/reusableServiceCard.dart';

class ConfirmBooking extends StatefulWidget {
  @override
  _ConfirmBookingState createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  bool selected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = false;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(screenSize.screenHeight * 3),
              ),
              elevation: 5,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.screenHeight * 7,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: screenSize.screenWidth * 7.5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: screenSize.screenHeight * 3,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.screenWidth * 10,
                      ),
                      Text(
                        "Confirm Booking",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenSize.screenHeight * 3.5,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenSize.screenHeight * 1.7,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.screenHeight * 4,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                SizedBox(
                  height: screenSize.screenHeight * 3,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: screenSize.screenWidth * 5.6,
                    ),
                    ReusableCard(
                      width: screenSize.screenWidth * 88.8,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: screenSize.screenHeight * 3,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: screenSize.screenWidth * 3.7,
                              ),
                              Text(
                                "Product Details",
                                style: TextStyle(
                                    fontSize: screenSize.screenHeight * 1.7,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenSize.screenHeight * 3,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: screenSize.screenWidth * 13.86,
                              ),
                              Icon(
                                Icons.directions_bike,
                                size: screenSize.screenHeight * 10,
                                color: Color(0xff009679),
                              ),
                              SizedBox(
                                width: screenSize.screenWidth * 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Hero Maestro",
                                    style: TextStyle(
                                        fontSize: screenSize.screenHeight * 2.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: screenSize.screenHeight * 0.6,
                                  ),
                                  Text(
                                    "DL 00 AB 1234",
                                    style: TextStyle(
                                      fontSize: screenSize.screenHeight * 1.5,
                                      color: Color(0xff7f7f7f),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenSize.screenHeight * 3.2,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: screenSize.screenWidth * 4,
                              ),
                              Text(
                                "Pick your vehicle service",
                                style: TextStyle(
                                  fontSize: screenSize.screenHeight * 1.7,
                                  color: Color(0xff4f4f4f),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: screenSize.screenHeight * 63.5,
                            child: ListView(
                              padding: EdgeInsets.fromLTRB(
                                  0, 0, 0, screenSize.screenHeight * 20),
                              children: <Widget>[
                                ReusableServiceCard(
                                  icon: Icon(
                                    selected
                                        ? Icons.do_not_disturb_on
                                        : Icons.add_circle,
                                    size: screenSize.screenHeight * 3.5,
                                    color: selected
                                        ? Color(0xff7f7f7f)
                                        : Color(0xff009679),
                                  ),
                                  amount: 350,
                                  serviceName: 'GENERAL SERVICE',
                                  onTap: () {
                                    setState(() {
                                      if (selected == true) {
                                        selected = false;
                                      } else {
                                        selected = true;
                                      }
                                    });
                                  },
                                ),
                                ReusableServiceCard(
                                  icon: Icon(
                                    selected
                                        ? Icons.do_not_disturb_on
                                        : Icons.add_circle,
                                    size: screenSize.screenHeight * 3.5,
                                    color: selected
                                        ? Color(0xff7f7f7f)
                                        : Color(0xff009679),
                                  ),
                                  amount: 450,
                                  serviceName: 'AIR FILTER CLEAN',
                                  onTap: () {
                                    setState(() {
                                      if (selected == true) {
                                        selected = false;
                                      } else {
                                        selected = true;
                                      }
                                    });
                                  },
                                ),
                                ReusableServiceCard(
                                  icon: Icon(
                                    selected
                                        ? Icons.do_not_disturb_on
                                        : Icons.add_circle,
                                    size: screenSize.screenHeight * 3.5,
                                    color: selected
                                        ? Color(0xff7f7f7f)
                                        : Color(0xff009679),
                                  ),
                                  amount: 450,
                                  serviceName: 'AIR FILTER CLEAN',
                                  onTap: () {
                                    setState(() {
                                      if (selected == true) {
                                        selected = false;
                                      } else {
                                        selected = true;
                                      }
                                    });
                                  },
                                ),
                                ReusableServiceCard(
                                  icon: Icon(
                                    selected
                                        ? Icons.do_not_disturb_on
                                        : Icons.add_circle,
                                    size: screenSize.screenHeight * 3.5,
                                    color: selected
                                        ? Color(0xff7f7f7f)
                                        : Color(0xff009679),
                                  ),
                                  amount: 450,
                                  serviceName: 'AIR FILTER CLEAN',
                                  onTap: () {
                                    setState(() {
                                      if (selected == true) {
                                        selected = false;
                                      } else {
                                        selected = true;
                                      }
                                    });
                                  },
                                ),
                                ReusableServiceCard(
                                  icon: Icon(
                                    selected
                                        ? Icons.do_not_disturb_on
                                        : Icons.add_circle,
                                    size: screenSize.screenHeight * 3.5,
                                    color: selected
                                        ? Color(0xff7f7f7f)
                                        : Color(0xff009679),
                                  ),
                                  amount: 450,
                                  serviceName: 'AIR FILTER CLEAN',
                                  onTap: () {
                                    setState(() {
                                      if (selected == true) {
                                        selected = false;
                                      } else {
                                        selected = true;
                                      }
                                    });
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenSize.screenWidth * 5.6,
                    ),
                  ],
                ),
                ReusableCard(
                  width: double.infinity,
                  height: screenSize.screenHeight * 20,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Rs. 350",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenSize.screenHeight * 3.5,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: screenSize.screenHeight,
                              ),
                              Text(
                                "Have a coupon?",
                                style: TextStyle(
                                    fontSize: screenSize.screenHeight * 1.5,
                                    color: Color(0xff009679),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ReusableButton(
                              onPress: () {
                                //                   Navigator.pushNamed(context, '/addVehicle');
                              },
                              content: "Book Now",
                              height: screenSize.screenHeight * 7,
                              width: screenSize.screenWidth * 45.6),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),

//            Column(
//              children: <Widget>[
//                ReusableButton(
//                    onPress: () {
//                      Navigator.pushNamed(context, '/addVehicle');
//                    },
//                    content: "+ Add New",
//                    height: screenSize.screenHeight * 7,
//                    width: screenSize.screenWidth * 74),
//                SizedBox(
//                  height: screenSize.screenHeight * 5,
//                ),
//              ],
//            ),
          ],
        ),
      ),
    );
  }
}
