import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';

class SavedLocationCard extends StatelessWidget {
  final IconData icon;
  final String Title;
  final String Address;
  final Function onTap;
  SavedLocationCard(
      {@required this.icon,
      @required this.Title,
      @required this.Address,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: screenSize.screenWidth * 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: screenSize.screenWidth * 5,
                    ),
                    Icon(
                      this.icon,
                      color: Theme.of(context).primaryColor,
                      size: screenSize.screenHeight * 2.6,
                    ),
                    SizedBox(
                      width: screenSize.screenWidth * 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(this.Title,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: screenSize.screenHeight * 1.8),
                            textAlign: TextAlign.left),
                        SizedBox(
                          height: screenSize.screenHeight * 0.5,
                        ),
                        Text(this.Address,
                            style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: screenSize.screenHeight * 1.5),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height: screenSize.screenHeight * 5,
                    width: screenSize.screenWidth * 80,
                    child: Divider(
                      color: Theme.of(context).accentColor,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
