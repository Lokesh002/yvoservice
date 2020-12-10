import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';

class ReusableButton extends StatelessWidget {
  final Function onPress;
  final String content;
  final double height;
  final double width;
  double elev = 4.0;
  ReusableButton(
      {@required this.onPress,
      @required this.content,
      @required this.height,
      @required this.width});

  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);

    return MaterialButton(
      onPressed: onPress,
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(screenSize.screenHeight * 1),
          side: BorderSide(color: Color(0xff009679))),
      child: Text(
        content,
        style: TextStyle(
            color: Colors.white,
            fontSize: screenSize.screenHeight * 1.5,
            fontFamily: "Roboto"),
      ),
      elevation: elev,
      height: height,
      minWidth: width,
      color: Color(0xff009679),
    );
  }
}
