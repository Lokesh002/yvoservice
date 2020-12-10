import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';

class ReusableTextField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  ReusableTextField({this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return TextField(
      keyboardType: TextInputType.text,
      textAlign: TextAlign.center,
      onChanged: onChanged,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey, fontSize: screenSize.screenHeight * 1.5),
        contentPadding: EdgeInsets.symmetric(
            vertical: screenSize.screenHeight * 2,
            horizontal: screenSize.screenWidth * 1),
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(screenSize.screenHeight * 1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26, width: 1),
          borderRadius:
              BorderRadius.all(Radius.circular(screenSize.screenHeight * 1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2.0),
          borderRadius:
              BorderRadius.all(Radius.circular(screenSize.screenHeight * 1)),
        ),
      ),
    );
  }
}
