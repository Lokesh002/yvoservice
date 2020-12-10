import 'package:flutter/material.dart';
import 'package:yvo/components/sizeConfig.dart';
import 'package:yvo/components/ReusableCard.dart';
import 'package:yvo/components/ReusableButton.dart';

class EnterOtp extends StatefulWidget {
  @override
  _EnterOtpState createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  String mobileNo;
  String timer;
  @override
  Widget build(BuildContext context) {
    SizeConfig screenSize = SizeConfig(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: screenSize.screenHeight * 9.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: screenSize.screenWidth * 10,
                  ),
                  Text(
                    "Enter OTP",
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
                height: screenSize.screenHeight * 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("An OTP sent on",
                            style: const TextStyle(
                                color: const Color(0xff7f7f7f),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 14),
                            textAlign: TextAlign.left),
                        Text(" +91 8572039016", //$mobileNo",
                            style: const TextStyle(
                                color: const Color(0xff4f4f4f),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 14),
                            textAlign: TextAlign.left),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text("Change",
                          style: const TextStyle(
                              color: const Color(0xff009679),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.screenHeight * 5,
              ),
              Center(
                child: ReusableCard(
                  height: screenSize.screenHeight * 7,
                  width: screenSize.screenWidth * 80,
                  cardChild: TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    onChanged: (value) {},
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: screenSize.screenHeight * 3),
                    decoration: InputDecoration(
                      hintText: 'Enter OTP',
                      hintStyle: TextStyle(
                          color: Color(0xff4f4f4f),
                          fontSize: screenSize.screenHeight * 1.7),
                      fillColor: Color(0xff009679),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.screenHeight * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Resend OTP",
                      style: const TextStyle(
                          color: const Color(0xff7f7f7f),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                      textAlign: TextAlign.left),
                  Text("| 00:40 ", //$timer",
                      style: const TextStyle(
                          color: const Color(0xff009679),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 18.0),
                      textAlign: TextAlign.left),
                ],
              ),
              SizedBox(
                height: screenSize.screenHeight * 3,
              ),
              Center(
                child: ReusableButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/changeLocation');
                    },
                    content: "Verify OTP",
                    height: screenSize.screenHeight * 8,
                    width: screenSize.screenWidth * 71),
              ),
            ],
          ),
        ])));
  }
}
