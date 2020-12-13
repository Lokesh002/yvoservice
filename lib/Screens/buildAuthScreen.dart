import 'homeScreen.dart';
import 'helpScreen.dart';
import 'orders.dart';
import 'profile.dart';
import 'addVehicle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class BuildAuthScreen extends StatefulWidget {
  @override
  _BuildAuthScreenState createState() => _BuildAuthScreenState();
}

class _BuildAuthScreenState extends State<BuildAuthScreen> {
  int pageIndex = 2;
  PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: pageIndex,
    );
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(
      pageIndex,
    );
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Profile(),
          AddVehicle(),
          HomeScreen(),
          Orders(),
          HelpScreen(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
          currentIndex: pageIndex,
          onTap: onTap,
          activeColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 25.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.motorcycle,
                size: 25.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 35.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment,
                size: 25.0,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.questionCircle,
                size: 25.0,
              ),
            ),
          ]),
    );

//    PageView(
//        children: <Widget>[
//          Profile(),
//          AddVehicle(),
//          HomeScreen(),
//          Orders(),
//          HelpScreen(),
//        ],
//        controller: pageController,
//        onPageChanged: onPageChanged,
//        physics: NeverScrollableScrollPhysics(),
//      ),
//      bottomNavigationBar: CupertinoTabBar(
//          currentIndex: pageIndex,
//          onTap: onTap,
//          activeColor: Theme.of(context).primaryColor,
//          items: [
//            BottomNavigationBarItem(
//              icon: Icon(
//                Icons.account_circle,
//                size: 25.0,
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(
//                FontAwesomeIcons.motorcycle,
//                size: 25.0,
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(
//                FontAwesomeIcons.home,
//                size: 35.0,
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(
//                Icons.assignment,
//                size: 25.0,
//              ),
//            ),
//            BottomNavigationBarItem(
//              icon: Icon(
//                FontAwesomeIcons.questionCircle,
//                size: 25.0,
//              ),
//            ),
//          ]),
//    );
  }
}
