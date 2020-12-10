import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/dropDown.dart';
import 'package:yvo/components/ManufacturerList.dart';
import 'package:yvo/components/ReusableTextField.dart';
import 'package:yvo/components/ReusableButton.dart';

class AddVehicle extends StatefulWidget {
  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  String _myActivity;

  ManufacturerList manufacturerList = ManufacturerList();
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(screenSize.screenHeight * 3),
              ),
              elevation: 5,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenSize.screenHeight * 3,
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
                        "Vehicle Details",
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
              height: screenSize.screenHeight * 3,
            ),
            Center(
              child: ReusableCard(
                width: screenSize.screenWidth * 80,
                cardChild: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: screenSize.screenWidth * 7,
                      ),
                      Icon(
                        Icons.directions_bike,
                        color: Theme.of(context).primaryColor,
                        size: screenSize.screenHeight * 3,
                      ),
                      SizedBox(
                        width: screenSize.screenWidth * 5,
                      ),
                      Container(
                        width: screenSize.screenWidth * 55,
                        child: DropDownFormFields(
                          hintText: 'Please choose one',
                          value: _myActivity,
                          onSaved: (value) {
                            setState(() {
                              _myActivity = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity = value;
                            });
                          },
                          dataSource: manufacturerList.getManList(),
                          textField: 'display',
                          valueField: 'value',
                          fontSize: screenSize.screenHeight * 1.5,
                        ),
                      ),
                      SizedBox(
                        width: screenSize.screenWidth * 7,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenSize.screenHeight * 3,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: screenSize.screenWidth * 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Model",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.screenHeight * 2,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 1.5,
                    ),
                    Center(
                      child: Container(
                        width: screenSize.screenWidth * 74,
                        child: ReusableTextField(
                          onChanged: (value) {},
                          hintText: "Eg. Pulsar, Activa, Maestro etc..",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 3,
                    ),
                    Text(
                      "Year of Manufacture",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.screenHeight * 2,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 1.5,
                    ),
                    Center(
                      child: Container(
                        width: screenSize.screenWidth * 74,
                        child: ReusableTextField(
                          onChanged: (value) {},
                          hintText: "Eg. 2014",
                        ),
                      ),
//
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 3,
                    ),
                    Text(
                      "Vehicle Registration No.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenSize.screenHeight * 2,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 1.5,
                    ),
                    Center(
                      child: Container(
                        width: screenSize.screenWidth * 74,
                        child: ReusableTextField(
                          onChanged: (value) {},
                          hintText: "Eg. DL 12 AB 9999",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 25,
                    ),
                    ReusableButton(
                        onPress: () {
                          Navigator.pushNamed(context, '/confirmBooking');
                        },
                        content: "Confirm",
                        height: screenSize.screenHeight * 7,
                        width: screenSize.screenWidth * 74),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
