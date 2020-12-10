import 'package:flutter/material.dart';
import 'package:yvo/Screens/enterOtp.dart';
import 'package:yvo/Screens/login.dart';
import 'package:yvo/Screens/splashScreen.dart';
import 'package:yvo/Screens/changeLocation.dart';
import 'package:yvo/Screens/addVehicle.dart';
import 'package:yvo/Screens/myVehicles.dart';
import 'package:yvo/Screens/confirmBooking.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xff009679),
          accentColor: Color(0xff4f4f4f),
          backgroundColor: Colors.white),
      initialRoute: '/',
      themeMode: ThemeMode.light,
      routes: <String, WidgetBuilder>{
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/changeLocation': (context) => ChangeLocation(),
        '/enterOtp': (context) => EnterOtp(),
        '/addVehicle': (context) => AddVehicle(),
        '/myVehicles': (context) => MyVehicles(),
        '/confirmBooking': (context) => ConfirmBooking(),
      },
    );
  }
}
