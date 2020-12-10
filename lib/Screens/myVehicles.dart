import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/dropDown.dart';
import 'package:yvo/components/ManufacturerList.dart';
import 'package:yvo/components/ReusableTextField.dart';
import 'package:yvo/components/ReusableButton.dart';
import 'package:yvo/components/reusableVehicleCard.dart';
import 'package:yvo/lists/vehicleList.dart';

class MyVehicles extends StatefulWidget {
  @override
  _MyVehiclesState createState() => _MyVehiclesState();
}

class _MyVehiclesState extends State<MyVehicles> {
  // List<VehicleData> ls = List<VehicleData>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    VehicleList vehicleList = VehicleList();

    final veh = vehicleList.getVehicleList();
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
                        "My Vehicles",
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
              height: screenSize.screenHeight * 1,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Container(
                  height: screenSize.screenHeight * 89,
                  child: ListView.builder(
                      itemBuilder: (BuildContext cntxt, int index) {
                        return ReusableVehicleCard(
                          vehicleName: veh[index].vehicleName,
                          regNo: veh[index].regNo,
                          year: veh[index].year,
                        );
                      },
                      itemCount: veh.length,
                      padding: EdgeInsets.fromLTRB(
                          0,
                          screenSize.screenHeight * 2.5,
                          0,
                          screenSize.screenHeight * 15)),
                ),
                Column(
                  children: <Widget>[
                    ReusableButton(
                        onPress: () {
                          Navigator.pushNamed(context, '/addVehicle');
                        },
                        content: "+ Add New",
                        height: screenSize.screenHeight * 7,
                        width: screenSize.screenWidth * 74),
                    SizedBox(
                      height: screenSize.screenHeight * 5,
                    ),
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
