import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/ReusableButton.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: screenSize.screenHeight * 10,
              ),
              Expanded(
                  flex: 2,
                  child: SvgPicture.asset('svg/login.svg',
                      semanticsLabel: 'A red up arrow')),
              SizedBox(
                height: screenSize.screenHeight * 5,
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: screenSize.screenWidth * 10,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenSize.screenHeight * 3.5,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenSize.screenHeight * 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: screenSize.screenWidth * 10,
                        ),
                        Text("Please enter your phone number",
                            style: const TextStyle(
                                color: const Color(0xff7f7f7f),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                            textAlign: TextAlign.left)
                      ],
                    ),
                    SizedBox(
                      height: screenSize.screenWidth * 6,
                    ),
                    Center(
                      child: ReusableCard(
                        width: screenSize.screenWidth * 80,
                        cardChild: TextField(
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.left,
                          onChanged: (value) {},
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: screenSize.screenHeight * 1.5),
                          decoration: InputDecoration(
                            icon: Text('      +91-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: screenSize.screenHeight * 1.5)),
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              color: Color(0xff4f4f4f),
                            ),
                            fillColor: Color(0xff009679),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenSize.screenHeight * 1)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfffafafa), width: 1.0),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenSize.screenHeight * 2)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xfffafafa), width: 1.0),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(screenSize.screenHeight * 2)),
                            ),
                          ),
                        ),
//
                      ),
                    ),
                    SizedBox(
                      height: screenSize.screenWidth * 6,
                    ),
                    Center(
                      child: ReusableButton(
                        height: screenSize.screenHeight * 8,
                        width: screenSize.screenWidth * 71,
                        content: "Continue",
                        onPress: () {
                          Navigator.pushNamed(context, '/enterOtp');
                        },
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
