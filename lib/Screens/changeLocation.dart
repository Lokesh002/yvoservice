import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/savedLocationCard.dart';

class ChangeLocation extends StatefulWidget {
  @override
  _ChangeLocationState createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
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
                    height: screenSize.screenHeight * 7.7,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 42.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Text("Pickup Location",
                              style: const TextStyle(
                                color: const Color(0xff009679),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                              ),
                              textAlign: TextAlign.left),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Icon(
                            Icons.close,
                            color: Color(0xff009679),
                            size: screenSize.screenHeight * 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.screenHeight * 2,
                  ),
                  Center(
                    child: ReusableCard(
                      //height: screenSize.screenHeight * 8,
                      width: screenSize.screenWidth * 80,
                      cardChild: TextField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.left,
                        onChanged: (value) {},
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: screenSize.screenHeight * 1.5),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: screenSize.screenHeight * 2),
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 13.5),
                            child: Icon(
                              Icons.brightness_1,
                              color: Color(0xff009679),
                              size: screenSize.screenHeight * 1.5,
                            ),
                          ),
                          hintText: 'Enter Location',
                          hintStyle: TextStyle(
                            color: Color(0xff4f4f4f),
                            fontSize: screenSize.screenHeight * 1.5,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenSize.screenHeight * 1)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfffafafa), width: 1.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenSize.screenHeight * 1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xfffafafa), width: 1.0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenSize.screenHeight * 1)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.screenHeight * 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 42.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.gps_fixed,
                              color: Color(0xff009679),
                              size: screenSize.screenHeight * 3,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text("  Tap to select from the map",
                                  style: const TextStyle(
                                    color: const Color(0xff7f7f7f),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                  ),
                                  textAlign: TextAlign.left),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/myVehicles');
                          },
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff009679),
                            size: screenSize.screenHeight * 3.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.screenHeight * 3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.screenHeight * 2,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: screenSize.screenWidth * 10,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text("Saved Addresses",
                      style: const TextStyle(
                        color: const Color(0xff7f7f7f),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.left),
                ),
              ],
            ),
            Container(
              height: screenSize.screenHeight * 65,
              child: ListView(children: <Widget>[
                SavedLocationCard(
                    icon: Icons.location_city,
                    Title: "Office",
                    Address: "Sec 4/6, UIT, Bhiwadi, Rajasthan - 301019"),
                SavedLocationCard(
                    icon: Icons.location_on,
                    Title: "Other Address",
                    Address: "Sec 4/6, UIT, Bhiwadi, Rajasthan - 301019"),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
