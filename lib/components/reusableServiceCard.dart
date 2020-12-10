import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';

class ReusableServiceCard extends StatelessWidget {
  final String serviceName;
  final int amount;

  final Icon icon;
  final Function onTap;

  ReusableServiceCard({this.onTap, this.icon, this.amount, this.serviceName});
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: screenSize.screenHeight * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: screenSize.screenWidth * 8.5,
                      ),
                      Icon(
                        Icons.settings,
                        size: screenSize.screenHeight * 3.5,
                        color: Color(0xff009679),
                      ),
                      SizedBox(
                        width: screenSize.screenWidth * 5.3,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            serviceName,
                            style: TextStyle(
                              fontSize: screenSize.screenHeight * 1.7,
                              color: Color(0xff4f4f4f),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: screenSize.screenHeight * 2.5,
                          ),
                          Text(
                            "Rs. $amount",
                            style: TextStyle(
                              fontSize: screenSize.screenHeight * 1.7,
                              color: Color(0xff009679),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      icon,
                      SizedBox(
                        width: screenSize.screenWidth * 6.67,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenSize.screenHeight * 5,
              width: screenSize.screenWidth * 78,
              child: Divider(
                color: Color(0xff7f7f7f),
                thickness: screenSize.screenHeight * 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
