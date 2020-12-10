import 'package:flutter/material.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/sizeConfig.dart';

class ReusableVehicleCard extends StatelessWidget {
  final String vehicleName;
  final String regNo;
  final String year;
  final Function onEditTap;
  final Function onChangeTap;

  ReusableVehicleCard(
      {this.vehicleName,
      this.regNo,
      this.year,
      this.onEditTap,
      this.onChangeTap});

  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return Row(
      children: <Widget>[
        SizedBox(
          width: screenSize.screenWidth * 10,
        ),
        Column(
          children: <Widget>[
            ReusableCard(
              width: screenSize.screenWidth * 80,
              // height: screenSize.screenHeight * 10,
              cardChild: Row(
                children: <Widget>[
                  SizedBox(
                    width: screenSize.screenWidth * 5,
                  ),
                  Icon(
                    Icons.directions_bike,
                    size: screenSize.screenHeight * 4,
                    color: Color(0xff009679),
                  ),
                  SizedBox(
                    width: screenSize.screenWidth * 3,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: screenSize.screenHeight * 2.3,
                      ),
                      Text(
                        '$vehicleName',
                        style: TextStyle(
                            fontSize: screenSize.screenHeight * 2,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: screenSize.screenHeight * 1,
                      ),
                      Text(
                        '$regNo',
                        style: TextStyle(
                          fontSize: screenSize.screenHeight * 1.7,
                          color: Color(0xff7f7f7f),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.screenHeight * 1,
                      ),
                      Text(
                        '$year',
                        style: TextStyle(
                          fontSize: screenSize.screenHeight * 1.7,
                          color: Color(0xff7f7f7f),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.screenHeight * 1,
                      ),
                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: onEditTap,
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                fontSize: screenSize.screenHeight * 1.7,
                                color: Color(0xff009679),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenSize.screenWidth * 6,
                          ),
                          GestureDetector(
                            onTap: onChangeTap,
                            child: Text(
                              'Delete',
                              style: TextStyle(
                                fontSize: screenSize.screenHeight * 1.7,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenSize.screenHeight * 2.3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.screenHeight * 2,
            )
          ],
        ),
        SizedBox(
          width: screenSize.screenWidth * 10,
        ),
      ],
    );
  }
}
